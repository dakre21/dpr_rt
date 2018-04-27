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
-- Top Level for Partial Reconfigration Controller (PRC)
--
-- --------------------------------------------------------------------------

-- -----------------------------------------------------------------------------
-- Naming Guidelines
-- -----------------------------------------------------------------------------
--   Constant Values
--   --------------------
--     C_*     : A constant passed into a module as a Generic
--     LC_*    : A constant defined locally      using the "constant" keyword
--     PC_*    : A constant defined in a package using the "constant" keyword

--   Clock Domains
--   --------------------
--     Configuration Controller Clock Domain Signals: No prefix.  All signals assumed to be in this domain unless otherwise specified
--     Configuration Port       Clock Domain Signals: cp_*  or icap_* 
-- -----------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library prc_v1_2_1;
use     prc_v1_2_1.prc_v1_2_1_pkg.all;
library xil_defaultlib;

entity prc_prc is
  generic (
  
    -- ----------------------------------------------------------------
    -- System Generics
    -- ----------------------------------------------------------------
    C_RESET_ACTIVE_LEVEL     : std_logic := '1'; -- Reset can be active high or low, so compare against this value.
    C_NUM_VIRTUAL_SOCKETS    : integer   := 1;
    C_XDEVICEFAMILY          : string    := "not set"
    );
  port (
    -- ----------------------------------------------------------------
    -- System Signals
    -- ----------------------------------------------------------------
    clk             : in std_logic := '1';     -- Configuration Controller Clock
    reset           : in std_logic := '1';     -- Configuration Controller Synchronous reset.  Its polarity is programable
    

    -- ----------------------------------------------------------------
    -- Signals for VSM vs_main (ID 0) Interface
    -- ----------------------------------------------------------------
    vsm_vs_main_hw_triggers         : in  std_logic_vector(12-1 downto 0) := (others => '0');
    vsm_vs_main_rm_shutdown_req     : out std_logic := '0';
    vsm_vs_main_rm_shutdown_ack     : in  std_logic := '1';   
    vsm_vs_main_rm_decouple         : out std_logic := '0';
    vsm_vs_main_rm_reset            : out std_logic := '0';

    vsm_vs_main_sw_shutdown_req     : out std_logic := '0';
    vsm_vs_main_sw_startup_req      : out std_logic := '0';

    
    -- coverage off t
    vsm_vs_main_m_axis_status_tvalid : out std_logic := '1';
    -- coverage on
    vsm_vs_main_m_axis_status_tdata  : out std_logic_vector(PC_REGISTER_WIDTH-1 downto 0) := (others => '0');



    -- ----------------------------------------------------------------
    -- Event signals
    -- ----------------------------------------------------------------
    vsm_vs_main_event_error        : out std_logic := '0';


    -- ----------------------------------------------------------------
    -- Signals for Configuration Ports
    -- ----------------------------------------------------------------
    icap_clk             : in std_logic := '1';     -- Configuration Port Clock
    icap_reset           : in std_logic := '1';     -- Configuration Port Synchronous reset.  Its polarity is programable
    
    -- ----------------------------------------------------------------
    --ICAP signals   
    -- ----------------------------------------------------------------
-- coverage off t
    icap_i                 : in  std_logic_vector(32-1 downto 0); -- Width is programable but ICAPE unisim hardwires it to 32
-- coverage on
    icap_o                 : out std_logic_vector(32-1 downto 0); -- Width is programable but ICAPE unisim hardwires it to 32
    icap_csib              : out std_logic;
-- coverage off t
    icap_rdwrb             : out std_logic;
-- coverage on

    cap_req                : out std_logic := '1';  -- Request the ICAP port                      
    cap_gnt                : in  std_logic := '1';  -- ICAP granted                               
    cap_rel                : in  std_logic := '0';  -- Release the ICAP at the first opportunity  

    -- ----------------------------------------------------------------
    -- Signals for AXI LITE register interface
    -- ----------------------------------------------------------------
    -- AXI signals
    -- Cover these in the AXI Lite block
    -- coverage off t
    s_axi_reg_awaddr        : in  std_logic_vector(32-1 downto 0);
    s_axi_reg_awvalid       : in  std_logic;
    s_axi_reg_awready       : out std_logic;
    s_axi_reg_wdata         : in  std_logic_vector(PC_AXI_DATA_WIDTH-1 downto 0);
    s_axi_reg_wvalid        : in  std_logic;
    s_axi_reg_wready        : out std_logic;
    s_axi_reg_bresp         : out std_logic_vector(1 downto 0);
    s_axi_reg_bvalid        : out std_logic;
    s_axi_reg_bready        : in  std_logic;
    s_axi_reg_araddr        : in  std_logic_vector(32-1 downto 0);
    s_axi_reg_arvalid       : in  std_logic;
    s_axi_reg_arready       : out std_logic;
    s_axi_reg_rdata         : out std_logic_vector(PC_AXI_DATA_WIDTH-1 downto 0);
    s_axi_reg_rresp         : out std_logic_vector(1 downto 0);
    s_axi_reg_rvalid        : out std_logic;
    s_axi_reg_rready        : in  std_logic;
    -- coverage on
    
    -- ----------------------------------------------------------------
    -- Signals for Configuration Libraries
    -- ----------------------------------------------------------------
    -- The interface to the External Memory Controller
    --
-- coverage off t
    m_axi_mem_araddr   : out std_logic_vector(32-1 downto 0);
    m_axi_mem_arlen    : out std_logic_vector(7 downto 0);                     
    m_axi_mem_arsize   : out std_logic_vector(2 downto 0);                     
    m_axi_mem_arburst  : out std_logic_vector(1 downto 0);                     
    m_axi_mem_arprot   : out std_logic_vector(2 downto 0);                     
    m_axi_mem_arcache  : out std_logic_vector(3 downto 0);                     
    m_axi_mem_aruser   : out std_logic_vector(3 downto 0);                     
    m_axi_mem_arvalid  : out std_logic;                                        
    m_axi_mem_arready  : in  std_logic;                                        
    m_axi_mem_rdata    : in  std_logic_vector(32-1 downto 0);
    m_axi_mem_rresp    : in  std_logic_vector(1 downto 0);                     
    m_axi_mem_rlast    : in  std_logic;                                        
    m_axi_mem_rvalid   : in  std_logic;                                        
    m_axi_mem_rready   : out std_logic      
-- coverage on
    
    );
