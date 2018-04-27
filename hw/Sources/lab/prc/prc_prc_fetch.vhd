-- (c) Copyright 2015-2017 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and 
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
----------------------------------------------------------------------------
-- -----------------------------------------------------------------------------
--
-- Fetch unit for configuration Controller
--
-- -----------------------------------------------------------------------------
-- Basic architecture
-- ------------------
--                             
--                                    ID FIFO           ^                      ^                   
--         |\                        .---------.        |                      |                           
--  VSM0-->| \      REQ FIFO     .-->| | | | | |--------'                      |
--  VSM1-->|  |    .---------.   |   `---------'             CMD FIFO          |
--  VSM2-->|  |--->| | | | | |-->+   +--------------+       .---------.     +-----+                                         
--  ...    |  |    `---------'   `-->|Calc addr/size|-------| | | | | |---->| DMA |                              
--  VSMN-->| /                       +--------------+  CMD  `---------'     +-----+                               
--         |/^                      size/addr                                  ^                              
--           |                                                                 |            
--           |                                                                 |             
--           |                                                                   
--     +-------------+                +-----+                                                        
--     | ARB COUNTER |                | FSM |                                                           
--     +-------------+                +-----+                                                        
--           |                                                                      
--    <------'                                                                     
--    gnt                                                                            
--                                                                                
--                                                                                
--  Stage 1: Monitor all REQs from the VSMs and place them into a FIFO.  Issue 
--           grants to the VSMs when the REQ are accepted into the FIFO
--  Stage 2: Process the reqs sequenctially.  Normally each req is broken down 
--           into a number of DMA commands and then the next req is processed. 
--           The fetch block doesn't wait for the DMA to complete commands.  
--           However, a bad_config_error detected in a REQ has to wait until 
--           all previous commands are complete as I can't change the IDs going 
--           out until they are complete                                                         
--                                                                                
-- REQ FIFO is written when a req is found and the FIFO isn't full
-- REQ FIFO is read    when leaving ST_WAIT_FOR_REQ.                                                                               
-- ID  FIFO is written when leaving ST_WAIT_FOR_REQ.                                                                               
-- ID  FIFO is read    when a bitstream transfer is complete, or a bad config 
--                     is complete
-- 
-- NOTE: The DMA can be configured to have it's own CMD FIFO internally, but 
--       this impacts FMAX by around 30-40MHz.  To get round this, I implement
--       a command FIFO here and use that to buffer the commands.  
-- -----------------------------------------------------------------------------
-- TODO: This code has been updated after the coverage suites were run, and 
--       possibly too close to the end of 2015.1 to get another suite run.
--       You might need to tweak the coverage exclusions to deal with the new
--       code

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library prc_v1_2_1;
use prc_v1_2_1.prc_v1_2_1_pkg.all;
use prc_v1_2_1.reg_mux_pkg.all;
use prc_v1_2_1.prc_dma;
library axi_utils_v2_0_4;
use axi_utils_v2_0_4.global_util_pkg.all;
use axi_utils_v2_0_4.axi_utils_comps.all;

entity prc_prc_fetch is
  generic (
    C_XDEVICEFAMILY          : string    := "not set";
    C_VS_ID_WIDTH            : integer   := 4;  
    C_RM_ID_WIDTH            : integer   := 4;  
    C_BS_ID_WIDTH            : integer   := 4;  
    C_CFG_PORT_ID            : integer   := 0;   -- The config port that this fetch block controls
    C_NUM_VIRTUAL_SOCKETS    : integer   := 2;
    C_RESET_ACTIVE_LEVEL     : std_logic := '0'; -- Reset can be active high or low, so compare against this value.
    C_ADDR_WIDTH_CFG_MEM     : integer   := 32;
    C_DATA_WIDTH_CFG_MEM     : integer   := 32;  -- The width of the AXI bus attached to the memory.  It's used by the dma
                                                 -- and can be 32, 64, 128, 256, 512 or 1024
    C_SIZE_WIDTH             : integer   := 32;  -- The width of the SIZE field.  
    C_LOWER_SEGMENT_WIDTH    : integer   := 23   -- This is the maximum the dma supports
    );
  port (
    -- System interfaces
    clk             : in std_logic := '1';     -- Clock
    rst_ah          : in std_logic := '1';     -- Synchronous reset.  Active high
                                               -- 
    rst_al           : in std_logic := '1';    -- An active low synchronous reset for the datamover
                                               --                     Minimum pulse is 3 cycles as that's what the datamover requires   
    
    -- Interface to Virtual Socket Managers
    --   
    reqs      : in  std_logic_vector(C_NUM_VIRTUAL_SOCKETS -1 downto 0) := (others => '0');
    gnts      : out std_logic_vector(C_NUM_VIRTUAL_SOCKETS -1 downto 0) := (others => '0');
    addrs     : in  vsm_addr_t      (C_NUM_VIRTUAL_SOCKETS -1 downto 0) := (others => (others => '0'));
    sizes     : in  vsm_size_t      (C_NUM_VIRTUAL_SOCKETS -1 downto 0) := (others => (others => '0'));
    vs_id_in  : in  vsm_vs_id_t     (C_NUM_VIRTUAL_SOCKETS -1 downto 0);  
    rm_id_in  : in  vsm_rm_id_t     (C_NUM_VIRTUAL_SOCKETS -1 downto 0);
    bs_id_in  : in  vsm_bs_id_t     (C_NUM_VIRTUAL_SOCKETS -1 downto 0);

    -- Datamover internal data.  bs = bitstream
    m_axis_bs_tdata       : out  std_logic_vector(C_DATA_WIDTH_CFG_MEM-1 downto 0);
    m_axis_bs_tuser       : out  std_logic_vector(1 downto 0);   
    m_axis_bs_tlast       : out  std_logic;                                                    
    m_axis_bs_tvalid      : out  std_logic;                                                    
    m_axis_bs_tready      : in   std_logic;                                                    

    vs_id_o               : out  std_logic_vector(C_VS_ID_WIDTH-1 downto 0);
    rm_id_o               : out  std_logic_vector(C_RM_ID_WIDTH-1 downto 0);
    bs_id_o               : out  std_logic_vector(C_BS_ID_WIDTH-1 downto 0);

    fetch_error           : out  std_logic;
    bad_config_error      : out  std_logic;
    
    debug_port  : out std_logic_vector(PC_FETCH_DEBUG_PORT_WIDTH-1 downto 0) := (others => '0');


    -- The interface to the external memory
    m_axi_mem_araddr   : out std_logic_vector(C_ADDR_WIDTH_CFG_MEM-1 downto 0);
    m_axi_mem_arlen    : out std_logic_vector(7 downto 0);                     
    m_axi_mem_arsize   : out std_logic_vector(2 downto 0);                     
    m_axi_mem_arburst  : out std_logic_vector(1 downto 0);                     
    m_axi_mem_arprot   : out std_logic_vector(2 downto 0);                     
    m_axi_mem_arcache  : out std_logic_vector(3 downto 0);                     
    m_axi_mem_aruser   : out std_logic_vector(3 downto 0);                     
    m_axi_mem_arvalid  : out std_logic;                                        
    m_axi_mem_arready  : in  std_logic;                                        
    m_axi_mem_rdata    : in  std_logic_vector(C_DATA_WIDTH_CFG_MEM-1 downto 0);
    m_axi_mem_rresp    : in  std_logic_vector(1 downto 0);                     
    m_axi_mem_rlast    : in  std_logic;                                        
    m_axi_mem_rvalid   : in  std_logic;                                        
    m_axi_mem_rready   : out std_logic                                        
  );
end prc_prc_fetch;


architecture synth of prc_prc_fetch is

  attribute DowngradeIPIdentifiedWarnings          : string;
  attribute DowngradeIPIdentifiedWarnings of synth : architecture is "yes";
  attribute dont_touch : string;

component prc_dma
  generic (
    C_INCLUDE_MM2S : INTEGER;
    C_M_AXI_MM2S_ARID : INTEGER;
    C_M_AXI_MM2S_ID_WIDTH : INTEGER;
    C_M_AXI_MM2S_ADDR_WIDTH : INTEGER;
    C_M_AXI_MM2S_DATA_WIDTH : INTEGER;
    C_M_AXI_MM2S_USER_WIDTH : INTEGER;
    C_M_AXIS_MM2S_TDATA_WIDTH : INTEGER;
    C_INCLUDE_MM2S_STSFIFO : INTEGER;
    C_MM2S_STSCMD_FIFO_DEPTH : INTEGER;
    C_MM2S_STSCMD_IS_ASYNC : INTEGER;
    C_INCLUDE_MM2S_DRE : INTEGER;
    C_MM2S_BURST_SIZE : INTEGER;
    C_MM2S_BTT_USED : INTEGER;
    C_MM2S_ADDR_PIPE_DEPTH : INTEGER;
    C_INCLUDE_S2MM : INTEGER;
    C_M_AXI_S2MM_AWID : INTEGER;
    C_M_AXI_S2MM_ID_WIDTH : INTEGER;
    C_M_AXI_S2MM_ADDR_WIDTH : INTEGER;
    C_M_AXI_S2MM_DATA_WIDTH : INTEGER;
    C_S_AXIS_S2MM_TDATA_WIDTH : INTEGER;
    C_INCLUDE_S2MM_STSFIFO : INTEGER;
    C_S2MM_STSCMD_FIFO_DEPTH : INTEGER;
    C_S2MM_STSCMD_IS_ASYNC : INTEGER;
    C_INCLUDE_S2MM_DRE : INTEGER;
    C_S2MM_BURST_SIZE : INTEGER;
    C_S2MM_BTT_USED : INTEGER;
    C_S2MM_SUPPORT_INDET_BTT : INTEGER;
    C_S2MM_ADDR_PIPE_DEPTH : INTEGER;
    C_FAMILY : STRING;
    C_MM2S_INCLUDE_SF : INTEGER;
    C_S2MM_INCLUDE_SF : INTEGER;
    C_ENABLE_CACHE_USER : INTEGER;
    C_ENABLE_MM2S_TKEEP : INTEGER;
    C_ENABLE_S2MM_TKEEP : INTEGER;
    C_ENABLE_SKID_BUF : STRING;
    C_ENABLE_S2MM_ADV_SIG : INTEGER;
    C_ENABLE_MM2S_ADV_SIG : INTEGER;
    C_CMD_WIDTH : INTEGER);
  port (
    m_axi_mm2s_aclk : IN STD_LOGIC;
    m_axi_mm2s_aresetn : IN STD_LOGIC;
    mm2s_halt : IN STD_LOGIC;
    mm2s_halt_cmplt : OUT STD_LOGIC;
    mm2s_err : OUT STD_LOGIC;
    m_axis_mm2s_cmdsts_aclk : IN STD_LOGIC;
    m_axis_mm2s_cmdsts_aresetn : IN STD_LOGIC;
    s_axis_mm2s_cmd_tvalid : IN STD_LOGIC;
    s_axis_mm2s_cmd_tready : OUT STD_LOGIC;
    s_axis_mm2s_cmd_tdata : IN STD_LOGIC_VECTOR(71 DOWNTO 0);
    m_axis_mm2s_sts_tvalid : OUT STD_LOGIC;
    m_axis_mm2s_sts_tready : IN STD_LOGIC;
    m_axis_mm2s_sts_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axis_mm2s_sts_tkeep : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axis_mm2s_sts_tlast : OUT STD_LOGIC;
    mm2s_allow_addr_req : IN STD_LOGIC;
    mm2s_addr_req_posted : OUT STD_LOGIC;
    mm2s_rd_xfer_cmplt : OUT STD_LOGIC;
    m_axi_mm2s_arid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_mm2s_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_mm2s_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_mm2s_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_mm2s_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_mm2s_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_mm2s_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_mm2s_aruser : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_mm2s_arvalid : OUT STD_LOGIC;
    m_axi_mm2s_arready : IN STD_LOGIC;
    m_axi_mm2s_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_mm2s_ruser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_mm2s_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_mm2s_rlast : IN STD_LOGIC;
    m_axi_mm2s_rvalid : IN STD_LOGIC;
    m_axi_mm2s_rready : OUT STD_LOGIC;
    m_axis_mm2s_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axis_mm2s_tuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axis_mm2s_tkeep : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axis_mm2s_tlast : OUT STD_LOGIC;
    m_axis_mm2s_tvalid : OUT STD_LOGIC;
    m_axis_mm2s_tready : IN STD_LOGIC;
    mm2s_dbg_sel : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    mm2s_dbg_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_s2mm_aclk : IN STD_LOGIC;
    m_axi_s2mm_aresetn : IN STD_LOGIC;
    s2mm_halt : IN STD_LOGIC;
    s2mm_halt_cmplt : OUT STD_LOGIC;
    s2mm_err : OUT STD_LOGIC;
    m_axis_s2mm_cmdsts_awclk : IN STD_LOGIC;
    m_axis_s2mm_cmdsts_aresetn : IN STD_LOGIC;
    s_axis_s2mm_cmd_tvalid : IN STD_LOGIC;
    s_axis_s2mm_cmd_tready : OUT STD_LOGIC;
    s_axis_s2mm_cmd_tdata : IN STD_LOGIC_VECTOR(71 DOWNTO 0);
    m_axis_s2mm_sts_tvalid : OUT STD_LOGIC;
    m_axis_s2mm_sts_tready : IN STD_LOGIC;
    m_axis_s2mm_sts_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axis_s2mm_sts_tkeep : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axis_s2mm_sts_tlast : OUT STD_LOGIC;
    s2mm_allow_addr_req : IN STD_LOGIC;
    s2mm_addr_req_posted : OUT STD_LOGIC;
    s2mm_wr_xfer_cmplt : OUT STD_LOGIC;
    s2mm_ld_nxt_len : OUT STD_LOGIC;
    s2mm_wr_len : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_s2mm_awid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_s2mm_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_s2mm_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_s2mm_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_s2mm_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_s2mm_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_s2mm_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_s2mm_awuser : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_s2mm_awvalid : OUT STD_LOGIC;
    m_axi_s2mm_awready : IN STD_LOGIC;
    m_axi_s2mm_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_s2mm_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_s2mm_wlast : OUT STD_LOGIC;
    m_axi_s2mm_wvalid : OUT STD_LOGIC;
    m_axi_s2mm_wready : IN STD_LOGIC;
    m_axi_s2mm_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_s2mm_bvalid : IN STD_LOGIC;
    m_axi_s2mm_bready : OUT STD_LOGIC;
    s_axis_s2mm_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axis_s2mm_tkeep : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axis_s2mm_tlast : IN STD_LOGIC;
    s_axis_s2mm_tvalid : IN STD_LOGIC;
    s_axis_s2mm_tready : OUT STD_LOGIC;
    s2mm_dbg_sel : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s2mm_dbg_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
end component;

  -- The max bitstream size can be larger than the max transfer size of the Datamover.
  -- Transfers are split into an upper and lower segment.  The lower segment is passed 
  -- to the datamover and the upper segment decremented.  
  -- Each additional segment transfer costs 17 clock cycles, so the lower segment width 
  -- should be set to 23 bits which is what the Datamover can support.  For verification, 
  -- a smaller width is used      
  --
  constant C_UPPER_SEGMENT_WIDTH : integer := C_SIZE_WIDTH-C_LOWER_SEGMENT_WIDTH;

  signal lower_segment : std_logic_vector (C_LOWER_SEGMENT_WIDTH-1 downto 0);
  -- Bottom 2 bits are always 0
  -- coverage toggle_ignore lower_segment "1:0"


  signal upper_segment : std_logic_vector (C_UPPER_SEGMENT_WIDTH-1 downto 0);
  -- The simulations are limited to bitstreams of size (2**(10+1))-4
  -- so in total they are 11 bits wide.  6 of these go into lower_segment
  -- so upper_segment only has 5 bits that will change in simulation
  --
  -- coverage toggle_ignore upper_segment "25:5"

  signal upper_segment_is_zero : std_logic:= '0';


-- coverage off t
  signal fixed_transfer_size : std_logic_vector (C_LOWER_SEGMENT_WIDTH-1 downto 0) :=
                       std_logic_vector( to_unsigned((2**C_LOWER_SEGMENT_WIDTH)-4, C_LOWER_SEGMENT_WIDTH));
-- coverage on


  constant C_ARB_COUNTER_WIDTH : integer := integer(ceil(ieee.math_real.log2(real(C_NUM_VIRTUAL_SOCKETS))));
  signal arb_counter : UNSIGNED (C_ARB_COUNTER_WIDTH-1 downto 0) := (others => '0');

 
  -- The code coverage configuration is only a single VSM so these never toggle
  -- coverage off t
  signal req_id_1hot : std_logic_vector(C_NUM_VIRTUAL_SOCKETS - 1 downto 0) := std_logic_vector(to_unsigned(1, C_NUM_VIRTUAL_SOCKETS));
  -- coverage on
  
  constant c_req_all_zero : std_logic_vector(C_NUM_VIRTUAL_SOCKETS - 1 downto 0) := (others => '0');
  
  signal req_found    : std_logic := '0';  
  signal req_avail    : std_logic := '0';  
  
  signal dma_addr : std_logic_vector(C_ADDR_WIDTH_CFG_MEM-1 downto 0) := (others => '0');
  -- [1:0] are always 0
  -- 31:14 probably won't toggle based on the max size of bitstreams I have, and the number of RMs and VSs in the 
  -- coverage toggle_ignore dma_addr "31:14 1:0"

  signal dma_size : std_logic_vector(C_SIZE_WIDTH-1 downto 0) := (others => '0');
  -- [1:0] are always 0
  -- 31:11 won't toggle based on the max size of bitstreams I have (11 bits)
  -- coverage toggle_ignore dma_size "31:11 1:0"


  -- The code coverage configuration is only a single VSM so this never toggles
  -- coverage off t
  signal vs_id_o_i  : std_logic_vector(C_VS_ID_WIDTH-1 downto 0) := (others => '0');
  signal vs_id_from_fifo : std_logic_vector(C_VS_ID_WIDTH-1 downto 0) := (others => '0');
  -- coverage on

  signal rm_id_o_i  : std_logic_vector(C_RM_ID_WIDTH-1 downto 0) := (others => '0');
  signal bs_id_o_i  : std_logic_vector(C_BS_ID_WIDTH-1 downto 0) := (others => '0');
  signal rm_id_from_fifo  : std_logic_vector(C_RM_ID_WIDTH-1 downto 0) := (others => '0');
  signal bs_id_from_fifo  : std_logic_vector(C_BS_ID_WIDTH-1 downto 0) := (others => '0');


  -- FSM Signals
  -- -----------
  type   state_t is (ST_POR,
                     ST_WAIT_FOR_REQ,
                     ST_BAD_CONFIG_ERROR1,  
                     ST_BAD_CONFIG_ERROR_DONE,  
                     ST_BAD_CONFIG_ERROR_WAIT,
                     ST_LOAD_DMA,
                     ST_WAIT_FOR_TX_TO_START
  );
  
  -- _cs = current state, _ns = next state
  signal fsm_cs : state_t := ST_POR;
  signal fsm_ns : state_t := ST_POR;
  signal can_exit_ST_WAIT_FOR_REQ : std_logic := '0';

  -- We recommend only doing a reset when the PRC is idle, so I'm not testing resets when it isn't idle
  -- However, there may be a reset if we are draining fetch path after a CFG error

  -- coverage fsm_off -ftrans fsm_cs ST_LOAD_DMA->ST_POR
  -- coverage fsm_off -ftrans fsm_cs ST_BAD_CONFIG_ERROR1->ST_POR
  -- coverage fsm_off -ftrans fsm_cs ST_BAD_CONFIG_ERROR_DONE->ST_POR
  -- coverage fsm_off -ftrans fsm_cs ST_BAD_CONFIG_ERROR_WAIT->ST_POR

  -- These are impossible to hit as there are no self transitions for these states
  --
  -- coverage fsm_off -ftrans fsm_cs ST_BAD_CONFIG_ERROR_DONE->ST_BAD_CONFIG_ERROR_DONE
  -- coverage fsm_off -ftrans fsm_cs ST_BAD_CONFIG_ERROR_WAIT->ST_BAD_CONFIG_ERROR_WAIT

  signal bad_config_error_cmb : std_logic := '0';
  signal bad_config_error_i : std_logic := '0';

  -- DMA signals
  -- 
  -- DMA Control interface
  signal dma_cmd_tvalid     : std_logic;                                                  
  signal dma_cmd_tready     : std_logic;                                                  
-- coverage off t
  signal dma_cmd_tdata      : std_logic_vector((C_ADDR_WIDTH_CFG_MEM+40)-1 downto 0) := (others => '0'); 
-- coverage on

  -- DMA Status interface
  signal dma_status_tvalid  : std_logic;                       
-- coverage off t
  signal dma_status_tready  : std_logic := '1';                       
  signal dma_status_tdata   : std_logic_vector(7 downto 0);    
-- coverage on
  
 
  signal m_axis_bs_tvalid_i  : std_logic := '0';
  signal m_axis_bs_tlast_i   : std_logic := '0';
  signal first_word_seen     : std_logic := '0';

  -- The Datamover only reports an error at the end of a transfer which is too late
  -- for me.  I want to know about it ASAP.  
  signal fetch_error_i       : std_logic := '0';
  signal fetch_error_aximm_side  : std_logic_vector (0 downto 0) := (others => '0');
  signal fetch_error_axis_side  : std_logic_vector (0 downto 0) := (others => '0');

  --signal fetch_error_cmb       : std_logic := '0';
  signal m_axi_mem_rready_i  : std_logic;

  signal transfer_complete : std_logic := '0';

  -- The address input belonging to the selected VSM
  signal selected_addr  : std_logic_vector(C_ADDR_WIDTH_CFG_MEM-1 downto 0) := (others => '0');
 
  -- The size input belonging to the selected VSM
  signal selected_size  : std_logic_vector(C_SIZE_WIDTH-1 downto 0) := (others => '0');

  signal fifo_write     : std_logic := '0';
  signal fifo_read      : std_logic := '0';
  signal fifo_not_full  : std_logic := '0';
  signal fifo_full      : std_logic := '0';
  signal fifo_empty      : std_logic := '0'; 

  CONSTANT C_VSM_INPUTS_AS_VECTOR_WIDTH: integer := C_VS_ID_WIDTH        + -- vs_id
                                                    C_RM_ID_WIDTH        + -- rm_id
                                                    C_BS_ID_WIDTH        + -- bs_id
                                                    C_ADDR_WIDTH_CFG_MEM + -- Addr
                                                    C_SIZE_WIDTH         + -- size
                                                    1;                     -- req

  procedure convert_vsm_input_to_vector (signal vector: out std_logic_vector;
                                         signal vs_id : in std_logic_vector;
                                         signal rm_id : in std_logic_vector;
                                         signal bs_id : in std_logic_vector;
                                         signal size  : in std_logic_vector;
                                         signal addr  : in std_logic_vector;
                                         signal req   : in std_logic
                                         ) is
    variable out_ptr     : integer := 0; -- The position of the next field in the output  vector
  begin
     -- Pack in the order (lsb first)
     --   req
     --   size
     --   addr
     --   bs_id
     --   rm_id
     --   vs_id
  
     -- REQ
     vector(out_ptr) <= req;     out_ptr := out_ptr+1;
  
     -- SIZE
     vector(out_ptr + C_SIZE_WIDTH-1 downto out_ptr) <= size;     out_ptr := out_ptr + C_SIZE_WIDTH;
  
     -- ADDR
     vector(out_ptr + C_ADDR_WIDTH_CFG_MEM-1 downto out_ptr) <= addr;  out_ptr := out_ptr + C_ADDR_WIDTH_CFG_MEM;
  
     -- BS_ID
     vector(out_ptr + C_BS_ID_WIDTH-1 downto out_ptr) <= bs_id;  out_ptr := out_ptr + C_BS_ID_WIDTH;
  
     -- RM_ID
     vector(out_ptr + C_RM_ID_WIDTH-1 downto out_ptr) <= rm_id;  out_ptr := out_ptr + C_RM_ID_WIDTH;
  
     -- VS_ID
     vector(out_ptr + C_VS_ID_WIDTH-1 downto out_ptr) <= vs_id;  out_ptr := out_ptr + C_VS_ID_WIDTH;
  
  end convert_vsm_input_to_vector;




  procedure convert_vsm_input_vector_to_signals (vector       : in std_logic_vector;
                                                 signal vs_id : out std_logic_vector;
                                                 signal rm_id : out std_logic_vector;
                                                 signal bs_id : out std_logic_vector;
                                                 signal size  : out std_logic_vector;
                                                 signal addr  : out std_logic_vector;
                                                 signal req   : out std_logic
                                         ) is
    variable in_ptr     : integer := 0; -- The position of the next field in the input vector
  begin
     -- The vector is packed in the order (lsb first)
     --   req
     --   size
     --   addr
     --   bs_id
     --   rm_id
     --   vs_id
  
     -- REQ
     req <= vector(in_ptr);     in_ptr := in_ptr+1;
  
     -- SIZE
     size <= vector(in_ptr + C_SIZE_WIDTH-1 downto in_ptr) ;     in_ptr := in_ptr + C_SIZE_WIDTH;
  
     -- ADDR
     addr <= vector(in_ptr + C_ADDR_WIDTH_CFG_MEM-1 downto in_ptr);  in_ptr := in_ptr + C_ADDR_WIDTH_CFG_MEM;
  
     -- BS_ID
     bs_id <= vector(in_ptr + C_BS_ID_WIDTH-1 downto in_ptr);  in_ptr := in_ptr + C_BS_ID_WIDTH;
  
     -- RM_ID
     rm_id <= vector(in_ptr + C_RM_ID_WIDTH-1 downto in_ptr) ;  in_ptr := in_ptr + C_RM_ID_WIDTH;
  
     -- VS_ID
     vs_id <= vector(in_ptr + C_VS_ID_WIDTH-1 downto in_ptr); 
  
  end convert_vsm_input_vector_to_signals;

  type vsm_input_vectors_t  is array (natural range <>) of std_logic_vector(C_VSM_INPUTS_AS_VECTOR_WIDTH - 1 downto 0);

  signal vsm_input_vectors         : vsm_input_vectors_t(0 to C_NUM_VIRTUAL_SOCKETS-1);
  signal selected_vsm_input_vector_before_fifo : std_logic_vector(C_VSM_INPUTS_AS_VECTOR_WIDTH-1 downto 0) := (others => '0');
  signal selected_vsm_input_vector_after_fifo : std_logic_vector(C_VSM_INPUTS_AS_VECTOR_WIDTH-1 downto 0) := (others => '0');


  signal rm_id_discard :std_logic_vector(C_RM_ID_WIDTH-1 downto 0);
  signal bs_id_discard :std_logic_vector(C_BS_ID_WIDTH-1 downto 0);
  signal addr_discard  : std_logic_vector(C_ADDR_WIDTH_CFG_MEM-1 downto 0) := (others => '0');
  signal size_discard  : std_logic_vector(C_SIZE_WIDTH-1 downto 0) := (others => '0');
  signal req_discard   : std_logic;
  signal reqs_stored  : std_logic_vector(C_NUM_VIRTUAL_SOCKETS -1 downto 0) := (others => '0');


  CONSTANT C_IDS_AS_VECTOR_WIDTH: integer := C_VS_ID_WIDTH        + -- vs_id
                                             C_RM_ID_WIDTH        + -- rm_id
                                             C_BS_ID_WIDTH;         -- bs_id
  
  
  signal id_fifo_input : std_logic_vector(C_IDS_AS_VECTOR_WIDTH-1 downto 0) := (others => '0');
  signal id_fifo_output : std_logic_vector(C_IDS_AS_VECTOR_WIDTH-1 downto 0) := (others => '0');
                                             
  procedure convert_ids_to_vector (signal vector: out std_logic_vector;
                                   signal vs_id : in std_logic_vector;
                                   signal rm_id : in std_logic_vector;
                                   signal bs_id : in std_logic_vector
                                   ) is
    variable out_ptr     : integer := 0; -- The position of the next field in the output  vector
  begin
     -- Pack in the order (lsb first)
     --   bs_id
     --   rm_id
     --   vs_id
  
     -- BS_ID
     vector(out_ptr + C_BS_ID_WIDTH-1 downto out_ptr) <= bs_id;  out_ptr := out_ptr + C_BS_ID_WIDTH;
  
     -- RM_ID
     vector(out_ptr + C_RM_ID_WIDTH-1 downto out_ptr) <= rm_id;  out_ptr := out_ptr + C_RM_ID_WIDTH;
  
     -- VS_ID
     vector(out_ptr + C_VS_ID_WIDTH-1 downto out_ptr) <= vs_id;  out_ptr := out_ptr + C_VS_ID_WIDTH;
  
  end convert_ids_to_vector;


  procedure convert_id_vector_to_signals (vector       : in std_logic_vector;
                                          signal vs_id : out std_logic_vector;
                                          signal rm_id : out std_logic_vector;
                                          signal bs_id : out std_logic_vector
                                         ) is
    variable in_ptr     : integer := 0; -- The position of the next field in the input vector
  begin
     -- The vector is packed in the order (lsb first)
     --   bs_id
     --   rm_id
     --   vs_id
  
     -- BS_ID
     bs_id <= vector(in_ptr + C_BS_ID_WIDTH-1 downto in_ptr);  in_ptr := in_ptr + C_BS_ID_WIDTH;
  
     -- RM_ID
     rm_id <= vector(in_ptr + C_RM_ID_WIDTH-1 downto in_ptr) ;  in_ptr := in_ptr + C_RM_ID_WIDTH;
  
     -- VS_ID
     vs_id <= vector(in_ptr + C_VS_ID_WIDTH-1 downto in_ptr); 
  
  end convert_id_vector_to_signals;

  signal id_fifo_write        : std_logic := '0';
  signal id_fifo_read         : std_logic := '0';
  signal id_fifo_not_full     : std_logic := '0';
  signal id_fifo_full         : std_logic := '0';
  signal id_fifo_empty        : std_logic := '0'; 
  signal id_fifo_almost_empty : std_logic := '0'; 
  signal ids_avail            : std_logic := '0';
  signal recheck_id_reg_source: std_logic := '0'; 
  signal rechecked_id_reg_source_used: std_logic := '0'; -- Just for debug

  signal id_fifo_read_d1         : std_logic := '0';
  signal id_fifo_read_d2         : std_logic := '0';
  signal one_word_bs_detected : std_logic := '0';
  signal two_word_bs_detected : std_logic := '0';
  signal id_fifo_almost_empty_d1 : std_logic := '0'; 





  CONSTANT C_CMD_AS_VECTOR_WIDTH: integer := C_ADDR_WIDTH_CFG_MEM + -- ADDR
                                             1                    + -- EoF
                                             C_LOWER_SEGMENT_WIDTH; -- Size
  
  
  signal cmd_fifo_input  : std_logic_vector(C_CMD_AS_VECTOR_WIDTH-1 downto 0) := (others => '0');
  signal cmd_fifo_output : std_logic_vector(C_CMD_AS_VECTOR_WIDTH-1 downto 0) := (others => '0');
                                             
  procedure convert_cmd_to_vector (signal vector: out std_logic_vector;
                                   signal addr  : in std_logic_vector;
                                   signal size  : in std_logic_vector;
                                   signal eof   : in std_logic
                                   ) is
    variable out_ptr     : integer := 0; -- The position of the next field in the output vector
  begin
    -- Pack in the order (lsb first)
    --   size
    --   eof
    --   addr
  
    -- Size
    vector(out_ptr + C_LOWER_SEGMENT_WIDTH-1 downto out_ptr) <= size;  out_ptr := out_ptr + C_LOWER_SEGMENT_WIDTH;

    -- EoF
    vector(out_ptr) <= eof;  out_ptr := out_ptr + 1;
  
    -- ADDR
    vector(out_ptr + C_ADDR_WIDTH_CFG_MEM-1 downto out_ptr) <= addr; 
  end convert_cmd_to_vector;


  procedure convert_cmd_vector_to_signals (vector      : in std_logic_vector;
                                           signal addr : out std_logic_vector;
                                           signal size : out std_logic_vector;
                                           signal eof  : out std_logic
                                         ) is
    variable in_ptr     : integer := 0; -- The position of the next field in the input vector
  begin
     -- The vector is packed in the order (lsb first)
    --   size
    --   eof
    --   addr

    -- Size
    size <= vector(in_ptr + C_LOWER_SEGMENT_WIDTH-1 downto in_ptr);  in_ptr := in_ptr + C_LOWER_SEGMENT_WIDTH;

    -- EoF
    eof <= vector(in_ptr);  in_ptr := in_ptr + 1;
  
    -- ADDR
    addr <= vector(in_ptr + C_ADDR_WIDTH_CFG_MEM-1 downto in_ptr); 
  end convert_cmd_vector_to_signals;

  signal cmd_fifo_write        : std_logic := '0';
  signal cmd_fifo_read         : std_logic := '0';
  signal cmd_fifo_not_full     : std_logic := '0';
  signal cmd_fifo_full         : std_logic := '0';
  signal cmd_fifo_empty        : std_logic := '0'; 
  signal cmd_avail             : std_logic := '0';
  signal selected_cmd_size     : std_logic_vector (C_LOWER_SEGMENT_WIDTH-1 downto 0);

  signal cmd_fifo_out_size     : std_logic_vector (C_LOWER_SEGMENT_WIDTH-1 downto 0);
  signal cmd_fifo_out_addr     : std_logic_vector (C_ADDR_WIDTH_CFG_MEM-1 downto 0);
  signal cmd_fifo_out_eof      : std_logic := '0';

begin

  debug_port(PC_FETCH_DEBUG_PORT_BAD_CONFIG_ERROR    ) <= bad_config_error_i;

  debug_port(PC_FETCH_DEBUG_PORT_VS_ID_LSB + C_VS_ID_WIDTH-1 downto PC_FETCH_DEBUG_PORT_VS_ID_LSB ) <= vs_id_o_i;
  debug_port(PC_FETCH_DEBUG_PORT_VS_ID_MSB                   downto C_VS_ID_WIDTH + PC_FETCH_DEBUG_PORT_VS_ID_LSB ) <= (others => '0');

  debug_port(PC_FETCH_DEBUG_PORT_RM_ID_LSB + C_RM_ID_WIDTH-1 downto PC_FETCH_DEBUG_PORT_RM_ID_LSB ) <= rm_id_o_i;
  debug_port(PC_FETCH_DEBUG_PORT_RM_ID_MSB                   downto C_RM_ID_WIDTH + PC_FETCH_DEBUG_PORT_RM_ID_LSB ) <= (others => '0');

  debug_port(PC_FETCH_DEBUG_PORT_BS_ID_LSB + C_BS_ID_WIDTH-1 downto PC_FETCH_DEBUG_PORT_BS_ID_LSB ) <= bs_id_o_i;
  debug_port(PC_FETCH_DEBUG_PORT_BS_ID_MSB                   downto C_BS_ID_WIDTH + PC_FETCH_DEBUG_PORT_BS_ID_LSB ) <= (others => '0');



  -- =================================================================================================================
  -- Find Req: End
  -- =================================================================================================================

  -- This block scans the inputs looking for a req and puts found reqs into a FIFO
  -- for the rest of the module to process
  -- 
  b_find_req: block
    signal mux_in  : reg_mux_input_t (C_NUM_VIRTUAL_SOCKETS -1 downto 0);
    signal mux_out : std_logic_vector(PC_REG_MUX_MAX_WIDTH  -1 downto 0);
    signal vs_id   : std_logic_vector(C_VS_ID_WIDTH-1 downto 0);

  begin


    -- ---------------------------------------------------------------
    -- Notes on determining which REQ to process
    -- ---------------------------------------------------------------
    -- reqs is a vector with one bit from each Virtual Socket Manager.
    --  reqs(0) = VSM0.req
    --  reqs(1) = VSM1.req
    -- etc.
    --
    -- Multiple reqs can be asserted at the same time and I need to select one of these.
    -- As the number of virtual sockets is pretty much always going to be less than the number
    -- of triggers, the trailing one detector used in the Trigger Manager is probably overkill.
    -- It will be fastest as it can search all reqs in a cycle (more when latency is taken into
    -- account, but still small), but offers no control over priority.
    --  1. I can use a trailing 1 detector which takes about 3 cycles (maybe less for a small number of VSMs)
    --  2. I can use a rotating 00001 mask which checks one entry every clock cycle.
    --  3. I can use a mask from a ROM which lets me have variable priority.  All I need is a counter.  One check per clock cycle
    --
    -- Option 3 is the most general and stops one VS starving the rest (the last VS may never get serviced!)
    --
    
    -- ---------------------------------------------------------------
    -- ARB Counter
    -- ---------------------------------------------------------------
    -- This selects which VSM input to examine
  
    -- Pack each VSM input into a vector
    --
    gen_vsm_input_vectors : for i in 0 to C_NUM_VIRTUAL_SOCKETS-1 generate
      signal local_req: std_logic;
     begin

      p_store_reqs: process (clk)
      begin
        if rising_edge(clk) then
          if rst_ah = '1' then
            reqs_stored(i) <= '0';
         else 
            -- A req occurs for a single cycle.  If the arb counter wasn't selecting that req
            -- in the mux, or if it was but the fifo is full (and so the req can't be stored),
            -- then take a not of it for later.
            --
            if reqs(i)  = '1' and (req_id_1hot(i) = '0' or fifo_full = '1') then
              reqs_stored(i) <= '1';
            elsif req_id_1hot(i) = '1' and fifo_full = '0' then
              reqs_stored(i) <= '0';
            end if;
          end if;
        end if;
      end process;
      local_req <= reqs_stored(i) or reqs(i);


      convert_vsm_input_to_vector (vector => vsm_input_vectors(i),
                                   vs_id  => vs_id_in(i)(C_VS_ID_WIDTH-1 downto 0),
                                   rm_id  => rm_id_in(i)(C_RM_ID_WIDTH-1 downto 0),
                                   bs_id  => bs_id_in(i)(C_BS_ID_WIDTH-1 downto 0),
                                   size   => sizes(i),
                                   addr   => addrs(i),
                                   req    => local_req
                                  );
       mux_in(i)(C_VSM_INPUTS_AS_VECTOR_WIDTH-1 downto 0) <= vsm_input_vectors(i);
    end generate gen_vsm_input_vectors;


    gen_gt_1_vs: if C_NUM_VIRTUAL_SOCKETS > 1 generate 
      -- If the FIFO becomes full, then stop flowing data.  arb_counter will stall and
      -- if it stalls on a requesting VSM, it will fill the mux with multiple requests
      -- unless I stall it
      i_mux: entity prc_v1_2_1.reg_mux
        generic map (
          C_SEL_WIDTH     => C_ARB_COUNTER_WIDTH, 
          C_NUM_INPUTS    => C_NUM_VIRTUAL_SOCKETS,
          C_MAX_MUX_SIZE  => 8,     
          C_REGISTER_SEL  => true, 
          C_REGISTER_DATA => true  
          )
        port map (
          i     => mux_in,
          sel   => std_logic_vector(arb_counter),
          clk   => clk,
          ce    => fifo_not_full, 
          reset => rst_ah,
          o     => mux_out);
    end generate gen_gt_1_vs;
    

    gen_1_vs: if C_NUM_VIRTUAL_SOCKETS = 1 generate
      mux_out(C_VSM_INPUTS_AS_VECTOR_WIDTH-1 downto 0) <=  vsm_input_vectors(0);
    end generate gen_1_vs;
    
    selected_vsm_input_vector_before_fifo <= mux_out(C_VSM_INPUTS_AS_VECTOR_WIDTH-1 downto 0);

    convert_vsm_input_vector_to_signals (vector => selected_vsm_input_vector_before_fifo,
                                         vs_id  => vs_id,
                                         rm_id  => rm_id_discard,
                                         bs_id  => bs_id_discard,
                                         size   => size_discard,
                                         addr   => addr_discard,
                                         req    => req_found
                                        );
      
    gnts <= req_id_1hot;
      
    fifo_write <= '1' when req_found = '1' and fifo_not_full = '1' else
                  '0';
  end block b_find_req;
  -- =================================================================================================================
  -- Find Req: End
  -- =================================================================================================================


  -- =================================================================================================================
  -- Process REQ
  -- =================================================================================================================

  -- It takes a couple of cycles to get data from the FIFO, so I want to read it as early as possible
  -- so that the next value is available immediately on starting the next round.
  -- 
  fifo_read <= '1' when (fsm_cs = ST_WAIT_FOR_REQ and req_avail='1')
                   else '0';
    
    
  -- This stores the REQ signal which is unecessary but it's easier to do this
  -- as it let's me use the same convert procedure.  I'll leave the req bit unconnected
  -- and let it get optimised away
  --
  i_req_fifo : glb_srl_fifo 
      generic map (
        WIDTH          => C_VSM_INPUTS_AS_VECTOR_WIDTH, 
        DEPTH          => 4,
        HAS_UVPROT     => true,
        HAS_IFX        => false,
        AFULL_THRESH1  => 0,
        AFULL_THRESH0  => 0, 
        AEMPTY_THRESH0 => 0,
        AEMPTY_THRESH1 => 0,
        HAS_HIERARCHY  => false
       )
      port map (
        aclk   => clk,
        areset => rst_ah,
      
        --Write interface
        wr_enable => fifo_write,
        wr_data   => selected_vsm_input_vector_before_fifo,
      
        --Read interface
        rd_enable => fifo_read,
        rd_avail  => req_avail,
        rd_valid  => open,
        rd_data   => selected_vsm_input_vector_after_fifo,

        --FIFO status
        full       => fifo_full,
        not_full   => fifo_not_full,
        empty      => fifo_empty,
        not_empty  => open,
        afull      => open,
        not_afull  => open,
        aempty     => open,
        not_aempty => open,
        add        => open
        );


  convert_vsm_input_vector_to_signals (vector => selected_vsm_input_vector_after_fifo,
                                       vs_id  => vs_id_from_fifo,
                                       rm_id  => rm_id_from_fifo,
                                       bs_id  => bs_id_from_fifo,
                                       size   => selected_size,
                                       addr   => selected_addr,
                                       req    => req_discard
                                      );


  -- ---------------------------------------------------------------
  -- The FSM
  -- ---------------------------------------------------------------
  b_fsm: block 
  begin
    process (clk)
    begin
      if rising_edge(clk) then
        if rst_ah = '1' then
          fsm_cs <= ST_POR;
        else
          fsm_cs <= fsm_ns;
        end if;
      end if;
    end process;

    transfer_complete        <= '1' when m_axis_bs_tvalid_i = '1' AND m_axis_bs_tready = '1' and m_axis_bs_tlast_i = '1'  else '0';
    can_exit_ST_WAIT_FOR_REQ <= '1' when req_avail = '1' and id_fifo_not_full = '1' else '0';

    process (fsm_cs, rst_ah, 
             first_word_seen, 
             cmd_fifo_write,
             upper_segment_is_zero,
             bad_config_error_cmb,
             id_fifo_almost_empty, 
             id_fifo_empty,
             transfer_complete,
             can_exit_ST_WAIT_FOR_REQ
             )
    begin
      fsm_ns <= fsm_cs;
      case fsm_cs is
        when ST_POR =>
            if rst_ah = '1' then
              fsm_ns <= ST_POR; 
            else
              fsm_ns <= ST_WAIT_FOR_REQ;
            end if;  

        when ST_WAIT_FOR_REQ =>
          if can_exit_ST_WAIT_FOR_REQ = '1' then
            if bad_config_error_cmb = '1' then
              fsm_ns    <= ST_BAD_CONFIG_ERROR1;
            else
              fsm_ns    <= ST_LOAD_DMA;
            end if;
          end if;

        -- When I get a bad config error I have to wait until there are no other transactions being processed by 
        -- the DMA.  I can't change the VS and RM IDs until transactions in flight are complete.
        -- ST_BAD_CONFIG_ERROR1 is a holding state.  I enter here when I start processing a REQ that's bad, and I wait
        -- until there is exactly one ID left in the ID FIFO.  That must be the ID that was inserted when I started 
        -- this req, and it means that there's nothing else in flight.
        -- The ID FIFO is set up so that id_fifo_empty will assert when there are 0 or 1 entries in the FIFO.  Use 
        -- id_fifo_empty to ignore the truly empty case.
        --

        when ST_BAD_CONFIG_ERROR1 =>
          if id_fifo_almost_empty = '1' and id_fifo_empty = '0' and first_word_seen = '0' then 
            fsm_ns    <= ST_BAD_CONFIG_ERROR_DONE;
          else 
            fsm_ns    <= ST_BAD_CONFIG_ERROR_WAIT;
          end if;

        when ST_BAD_CONFIG_ERROR_WAIT =>
          if id_fifo_almost_empty = '1' and id_fifo_empty = '0' and first_word_seen = '0' then 
            fsm_ns    <= ST_BAD_CONFIG_ERROR_DONE;
          end if;
          
        when ST_BAD_CONFIG_ERROR_DONE =>
          fsm_ns    <= ST_WAIT_FOR_REQ;
          
        when ST_LOAD_DMA =>
          if cmd_fifo_write = '1' and upper_segment_is_zero = '1' then
            fsm_ns    <= ST_WAIT_FOR_TX_TO_START;
          end if;

        when ST_WAIT_FOR_TX_TO_START =>
          -- TODO: I can save a cycle by going to ST_WAIT_FOR_REQ and/or ST_BAD_CONFIG_ERROR1
          -- transfer_complete is used to handle the case where I have a 1 word bitsream 
          -- (user programming error)
          --
          if first_word_seen = '1' or transfer_complete = '1' then
            fsm_ns    <= ST_WAIT_FOR_REQ;
          end if;

        -- coverage off
        when others =>
        -- coverage on
      end case;
    end process;
  end block b_fsm;   


 
  convert_ids_to_vector (vector => id_fifo_input,
                         vs_id  => vs_id_from_fifo,
                         rm_id  => rm_id_from_fifo,
                         bs_id  => bs_id_from_fifo
                         );


  id_fifo_write  <= '1' when fsm_cs = ST_WAIT_FOR_REQ and can_exit_ST_WAIT_FOR_REQ = '1' else
                  '0';

  --id_fifo_read <= '1' when (transfer_complete = '1' or fsm_cs = ST_BAD_CONFIG_ERROR_DONE) and ids_avail='1' else '0';
  -- Read the FIFO early in the transfer so teh ID can be switched quickly for the next transfer
  id_fifo_read <= '1' when ((first_word_seen = '0' AND m_axis_bs_tvalid_i = '1' AND m_axis_bs_tready = '1' ) or fsm_cs = ST_BAD_CONFIG_ERROR_DONE) and ids_avail='1' else '0';
  
  i_id_fifo : glb_srl_fifo 
      generic map (
        WIDTH          => C_IDs_AS_VECTOR_WIDTH, 
        DEPTH          => 8,  -- Needs to be as deep as the DMS's cmd FIFO, bearing in mind it can be processing some commands while others are still queueud
        HAS_UVPROT     => true,
        HAS_IFX        => false,
        AFULL_THRESH1  => 0,
        AFULL_THRESH0  => 0, 
        AEMPTY_THRESH0 => 1,  -- aempty will be deasserted as count goes from 1 to 2
        AEMPTY_THRESH1 => 2,  -- aempty will assert when count goes from 2 to 1
        HAS_HIERARCHY  => false
       )
      port map (
        aclk   => clk,
        areset => rst_ah,
      
        --Write interface
        wr_enable => id_fifo_write,
        wr_data   => id_fifo_input,
      
        --Read interface
        rd_enable => id_fifo_read,
        rd_avail  => ids_avail,
        rd_valid  => open,
        rd_data   => id_fifo_output,

        --FIFO status
        full       => id_fifo_full,
        not_full   => id_fifo_not_full,
        empty      => id_fifo_empty, 
        not_empty  => open,
        afull      => open,
        not_afull  => open,
        aempty     => id_fifo_almost_empty, 
        not_aempty => open,
        add        => open
        );


  convert_id_vector_to_signals (vector => id_fifo_output,
                                vs_id  => vs_id_o_i,
                                rm_id  => rm_id_o_i,
                                bs_id  => bs_id_o_i
                                );


  process (clk)
  begin
    if rising_edge(clk) then

      -- It takes 2 cycles to read the ID FIFO which causes a problem if the bitsteams
      -- to the ICAP end and start on adjacent clock cycles.  I need to be able to switch the
      -- ID's in a clock cycle.  I do this by reading the ID FIFO into an ID register.
      --
      -- When a transfer completes, I immediately update to the ID FIFO output value which
      -- has been read earlier to ensure it's waiting for me.
      -- The complexity (well, one of the complexities) occurs when there's no ongoing transfer.
      -- I won't get a transfer_complete until the next transfer completes, which means it will
      -- have progressed with the wrong IDs displayed. In this case, I have to skip the ID FIFO
      -- and load the values directly from the REQ FIFO.
      --
      -- It gets a bit more complex though. Because the ID FIFO takes 2 cycles to update the output
      -- data, there's a period where I can't directly use either source for the ID Regs.  Instead,
      -- I have to wait to see what happens on the next cycle.
      --
      -- There are three easy to handle cases:
      --   1. Write to empty ID FIFO when no transfers are in progress.  I need the ID REG to reflect the
      --      IDs immediately for the transfer that is about to start, so update the ID Reg from the
      --      REQ FIFO outputs and bypass the ID FIFO completely.
      --
      --   2. Write to empty ID FIFO when the current transfer is finishing.  I need the ID REG to reflect the
      --      IDs immediately for the transfer that is about to start, so update the ID Reg from the
      --      REQ FIFO outputs and bypass the ID FIFO completely.
      --
      --   3. A transfer completes without a write to an empty ID FIFO.  The ID FIFO output will be settled, so
      --   I can just update the ID REG from the ID FIFO output
      --
      -- The harder to handle case is where I write to an empty ID FIFO reg, a transfer is ongoing but isn't complete.
      -- If it finishes on the next cycle, the ID FIFO will not be settled so I need to use the REQ FIFO outputs.
      -- To deal with this, I set a flag for a cycle when I write to an empty ID FIFO and a transfer is ongoing.
      -- If the transfer finishes and this flag is set, then I know I need to use the REQ FIFO outputs
      if (id_fifo_write = '1' and id_fifo_empty = '1' and first_word_seen = '1' and transfer_complete = '0') then
        recheck_id_reg_source <= '1';
      else 
        recheck_id_reg_source <= '0';
      end if;

      rechecked_id_reg_source_used <= '0';

      -- TODO: Update SRC
      -- There's another case we need to handle.  If my partial bitstream is only 2 words long then the fifo will be read
      -- on the first word, and transefer complete will happen on the second.  However, the read isn't visible until the third word,
      -- so I need to detect that and update as soon as the data is available.
      -- A 1 word long BS has a similar issue
      id_fifo_read_d1 <= id_fifo_read;
      id_fifo_read_d2 <= id_fifo_read_d1;

      if (id_fifo_read = '1' and transfer_complete = '1' and id_fifo_almost_empty = '0') then
        one_word_bs_detected <= '1';
      end if;

      -- If the FIFO was almost empty when the read occurred, I don't need to handle it specially - the transfer_complete
      -- will update the vs_id_o register.  However, I need to know what the almost empty flag was at teh time of the read -
      -- not now
     id_fifo_almost_empty_d1 <= id_fifo_almost_empty;
     if (id_fifo_read_d1 = '1' and transfer_complete = '1' and id_fifo_almost_empty_d1 = '0') then
--      if (id_fifo_read_d1 = '1' and transfer_complete = '1' ) then
        two_word_bs_detected <= '1';
      end if;
      

      if id_fifo_write = '1' and id_fifo_empty = '1' and (first_word_seen = '0' or transfer_complete = '1') then
        -- Write to empty fifo and there's either no transfer in progress or it's just finishing.
        -- Update the ID Reg from the REQ FIFO outputs
        vs_id_o  <= vs_id_from_fifo;
        rm_id_o  <= rm_id_from_fifo;
        bs_id_o  <= bs_id_from_fifo;
      elsif recheck_id_reg_source = '1' and transfer_complete = '1' then
        -- This is the awkward case.  If the transfer completes this cycle, 
        -- then use the REQ FIFO outputs
        --report "This is the case you were looking for" severity FAILURE;
        rechecked_id_reg_source_used <= '1';
        vs_id_o  <= vs_id_from_fifo;
        rm_id_o  <= rm_id_from_fifo;
        bs_id_o  <= bs_id_from_fifo;
      elsif (transfer_complete = '1') or fsm_cs = ST_BAD_CONFIG_ERROR_DONE then
        -- The transfer is complete 
        vs_id_o  <= vs_id_o_i;
        rm_id_o  <= rm_id_o_i;
        bs_id_o  <= bs_id_o_i;
      elsif one_word_bs_detected = '1' and id_fifo_read_d2 = '1'  then
        one_word_bs_detected <= '0';
        vs_id_o  <= vs_id_o_i;
        rm_id_o  <= rm_id_o_i;
        bs_id_o  <= bs_id_o_i;
      elsif two_word_bs_detected = '1' then
        two_word_bs_detected <= '0';
        vs_id_o  <= vs_id_o_i;
        rm_id_o  <= rm_id_o_i;
        bs_id_o  <= bs_id_o_i;
      end if;
    end if;
  end process;

  


  -- First word seen is used by the ICAP to capture the IDs when the first word of the bitstream arrives
  process (clk)
  begin
    if rising_edge(clk) then
      if rst_ah = '1' then
        first_word_seen  <= '0';
      else 
        -- transfer_complete is needed to deal with single word (error) bitstreams
        if first_word_seen = '0' AND m_axis_bs_tvalid_i = '1' AND m_axis_bs_tready = '1' and transfer_complete = '0' then
          first_word_seen <= '1';
        elsif transfer_complete = '1' then
          first_word_seen <= '0';
        end if;
      end if;
    end if;
  end process;
  


  
  m_axis_bs_tuser(0) <= '1' when m_axis_bs_tvalid_i = '1' AND m_axis_bs_tready = '1' and first_word_seen = '0'
                        else '0';


   m_axis_bs_tuser(1) <= fetch_error_i;

  fetch_error <= fetch_error_i;


  p_addr_and_size: process (clk)
    variable v_dma_size : std_logic_vector(C_SIZE_WIDTH-1 downto 0) := (others => '0');
  begin
    if rising_edge(clk) then
      if fsm_cs = ST_WAIT_FOR_REQ and can_exit_ST_WAIT_FOR_REQ = '1' then      
        v_dma_size := selected_size;
        dma_addr   <= selected_addr;
      elsif fsm_cs = ST_LOAD_DMA and cmd_fifo_write = '1' then
        v_dma_size := std_logic_vector(unsigned(dma_size) - unsigned(fixed_transfer_size));
        dma_addr   <= std_logic_vector(unsigned(dma_addr) + unsigned(fixed_transfer_size));
      end if;

      dma_size      <= v_dma_size;
      upper_segment <= v_dma_size(C_UPPER_SEGMENT_WIDTH+C_LOWER_SEGMENT_WIDTH-1 downto C_LOWER_SEGMENT_WIDTH);
      -- Don't register upper_segment_is_zero here as it causes timing to fail.  It's
      -- better to be unregistered  

    end if;
  end process;


  -- The bad config error is detected when the IDs are written to the FIFO, but it takes 2
  -- clock cycles for them to reach the FIFO's output.  I can't broadcast the bad config error
  -- until the IDs are available 
  --
  p_bad_config_error: process (clk)
  begin
    if rising_edge(clk) then
      if rst_ah = '1' then
        bad_config_error_i <= '0';
      else
        if fsm_cs = ST_BAD_CONFIG_ERROR_DONE then
          bad_config_error_i <= '1';
        else
          bad_config_error_i <= '0';
        end if;
      end if;
    end if;
  end process;
  bad_config_error <= bad_config_error_i;

  -- dma_size is a registered version of selected_size. I need to use the FIFO output directly to make the bad_config decision
  -- before I start loading the DMA.  
  bad_config_error_cmb <= '1' when fsm_cs = ST_WAIT_FOR_REQ and can_exit_ST_WAIT_FOR_REQ = '1' and selected_size = (selected_size'range => '0') else '0';


 
  -- ---------------------------------------------------------------
  -- AXI DataMover
  -- ---------------------------------------------------------------
  -- Configuration
  --   Max burst length      : 256
  --   Store/Forward         : Off
  --   Unaligned Transfer    : Off.  The MM datawidth will match the EMC datawidth so I shoudln't need to access anything that isn't aligned
  --   Asynchronous clocks   : Off.  The MM interface should always run at the speed of the CC.  If there's a mismatch with the EMC, then
  --                                 the AXI Clock Converter can be used can be used to match the clocks
  --
  -- Status comes from a stream  OKAY | SLVERR | DECERR | INTERR | TAG.  All 1 bit except TAG which is 4
  --  I only really need OKAY but the rest might be worth looking at
  
 
  -- ---------------------------------------------------------------
  -- Set up a DMA transfer
  -- ---------------------------------------------------------------
                             
  selected_cmd_size <= lower_segment when upper_segment_is_zero = '1' else fixed_transfer_size;
               
  cmd_fifo_write  <= '1' when fsm_cs = ST_LOAD_DMA and cmd_fifo_not_full = '1' else '0';
  cmd_fifo_read   <= '1' when dma_cmd_tready = '1' and dma_cmd_tvalid = '1' else '0';

  dma_cmd_tvalid  <= '1' when cmd_avail = '1' else '0';

  convert_cmd_to_vector ( vector => cmd_fifo_input,
                          addr   => dma_addr,
                          size   => selected_cmd_size,
                          eof    => upper_segment_is_zero
                        );
  i_cmd_fifo : glb_srl_fifo 
      generic map (
        WIDTH          => C_CMD_AS_VECTOR_WIDTH, 
        DEPTH          => 16,
        HAS_UVPROT     => true,
        HAS_IFX        => false,
        AFULL_THRESH1  => 0,
        AFULL_THRESH0  => 0, 
        AEMPTY_THRESH0 => 0,
        AEMPTY_THRESH1 => 0,
        HAS_HIERARCHY  => false
       )
      port map (
        aclk   => clk,
        areset => rst_ah,
      
        --Write interface
        wr_enable => cmd_fifo_write,
        wr_data   => cmd_fifo_input,
      
        --Read interface
        rd_enable => cmd_fifo_read,
        rd_avail  => cmd_avail,
        rd_valid  => open,
        rd_data   => cmd_fifo_output,

        --FIFO status
        full       => cmd_fifo_full,
        not_full   => cmd_fifo_not_full,
        empty      => cmd_fifo_empty,
        not_empty  => open,
        afull      => open,
        not_afull  => open,
        aempty     => open,
        not_aempty => open,
        add        => open
        );

  convert_cmd_vector_to_signals (vector => cmd_fifo_output,
                                 addr   => cmd_fifo_out_addr,
                                 size   => cmd_fifo_out_size, 
                                 eof    => cmd_fifo_out_eof
                                ) ;

  -- SADDER: (n+31)-32.  n=32 which is the width of the Memory Mapped address bus
  -- EOF: (30) Assert to say it's an End of Frame command.  Effects TLAST
  -- Type: (23) 1 = incr, 0 = fixed.
  -- BTT: (22:0) Bytes to Transfer.  0 isn't allowed
  --             Actual width controlled by user parameter (max 23)
  
  dma_cmd_tdata((C_ADDR_WIDTH_CFG_MEM+31) downto 32) <= cmd_fifo_out_addr;
  dma_cmd_tdata(30)                                  <= cmd_fifo_out_eof;
  dma_cmd_tdata(23)                                  <= '1'; -- Keyhole or incrementing address 
  dma_cmd_tdata(C_LOWER_SEGMENT_WIDTH-1 downto 0)    <= cmd_fifo_out_size;

  --  dma_cmd_tvalid  <= '1' when fsm_cs = ST_LOAD_DMA else '0';




  m_axis_bs_tvalid <= m_axis_bs_tvalid_i;
  m_axis_bs_tlast  <= m_axis_bs_tlast_i;

  lower_segment <= dma_size(C_LOWER_SEGMENT_WIDTH-1 downto 0);

  -- Use the uncaptured version for the initial decision of which state to go to after ST_WAIT_FOR_REQ
    upper_segment_is_zero <= '1' when upper_segment = (upper_segment'range => '0') else '0';

--coverage off

  -- The two axi response errors are 'b10 (SLVERR) and 'b11 (DECERR)
  -- Need to include tvalid with this to prevent X getting into the system at gate level
  fetch_error_aximm_side(0) <= m_axi_mem_rresp(1) when m_axi_mem_rvalid = '1' else '0';

  fetch_error_i <= fetch_error_axis_side(0);

  i_dma : prc_dma
    generic map (
      C_INCLUDE_MM2S => 1,
      C_M_AXI_MM2S_ARID => 0,
      C_M_AXI_MM2S_ID_WIDTH => 4,
      C_M_AXI_MM2S_ADDR_WIDTH => 32,
      C_M_AXI_MM2S_DATA_WIDTH => 32,
      C_M_AXI_MM2S_USER_WIDTH => 1,  
      C_M_AXIS_MM2S_TDATA_WIDTH => 32,
      C_INCLUDE_MM2S_STSFIFO => 1,
      C_MM2S_STSCMD_FIFO_DEPTH => 1,
      C_MM2S_STSCMD_IS_ASYNC => 0,
      C_INCLUDE_MM2S_DRE => 0,
      C_MM2S_BURST_SIZE => 256,
      C_MM2S_BTT_USED => 23,
      C_MM2S_ADDR_PIPE_DEPTH => 3,
      C_INCLUDE_S2MM => 0,
      C_M_AXI_S2MM_AWID => 1,
      C_M_AXI_S2MM_ID_WIDTH => 4,
      C_M_AXI_S2MM_ADDR_WIDTH => 32,
      C_M_AXI_S2MM_DATA_WIDTH => 32,
      C_S_AXIS_S2MM_TDATA_WIDTH => 32,
      C_INCLUDE_S2MM_STSFIFO => 0,
      C_S2MM_STSCMD_FIFO_DEPTH => 4,
      C_S2MM_STSCMD_IS_ASYNC => 0,
      C_INCLUDE_S2MM_DRE => 0,
      C_S2MM_BURST_SIZE => 16,
      C_S2MM_BTT_USED => 16,
      C_S2MM_SUPPORT_INDET_BTT => 0,
      C_S2MM_ADDR_PIPE_DEPTH => 3,
      C_FAMILY => "kintexuplus",
      C_MM2S_INCLUDE_SF => 0,
      C_S2MM_INCLUDE_SF => 0,
      C_ENABLE_CACHE_USER => 0,
      C_ENABLE_MM2S_TKEEP => 1,
      C_ENABLE_S2MM_TKEEP => 1,
      C_ENABLE_SKID_BUF => "11111",
      C_ENABLE_S2MM_ADV_SIG => 0,
      C_ENABLE_MM2S_ADV_SIG => 0,
      C_CMD_WIDTH => 72
     )       
    PORT MAP (
      m_axi_mm2s_aclk            => clk,
      m_axi_mm2s_aresetn         => rst_al,
      mm2s_halt                  => '0',
      mm2s_err                   => open,  
      m_axis_mm2s_cmdsts_aclk    => clk,
      m_axis_mm2s_cmdsts_aresetn => rst_al,
      s_axis_mm2s_cmd_tvalid     => dma_cmd_tvalid,
      s_axis_mm2s_cmd_tready     => dma_cmd_tready,
      s_axis_mm2s_cmd_tdata      => dma_cmd_tdata,
      m_axis_mm2s_sts_tvalid     => dma_status_tvalid,
      m_axis_mm2s_sts_tready     => dma_status_tready,
      m_axis_mm2s_sts_tdata      => dma_status_tdata,
      m_axis_mm2s_sts_tkeep      => open,
      m_axis_mm2s_sts_tlast      => open,
      mm2s_allow_addr_req        => '1',
      m_axi_mm2s_arid            => open,
      m_axi_mm2s_araddr          => m_axi_mem_araddr ,
      m_axi_mm2s_arlen           => m_axi_mem_arlen  ,
      m_axi_mm2s_arsize          => m_axi_mem_arsize ,
      m_axi_mm2s_arburst         => m_axi_mem_arburst,
      m_axi_mm2s_arprot          => m_axi_mem_arprot ,
      m_axi_mm2s_arcache         => m_axi_mem_arcache,
      m_axi_mm2s_aruser          => m_axi_mem_aruser ,
      m_axi_mm2s_arvalid         => m_axi_mem_arvalid,
      m_axi_mm2s_arready         => m_axi_mem_arready,
      m_axi_mm2s_rdata           => m_axi_mem_rdata ,

      m_axi_mm2s_ruser           => fetch_error_aximm_side,
      m_axi_mm2s_rresp           => m_axi_mem_rresp  ,
      m_axi_mm2s_rlast           => m_axi_mem_rlast  ,
      m_axi_mm2s_rvalid          => m_axi_mem_rvalid ,
      m_axi_mm2s_rready          => m_axi_mem_rready_i ,
      m_axis_mm2s_tdata          => m_axis_bs_tdata,   
      m_axis_mm2s_tuser          => fetch_error_axis_side,
      m_axis_mm2s_tkeep          => open,   
      m_axis_mm2s_tlast          => m_axis_bs_tlast_i,   
      m_axis_mm2s_tvalid         => m_axis_bs_tvalid_i,  
      m_axis_mm2s_tready         => m_axis_bs_tready, 
      mm2s_dbg_sel               => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      m_axi_s2mm_aclk            => '0',
      m_axi_s2mm_aresetn         => '1',
      s2mm_halt                  => '0',
      m_axis_s2mm_cmdsts_awclk   => '0',
      m_axis_s2mm_cmdsts_aresetn => '1',
      s_axis_s2mm_cmd_tvalid     => '0',
      s_axis_s2mm_cmd_tdata      => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 72)),
      m_axis_s2mm_sts_tready     => '0',
      s2mm_allow_addr_req        => '1',
      m_axi_s2mm_awready         => '0',
      m_axi_s2mm_wready          => '0',
      m_axi_s2mm_bresp           => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      m_axi_s2mm_bvalid          => '0',
      s_axis_s2mm_tdata          => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      s_axis_s2mm_tkeep          => X"F",
      s_axis_s2mm_tlast          => '0',
      s_axis_s2mm_tvalid         => '0',
      s2mm_dbg_sel               => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4))
    );

--coverage on

   m_axi_mem_rready <= m_axi_mem_rready_i;
  
end architecture synth;