end prc_prc;

ARCHITECTURE rtl of prc_prc is
  attribute DowngradeIPIdentifiedWarnings        : string;
  attribute DowngradeIPIdentifiedWarnings of rtl : architecture is "yes";
  attribute dont_touch : string;


                                                                       
  -- Cover these in the AXI Lite block
  -- coverage off t
  signal s_axi_reg_araddr_i : std_logic_vector(PC_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
  signal s_axi_reg_awaddr_i : std_logic_vector(PC_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
  -- coverage on
  -- ----------------------------------------------------------------
  -- System Local Constants and signals
  -- ----------------------------------------------------------------
                                                                         
  -- ----------------------------------------------------------------
  -- Configration Interface Generics
  -- ----------------------------------------------------------------
  constant C_ICAP_DATA_WIDTH    : integer   := 32;  -- 8, 16 or 32 in Series 7.  Only 32 beyond.  !!!! ONLY 32 supported in this version !!!!

  -- ----------------------------------------------------------------
  -- Configration Library Generics
  -- ----------------------------------------------------------------
  constant C_CL0_ADDR_WIDTH     : integer   := 32;
  constant C_CL0_DATA_WIDTH     : integer   := 32;
    
  constant LC_VS_ID_WIDTH : integer := 1;  -- Number of bits needed to represent C_NUM_VIRTUAL_SOCKETS
  constant LC_RM_ID_WIDTH : integer := 5;  -- Number of bits needed to represent the maximum possible RM ID accross all Virtual Sockets
  constant LC_BS_ID_WIDTH : integer := 1;  -- Number of bits needed to represent the maximum possible bitstream (BS) ID accross all Virtual Sockets

-- Cover this in the ICAP block.  There are two versions in the top level and that confuses coverage
-- coverage off t
  signal icap_avail : std_logic := '1';
-- coverage on

  -- ----------------------------------------------------------------
  -- Local Constants and signals for vsm_vs_main
  -- ----------------------------------------------------------------
  constant LC_vsm_vs_main_NUM_RMS                    : integer := 13;
  constant LC_vsm_vs_main_NUM_RMS_ALLOCATED          : integer := 32;  
  constant LC_vsm_vs_main_NUM_BITSTREAMS_ALLOCATED: integer := 32;


  signal vsm_vs_main_sw_shutdown_req_i : std_logic := '0';
  signal vsm_vs_main_sw_startup_req_i  : std_logic := '0';
                                     
  signal vsm_vs_main_fetch_req       : std_logic := '0';
  signal vsm_vs_main_fetch_gnt       : std_logic := '0';

  -- Cover these in the VSM blocks
  -- coverage off t
  signal vsm_vs_main_fetch_addr      : std_logic_vector(PC_AXI_ADDR_WIDTH    -1 downto 0) := (others => '0');
  signal vsm_vs_main_fetch_size      : std_logic_vector(PC_MAX_BS_SIZE_WIDTH -1 downto 0) := (others => '0');
  signal vsm_vs_main_fetch_vs_id     : std_logic_vector(LC_VS_ID_WIDTH   -1 downto 0) := (others => '0');
  signal vsm_vs_main_fetch_rm_id     : std_logic_vector(5 -1 downto 0) := (others => '0'); -- Local address used
  signal vsm_vs_main_fetch_bs_id     : std_logic_vector(LC_BS_ID_WIDTH   -1 downto 0) := (others => '0');
  signal vsm_vs_main_m_axis_status_tvalid_i : std_logic := '1';
  signal vsm_vs_main_m_axis_status_tdata_i  : std_logic_vector(PC_REGISTER_WIDTH-1 downto 0) := (others => '0');

  signal vsm_vs_main_s_axis_ctrl_tvalid_i : std_logic := '0';
  signal vsm_vs_main_s_axis_ctrl_tready_i : std_logic := '0';
  signal vsm_vs_main_s_axis_ctrl_tdata_i  : std_logic_vector(PC_REGISTER_WIDTH-1 downto 0) := (others => '0');
  -- coverage on




                                                                         

  -- ----------------------------------------------------------------
  -- Local Constants and signal for FETCH 0 (Fetch block for
  --                                         Configuration Library 0)
  -- ----------------------------------------------------------------
  
  signal fetch0_reqs      : std_logic_vector(C_NUM_VIRTUAL_SOCKETS -1 downto 0) := (others => '0');
  signal fetch0_gnts      : std_logic_vector(C_NUM_VIRTUAL_SOCKETS -1 downto 0) := (others => '0');
  signal fetch0_addrs     : vsm_addr_t      (C_NUM_VIRTUAL_SOCKETS -1 downto 0) := (others => (others => '0'));
  signal fetch0_sizes     : vsm_size_t      (C_NUM_VIRTUAL_SOCKETS -1 downto 0) := (others => (others => '0'));
  signal fetch0_vs_id_i   : vsm_vs_id_t     (C_NUM_VIRTUAL_SOCKETS -1 downto 0) := (others => (others => '0'));
  signal fetch0_rm_id_i   : vsm_rm_id_t     (C_NUM_VIRTUAL_SOCKETS -1 downto 0) := (others => (others => '0'));
  signal fetch0_bs_id_i   : vsm_bs_id_t     (C_NUM_VIRTUAL_SOCKETS -1 downto 0) := (others => (others => '0')); 

  -- There's only one VSM in the coverage configuration, so the VS_ID won't change
  -- coverage off t
  signal fetch0_vs_id_o   : std_logic_vector(LC_VS_ID_WIDTH-1 downto 0);
  -- coverage on

  signal fetch0_rm_id_o   : std_logic_vector(LC_RM_ID_WIDTH-1 downto 0);
  signal fetch0_bs_id_o   : std_logic_vector(LC_BS_ID_WIDTH-1 downto 0);
  signal fetch0_error     : std_logic;
  signal bad_config0_error: std_logic;


  -- Status information from FETCH0 back to the VSMs  
  -- -----------------------------------------------
  signal fetch0_to_vsm_error      : std_logic_vector(C_NUM_VIRTUAL_SOCKETS -1 downto 0) := (others => '0');
  signal bad_config0_to_vsm_error : std_logic_vector(C_NUM_VIRTUAL_SOCKETS -1 downto 0) := (others => '0');



  -- There's only one VSM in the coverage configuration, so the VS_ID won't change
  -- coverage off t
  signal decompress0_vs_id_o   : std_logic_vector(LC_VS_ID_WIDTH-1 downto 0);
  -- coverage on

  signal decompress0_rm_id_o   : std_logic_vector(LC_RM_ID_WIDTH-1 downto 0);
  signal decompress0_bs_id_o   : std_logic_vector(LC_BS_ID_WIDTH-1 downto 0);
  signal decompress0_bad_format_error : std_logic := '0';
  signal decompress0_bad_size_error   : std_logic := '0';


  -- ----------------------------------------------------------------
  -- Local Constants and signal for CP0 (Configuration Interface block for
  --                                         Configuration Port 0)
  -- ----------------------------------------------------------------
  signal cp0_done       : std_logic;
  signal cp0_error      : std_logic;
  signal cp0_lost_error : std_logic;
  -- There's only one VSM in the coverage configuration, so the VS_ID won't change
  -- coverage off t
  signal cp0_vs_id      : std_logic_vector(LC_VS_ID_WIDTH -1 downto 0);
  -- coverage on

  signal cp0_rm_id      : std_logic_vector(LC_RM_ID_WIDTH -1 downto 0);
  signal cp0_bs_id      : std_logic_vector(LC_BS_ID_WIDTH -1 downto 0);

  -- Bitstream data from the Fetch0 to Decompress0.  bs = bitstream
  signal fetch0_2_decompress0_axis_bs_tdata       : std_logic_vector(C_CL0_DATA_WIDTH-1 downto 0);       
  signal fetch0_2_decompress0_axis_bs_tuser       : std_logic_vector(1 downto 0);
  signal fetch0_2_decompress0_axis_bs_tlast       : std_logic;
  signal fetch0_2_decompress0_axis_bs_tvalid      : std_logic;
  signal fetch0_2_decompress0_axis_bs_tready      : std_logic;

  -- Bitstream data from the Decompress0 to CP0.  bs = bitstream
  signal decompress0_2_cp0_axis_bs_tdata       : std_logic_vector(C_CL0_DATA_WIDTH-1 downto 0);       
  signal decompress0_2_cp0_axis_bs_tuser       : std_logic_vector(1 downto 0);
  signal decompress0_2_cp0_axis_bs_tlast       : std_logic;
  signal decompress0_2_cp0_axis_bs_tvalid      : std_logic;
  signal decompress0_2_cp0_axis_bs_tready      : std_logic;

  -- Status information from Decompress 0 back to the VSMs)  
  signal decompress0_to_vsm_bad_format_error : std_logic_vector(C_NUM_VIRTUAL_SOCKETS -1 downto 0) := (others => '0');
  signal decompress0_to_vsm_bad_size_error   : std_logic_vector(C_NUM_VIRTUAL_SOCKETS -1 downto 0) := (others => '0');


  -- Status information from CP0 (ICAP) back to the VSMs)  
  signal cp0_to_vsm_rm_id      : vsm_rm_id_t     (C_NUM_VIRTUAL_SOCKETS -1 downto 0) := (others => (others => '0'));
  signal cp0_to_vsm_bs_id      : vsm_bs_id_t     (C_NUM_VIRTUAL_SOCKETS -1 downto 0) := (others => (others => '0'));
  signal cp0_to_vsm_done       : std_logic_vector(C_NUM_VIRTUAL_SOCKETS -1 downto 0) := (others => '0');
  signal cp0_to_vsm_error      : std_logic_vector(C_NUM_VIRTUAL_SOCKETS -1 downto 0) := (others => '0');
  signal cp0_to_vsm_lost_error : std_logic_vector(C_NUM_VIRTUAL_SOCKETS -1 downto 0) := (others => '0');

  -- Constants for the AXI Lite register interface
  -- ----------------------------------------------
  -- AXI is a point-to-point protocol so the AXI Interface block does
  -- not have to decode the entire address space to see if it is selected.
  -- The fact that it gets a VALID signal on any AXI channel means that it
  -- is selected.  Address decoding is just needed to work out which VSM is
  -- selected


  --             VSM Select 
  --             |    Table Select                                                                     
  --             |    |    Register offset
  --             |    |    |      ,Byte address                                                                       
  --  Address:  (0) (00) (000) (00)   = 0


 
  constant VSM_SELECT_MSB       : integer := 10;
  constant VSM_SELECT_LSB       : integer := 11;
  constant VSM_TABLE_SELECT_MSB : integer := 10;
  constant VSM_TABLE_SELECT_LSB : integer := 9;
  constant VSM_REG_SELECT_MSB   : integer := 8;
  constant VSM_REG_SELECT_LSB   : integer := 2;
                                                                       
  -- Cover these in the VSM blocks
  -- coverage off t
  signal vsm_reg_addr            :  std_logic_vector(PC_AXI_ADDR_WIDTH-1 downto 0);
  signal vsm_reg_rnw             :  std_logic;
  signal vsm_reg_tvalid          :  std_logic_vector(C_NUM_VIRTUAL_SOCKETS - 1 downto 0);
  signal vsm_reg_wdata           :  std_logic_vector(PC_AXI_DATA_WIDTH-1 downto 0);
--  signal vsm_reg_rdata           :  vsm_data_t      (C_NUM_VIRTUAL_SOCKETS -1 downto 0);
  signal vsm_reg_rdata           :  vsm_data_t      (2 -1 downto 0);

  signal vsm_vs_main_reg_rdata          :  std_logic_vector(PC_AXI_DATA_WIDTH-1 downto 0);

  --signal vsm_reg_tready          :  std_logic_vector(C_NUM_VIRTUAL_SOCKETS - 1 downto 0);
  --signal vsm_reg_error           :  std_logic_vector(C_NUM_VIRTUAL_SOCKETS - 1 downto 0);
  signal vsm_reg_tready          :  std_logic_vector(2 - 1 downto 0);
  signal vsm_reg_error           :  std_logic_vector(2 - 1 downto 0);

  -- coverage on

  signal rst_al         : std_logic := '0';  -- Active Low Reset
  signal rst_ah        : std_logic := '0';  -- Active High Reset
  signal icap_reset_al  : std_logic := '0';  -- Active Low Reset
  signal icap_reset_ah : std_logic := '0';  -- Active High Reset




                                                                                           
begin
                                                                       
  -- I'm doing it this way in case I ever want to change the width of the external ports to an accurately 
  -- sized value instead of 32
  s_axi_reg_araddr_i(32-1 downto 0) <= s_axi_reg_araddr;
  s_axi_reg_awaddr_i(32-1 downto 0) <= s_axi_reg_awaddr;

  -- Some blocks require an active low reset, so resolve that locally
  --                                                                         
  rst_al        <= reset      when C_RESET_ACTIVE_LEVEL = '0' else (not reset);
  icap_reset_al <= icap_reset when C_RESET_ACTIVE_LEVEL = '0' else (not icap_reset);

  -- Also, just create active high resets as well
  --                                                                         
  rst_ah        <= reset      when C_RESET_ACTIVE_LEVEL = '1' else (not reset);
  icap_reset_ah <= icap_reset when C_RESET_ACTIVE_LEVEL = '1' else (not icap_reset);


      
                                                                 
  i_axi_lite_if: entity prc_v1_2_1.axi_lite_if
    generic map (
        C_NUM_VIRTUAL_SOCKETS     => C_NUM_VIRTUAL_SOCKETS,
        C_MAX_NUM_VIRTUAL_SOCKETS => 2,
        C_AXI_ADDRESS_WIDTH       => PC_AXI_ADDR_WIDTH,
        C_AXI_DATA_WIDTH          => PC_AXI_DATA_WIDTH,
        C_VS_ID_WIDTH             => LC_VS_ID_WIDTH, 
        C_VSM_SELECT_MSB          => VSM_SELECT_MSB,
        C_VSM_SELECT_LSB          => VSM_SELECT_LSB,
        C_OPTIMISE_FOR_FMAX       => false,
        C_XDEVICEFAMILY           => C_XDEVICEFAMILY)
    port map (
        s_axi_aclk    => clk,
        s_axi_aresetn => rst_al,  -- This block takes an active low reset
        s_axi_awaddr  => s_axi_reg_awaddr_i,
        s_axi_awvalid => s_axi_reg_awvalid,
        s_axi_awready => s_axi_reg_awready,
        s_axi_wdata   => s_axi_reg_wdata,
        s_axi_wvalid  => s_axi_reg_wvalid,
        s_axi_wready  => s_axi_reg_wready,
        s_axi_bresp   => s_axi_reg_bresp,
        s_axi_bvalid  => s_axi_reg_bvalid,
        s_axi_bready  => s_axi_reg_bready,
        s_axi_araddr  => s_axi_reg_araddr_i,
        s_axi_arvalid => s_axi_reg_arvalid,
        s_axi_arready => s_axi_reg_arready,
        s_axi_rdata   => s_axi_reg_rdata,
        s_axi_rresp   => s_axi_reg_rresp,
        s_axi_rvalid  => s_axi_reg_rvalid,
        s_axi_rready  => s_axi_reg_rready,
        vsm_addr      => vsm_reg_addr,
        vsm_rnw       => vsm_reg_rnw,
        vsm_tvalid    => vsm_reg_tvalid,
        vsm_wdata     => vsm_reg_wdata,
        vsm_rdata     => vsm_reg_rdata,
        vsm_tready    => vsm_reg_tready,
        vsm_error     => vsm_reg_error);


  vsm_reg_rdata (1) <= (others => '0');
  vsm_reg_tready(1) <= '1'; 
  vsm_reg_error (1) <= '0';
    -- ----------------------------------------------------------------
    -- VSM vs_main (ID 0)
    -- ----------------------------------------------------------------
    i_vsm_vs_main: entity xil_defaultlib.prc_prc_vsm_vs_main
    generic map (
      C_XDEVICEFAMILY               => C_XDEVICEFAMILY,
      C_RESET_ACTIVE_LEVEL          => C_RESET_ACTIVE_LEVEL,
      C_NUM_TRIGGERS_ALLOCATED      => 32,
      C_NUM_HW_TRIGGERS             => 12,
      C_VS_ID                       => 0,
      C_VS_ID_WIDTH                 => LC_VS_ID_WIDTH, 
      C_RM_ID_WIDTH                 => 5, 
      C_BS_ID_WIDTH                 => LC_BS_ID_WIDTH,
      C_AXI_REG_ADDRESS_WIDTH       => PC_AXI_ADDR_WIDTH,
      C_AXI_REG_DATA_WIDTH          => PC_AXI_DATA_WIDTH,
      C_TABLE_SELECT_MSB            => VSM_TABLE_SELECT_MSB,
      C_TABLE_SELECT_LSB            => VSM_TABLE_SELECT_LSB,
      C_REG_SELECT_MSB              => VSM_REG_SELECT_MSB,
      C_REG_SELECT_LSB              => VSM_REG_SELECT_LSB,
      C_NUM_RMS                     => LC_vsm_vs_main_NUM_RMS,
      C_NUM_RMS_ALLOCATED           => LC_vsm_vs_main_NUM_RMS_ALLOCATED,
      C_NUM_BITSTREAMS_ALLOCATED => LC_vsm_vs_main_NUM_BITSTREAMS_ALLOCATED,
      C_HAS_AXI_LITE                => 1,
      C_HAS_AXIS_STATUS             => 1,
      C_HAS_AXIS_CONTROL            => 0,
      C_SHUTDOWN_ON_ERROR           => 1,
      C_START_IN_SHUTDOWN           => 0,
      C_HAS_DEFAULT_RM              => '1',
      C_SKIP_RM_STARTUP_AFTER_RESET => '0',
      C_DEFAULT_RM_ID               => 0,
      C_DEFAULT_SHUTDOWN_REQUIRED   => PC_RM_NO_SHUTDOWN_REQUIRED, 
      C_DEFAULT_RESET_REQUIRED      => PC_RM_HIGH_RESET_REQUIRED, 
      C_DEFAULT_RESET_DURATION      => std_logic_vector(to_unsigned(0, PC_RM_RESET_DURATION_WIDTH)),
      C_DEFAULT_SW_STARTUP_REQUIRED => PC_RM_STARTUP_NOT_REQUIRED
      )
    port map (
      clk                 => clk                  ,
      reset               => reset                ,
      hw_triggers         => vsm_vs_main_hw_triggers     ,
      hw_triggers_pending => open ,
           
           
      rm_shutdown_req      => vsm_vs_main_rm_shutdown_req  ,
      rm_shutdown_ack      => vsm_vs_main_rm_shutdown_ack  ,
      rm_decouple          => vsm_vs_main_rm_decouple      ,
      rm_reset             => vsm_vs_main_rm_reset         ,
      sw_shutdown_req      => vsm_vs_main_sw_shutdown_req_i,
      sw_startup_req       => vsm_vs_main_sw_startup_req_i ,
      fetch_req            => vsm_vs_main_fetch_req        ,
      fetch_gnt            => vsm_vs_main_fetch_gnt        ,
      fetch_addr           => vsm_vs_main_fetch_addr       ,
      fetch_size           => vsm_vs_main_fetch_size       ,
      fetch_vs_id_out      => vsm_vs_main_fetch_vs_id      ,
      fetch_rm_id_out      => vsm_vs_main_fetch_rm_id      ,
      fetch_bs_id_out      => vsm_vs_main_fetch_bs_id      ,

      m_axis_status_tvalid => vsm_vs_main_m_axis_status_tvalid_i,
      m_axis_status_tdata  => vsm_vs_main_m_axis_status_tdata_i,

      s_axis_ctrl_tvalid   => vsm_vs_main_s_axis_ctrl_tvalid_i,
      s_axis_ctrl_tready   => vsm_vs_main_s_axis_ctrl_tready_i,
      s_axis_ctrl_tdata    => vsm_vs_main_s_axis_ctrl_tdata_i,
                                                                             
      reg_addr                 => vsm_reg_addr   ,
      reg_rnw                  => vsm_reg_rnw    ,
      reg_tvalid               => vsm_reg_tvalid(0) ,
      reg_wdata                => vsm_reg_wdata               ,
      reg_rdata                => vsm_vs_main_reg_rdata,
      reg_tready               => vsm_reg_tready(0) ,
      reg_error                => vsm_reg_error(0)  ,
                               
      fetch_error              => fetch0_to_vsm_error(0),
      bad_config_error         => bad_config0_to_vsm_error(0),

      decompress_bad_size_error   => decompress0_to_vsm_bad_size_error(0),
      decompress_bad_format_error => decompress0_to_vsm_bad_format_error(0),
      event_error         => vsm_vs_main_event_error,
     debug_port           => open,
      cp_done             => cp0_to_vsm_done(0)   ,
      cp_error            => cp0_to_vsm_error(0)  ,
      cp_lost_error       => cp0_to_vsm_lost_error(0)  ,
      cp_rm_id_in         => cp0_to_vsm_rm_id(0)(5 -1 downto 0)   , -- When I move to multiple CPs this has to become an array
      cp_bs_id_in         => cp0_to_vsm_bs_id(0)(LC_BS_ID_WIDTH -1 downto 0)  
    );
    
  fetch0_addrs  (0)                                                 <= vsm_vs_main_fetch_addr;
  fetch0_sizes  (0)                                                 <= vsm_vs_main_fetch_size;
  fetch0_vs_id_i(0)(LC_VS_ID_WIDTH-1 downto 0)                      <= vsm_vs_main_fetch_vs_id;  
  fetch0_rm_id_i(0)(5-1 downto 0)                      <= vsm_vs_main_fetch_rm_id;  -- Local width used
  fetch0_bs_id_i(0)(LC_BS_ID_WIDTH-1 downto 0)                      <= vsm_vs_main_fetch_bs_id;  
  fetch0_reqs   (0)                                                 <= vsm_vs_main_fetch_req;
  vsm_vs_main_fetch_gnt                                                    <= fetch0_gnts(0);
  vsm_reg_rdata(0)(PC_AXI_DATA_WIDTH-1 downto 0 )                <= vsm_vs_main_reg_rdata;

   vsm_vs_main_sw_shutdown_req  <= vsm_vs_main_sw_shutdown_req_i;
   vsm_vs_main_sw_startup_req   <= vsm_vs_main_sw_startup_req_i;

   vsm_vs_main_m_axis_status_tvalid <= vsm_vs_main_m_axis_status_tvalid_i;
   vsm_vs_main_m_axis_status_tdata  <= vsm_vs_main_m_axis_status_tdata_i; 


                                                           

                                                                    

  -- ----------------------------------------------------------------
  -- Fetch Block for Config Library 0
  -- ----------------------------------------------------------------
  i_fetch0: entity xil_defaultlib.prc_prc_fetch
    generic map (
      C_XDEVICEFAMILY           => C_XDEVICEFAMILY                  ,
      C_RESET_ACTIVE_LEVEL      => C_RESET_ACTIVE_LEVEL             ,
      C_VS_ID_WIDTH             => LC_VS_ID_WIDTH                   ,
      C_RM_ID_WIDTH             => LC_RM_ID_WIDTH                   ,
      C_BS_ID_WIDTH             => LC_BS_ID_WIDTH                   ,
      C_CFG_PORT_ID             => 0                                ,
      C_NUM_VIRTUAL_SOCKETS     => C_NUM_VIRTUAL_SOCKETS            ,
      C_ADDR_WIDTH_CFG_MEM      => C_CL0_ADDR_WIDTH         ,
      C_DATA_WIDTH_CFG_MEM      => C_CL0_DATA_WIDTH         ,
      C_SIZE_WIDTH              => PC_MAX_BS_SIZE_WIDTH,
      C_LOWER_SEGMENT_WIDTH     => 23 -- This is the maximum the datamover supports
           
      )
    port map (
     debug_port           => open,
      clk                => clk              ,
      rst_ah             => rst_ah           ,
      rst_al             => rst_al           ,
      reqs               => fetch0_reqs      ,     
      gnts               => fetch0_gnts      ,      
      addrs              => fetch0_addrs     ,      
      sizes              => fetch0_sizes     ,      
      vs_id_in           => fetch0_vs_id_i   ,
      rm_id_in           => fetch0_rm_id_i   ,
      bs_id_in           => fetch0_bs_id_i   ,
      vs_id_o            => fetch0_vs_id_o   ,
      rm_id_o            => fetch0_rm_id_o   ,
      bs_id_o            => fetch0_bs_id_o   ,
      fetch_error        => fetch0_error     ,
      bad_config_error   => bad_config0_error,
      m_axis_bs_tdata    => fetch0_2_decompress0_axis_bs_tdata  ,  
      m_axis_bs_tuser    => fetch0_2_decompress0_axis_bs_tuser  ,   
      m_axis_bs_tlast    => fetch0_2_decompress0_axis_bs_tlast  ,       
      m_axis_bs_tvalid   => fetch0_2_decompress0_axis_bs_tvalid ,       
      m_axis_bs_tready   => fetch0_2_decompress0_axis_bs_tready ,
      m_axi_mem_araddr   => m_axi_mem_araddr ,
      m_axi_mem_arlen    => m_axi_mem_arlen  ,
      m_axi_mem_arsize   => m_axi_mem_arsize ,
      m_axi_mem_arburst  => m_axi_mem_arburst,
      m_axi_mem_arprot   => m_axi_mem_arprot ,
      m_axi_mem_arcache  => m_axi_mem_arcache,
      m_axi_mem_aruser   => m_axi_mem_aruser ,
      m_axi_mem_arvalid  => m_axi_mem_arvalid,
      m_axi_mem_arready  => m_axi_mem_arready,
      m_axi_mem_rdata    => m_axi_mem_rdata  ,
      m_axi_mem_rresp    => m_axi_mem_rresp  ,
      m_axi_mem_rlast    => m_axi_mem_rlast  ,
      m_axi_mem_rvalid   => m_axi_mem_rvalid ,
      m_axi_mem_rready   => m_axi_mem_rready 
    );



  -- ----------------------------------------------------------------
  -- Decompression Block for Config Library 0
  -- ----------------------------------------------------------------
  i_decompress_0: entity prc_v1_2_1.decompress
    generic map (
        C_XDEVICEFAMILY => C_XDEVICEFAMILY,
        C_DECOMPRESS_ALGO  => 0,
        C_VS_ID_WIDTH             => LC_VS_ID_WIDTH                   ,
        C_RM_ID_WIDTH             => LC_RM_ID_WIDTH                   ,
        C_BS_ID_WIDTH             => LC_BS_ID_WIDTH                   )
    port map (
        clk                => clk         ,
        reset_n            => rst_al      ,
        s_axis_tdata       => fetch0_2_decompress0_axis_bs_tdata  ,
        s_axis_tuser       => fetch0_2_decompress0_axis_bs_tuser  ,
        s_axis_tvalid      => fetch0_2_decompress0_axis_bs_tvalid ,
        s_axis_tready      => fetch0_2_decompress0_axis_bs_tready ,
        s_axis_tlast       => fetch0_2_decompress0_axis_bs_tlast  ,


        vs_id_i            => fetch0_vs_id_o      ,
        rm_id_i            => fetch0_rm_id_o      ,
        bs_id_i            => fetch0_bs_id_o      ,

        m_axis_tdata       => decompress0_2_cp0_axis_bs_tdata  ,
        m_axis_tuser       => decompress0_2_cp0_axis_bs_tuser  ,
        m_axis_tvalid      => decompress0_2_cp0_axis_bs_tvalid ,
        m_axis_tready      => decompress0_2_cp0_axis_bs_tready ,
        m_axis_tlast       => decompress0_2_cp0_axis_bs_tlast  ,

        vs_id_o            => decompress0_vs_id_o      ,
        rm_id_o            => decompress0_rm_id_o      ,
        bs_id_o            => decompress0_bs_id_o      ,
        bad_format_error_o => decompress0_bad_format_error,
        bad_size_error_o   => decompress0_bad_size_error  

      );


  -- ----------------------------------------------------------------
  -- Configuration Port Interface 0 for ICAP 0
  -- ----------------------------------------------------------------
  i_cp0: entity xil_defaultlib.prc_prc_icap_if_0
    generic map (
      C_XDEVICEFAMILY      => C_XDEVICEFAMILY,
      C_RESET_ACTIVE_LEVEL => C_RESET_ACTIVE_LEVEL,
      C_DATA_WIDTH_CFG_MEM => C_CL0_DATA_WIDTH,
      C_ICAP_DATA_WIDTH    => C_ICAP_DATA_WIDTH,
      C_VS_ID_WIDTH        => LC_VS_ID_WIDTH,
      C_RM_ID_WIDTH        => LC_RM_ID_WIDTH,
      C_BS_ID_WIDTH        => LC_BS_ID_WIDTH)
    port map (
      cc_clk              => clk,
      cc_reset_ah         => rst_ah,
      cc_reset_al         => rst_al,
      cp_clk              => icap_clk,
      cp_reset_ah         => icap_reset_ah,
      cp_reset_al         => icap_reset_al,
      cc_axis_bs_tdata    => decompress0_2_cp0_axis_bs_tdata  ,
      cc_axis_bs_tuser    => decompress0_2_cp0_axis_bs_tuser  , 
      cc_axis_bs_tlast    => decompress0_2_cp0_axis_bs_tlast  ,
      cc_axis_bs_tvalid   => decompress0_2_cp0_axis_bs_tvalid ,
      cc_axis_bs_tready   => decompress0_2_cp0_axis_bs_tready ,
      
      vs_id_i             => decompress0_vs_id_o,
      rm_id_i             => decompress0_rm_id_o,
      bs_id_i             => decompress0_bs_id_o,
    
      cc_done             => cp0_done,
      cc_error            => cp0_error,
      cc_lost_error       => cp0_lost_error,
      vs_id_o             => cp0_vs_id,
      rm_id_o             => cp0_rm_id,
      bs_id_o             => cp0_bs_id,
      icap_i              => icap_i,  
      icap_o              => icap_o,
      icap_csib           => icap_csib,
      icap_rdwrb          => icap_rdwrb,
      icap_avail          => icap_avail,  
      icap_req            => cap_req,
      icap_gnt            => cap_gnt,
      icap_rel            => cap_rel
    );

    
    -- Route the done, error, RM ID and BS ID signals back to the appropriate VSM
    --
    process (cp0_done, cp0_error, cp0_lost_error, cp0_vs_id, cp0_rm_id, cp0_bs_id)
    begin
      for i in 0 to C_NUM_VIRTUAL_SOCKETS-1 loop
        if i = to_integer(unsigned(cp0_vs_id)) then
          cp0_to_vsm_done (i)                            <= cp0_done;
          cp0_to_vsm_error(i)                            <= cp0_error;
          cp0_to_vsm_lost_error(i)                       <= cp0_lost_error;
          cp0_to_vsm_rm_id(i)(LC_RM_ID_WIDTH-1 downto 0) <= cp0_rm_id;  
          cp0_to_vsm_bs_id(i)(LC_BS_ID_WIDTH-1 downto 0) <= cp0_bs_id;          

          -- These are required to avoid inferring a latch
          cp0_to_vsm_rm_id(i)(PC_MAX_RM_ID_WIDTH-1 downto LC_RM_ID_WIDTH) <= (others => '0');
          cp0_to_vsm_bs_id(i)(PC_MAX_BS_ID_WIDTH-1 downto LC_BS_ID_WIDTH) <= (others => '0');

        else
          cp0_to_vsm_done (i)      <= '0';
          cp0_to_vsm_error(i)      <= '0';
          cp0_to_vsm_lost_error(i) <= '0';
          cp0_to_vsm_rm_id(i)      <= (others => '0');
          cp0_to_vsm_bs_id(i)      <= (others => '0');
        end if;
      end loop;
    end process;

    -- Route the error signal from the fetch block back to the appropriate VSM
    --
    process (fetch0_error, bad_config0_error, fetch0_vs_id_o)
    begin
      for i in 0 to C_NUM_VIRTUAL_SOCKETS-1 loop
        if i = to_integer(unsigned(fetch0_vs_id_o)) then
          fetch0_to_vsm_error     (i) <= fetch0_error;
          bad_config0_to_vsm_error(i) <= bad_config0_error;
        else
          fetch0_to_vsm_error     (i) <= '0';
          bad_config0_to_vsm_error(i) <= '0';
        end if;
      end loop;
    end process;


  -- Route the error signals from the decompress block back to the appropriate VSM
    --
    process (decompress0_bad_format_error, decompress0_bad_size_error, decompress0_vs_id_o)
    begin
      for i in 0 to C_NUM_VIRTUAL_SOCKETS-1 loop
        if i = to_integer(unsigned(decompress0_vs_id_o)) then
          decompress0_to_vsm_bad_size_error  (i) <= decompress0_bad_size_error;
          decompress0_to_vsm_bad_format_error(i) <= decompress0_bad_format_error;
        else
          decompress0_to_vsm_bad_size_error  (i) <= '0';
          decompress0_to_vsm_bad_format_error(i) <= '0';
        end if;
      end loop;
    end process;



end architecture rtl;



