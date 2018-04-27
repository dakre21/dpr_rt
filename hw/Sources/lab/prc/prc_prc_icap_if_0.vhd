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


--
-- TODO: Add an AXIS interface to allow the user to drive data into the ICAP.
--       Create an AXI mux that feeds the FIFO.
--       Create an FSM to control the mux.  Ownership is between CC and USER
--       and ends when TLAST and an ICAP complete (Error, Done) is seen.  Basically, 
--       I need to drain the path in the event of a DONE or an ERROR, 
--       Ownership is parked with CC for speed.
--
--       CC_DONE and CC_ERROR to VSMs only sent when the owner is CC.  When it's USER, 
--       the info needs to be sent out on an AXI Stream status channel.  


--       I had some notes in my logbook Mon 29-Sept-2014, but not much more than I have here
--

-- -----------------------------------------------------------------------------
--
-- ICAP interface for configuration Controller
--
-- --------------------------------------------------------------------------
-- For details on driving the ICAP, see UG470 SelectMap section.
-- This code uses Non-Continuous SelectMAP Data Loading with a Free Running CCLK.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library prc_v1_2_1;
use     prc_v1_2_1.prc_v1_2_1_pkg.all;

library lib_cdc_v1_0_2; -- For the cdc_sync

library xpm;
use xpm.VCOMPONENTS.all;


entity prc_prc_icap_if_0 is
  generic (
    C_XDEVICEFAMILY          : string    := "not set";
    C_RESET_ACTIVE_LEVEL     : std_logic := '0'; -- Reset can be active high or low, so compare against this value.
    C_DATA_WIDTH_CFG_MEM     : integer   := 32;  -- The width of the AXI bus attached to the memory.  
    C_ICAP_DATA_WIDTH        : integer   := 32;  -- 8, 16 or 32 in Series 7.  Only 32 beyond.
    C_VS_ID_WIDTH            : integer   := 4;  
    C_RM_ID_WIDTH            : integer   := 4;  
    C_BS_ID_WIDTH            : integer   := 4  
    );
  port (
    -- naming conventions
    --  cc_*           : Configuration Controller clock domain
    --  cp_*  or icap_ : Configuration port clock domain
    
    -- System interfaces
    cc_clk             : in std_logic := '1';     -- Configuration Controller Clock
    cc_reset_ah        : in std_logic := '1';     -- Configuration Controller Synchronous reset (active high)  
    cc_reset_al        : in std_logic := '1';     -- Configuration Controller Synchronous reset (active low)
    cp_clk             : in std_logic := '1';     -- Configuration Port Clock
    cp_reset_ah        : in std_logic := '1';     -- Configuration Port Synchronous reset (active high)
    cp_reset_al        : in std_logic := '1';     -- Configuration Port Synchronous reset (active low)
   
    -- Bitstream data from the fetch unit.  bs = bitstream
    cc_axis_bs_tdata       : in  std_logic_vector(C_DATA_WIDTH_CFG_MEM-1 downto 0);       
    cc_axis_bs_tuser       : in  std_logic_vector(1 downto 0);       
    cc_axis_bs_tlast       : in  std_logic;                                                    
    cc_axis_bs_tvalid      : in  std_logic;                                                    
    cc_axis_bs_tready      : out std_logic;                                                    

    vs_id_i                : in  std_logic_vector(C_VS_ID_WIDTH-1 downto 0);
    rm_id_i                : in  std_logic_vector(C_RM_ID_WIDTH-1 downto 0);
    bs_id_i                : in  std_logic_vector(C_BS_ID_WIDTH-1 downto 0);

    vs_id_o                : out std_logic_vector(C_VS_ID_WIDTH-1 downto 0);
    rm_id_o                : out std_logic_vector(C_RM_ID_WIDTH-1 downto 0);
    bs_id_o                : out std_logic_vector(C_BS_ID_WIDTH-1 downto 0);
    
    cc_done                : out std_logic := '0';
    cc_error               : out std_logic := '0';  
    cc_lost_error          : out std_logic := '0';  
    
    --ICAP signals   
    icap_i                 : in  std_logic_vector(C_ICAP_DATA_WIDTH-1 downto 0);  -- Width is programable but ICAPE unisim hardwires it to 32
    icap_o                 : out std_logic_vector(C_ICAP_DATA_WIDTH-1 downto 0):= (others => '0'); -- Width is programable but ICAPE unisim hardwires it to 32
    icap_csib              : out std_logic := '1';
    icap_rdwrb             : out std_logic := '0';
    icap_avail             : in std_logic  := '1';
    icap_req               : out std_logic := '0';  -- Request the ICAP port                      
    icap_gnt               : in  std_logic := '1';  -- ICAP granted                               
    icap_rel               : in  std_logic := '1'   -- Release the ICAP at the first opportunity  
  );
end prc_prc_icap_if_0;


architecture synth of prc_prc_icap_if_0 is
  attribute DowngradeIPIdentifiedWarnings          : string;
  attribute DowngradeIPIdentifiedWarnings of synth : architecture is "yes";
  attribute dont_touch : string;

 
  component xpm_fifo_sync
    generic (
  
      -- Common module generics
      FIFO_MEMORY_TYPE         : string   := "block";
      FIFO_WRITE_DEPTH         : integer  := 2048;
      WRITE_DATA_WIDTH         : integer  := 32;
      READ_MODE                : string   :="std";
      FIFO_READ_LATENCY        : integer  := 1;
      FULL_RESET_VALUE         : integer  := 0;
      READ_DATA_WIDTH          : integer  := 32;
      WR_DATA_COUNT_WIDTH      : integer  := 12;
      PROG_FULL_THRESH         : integer  := 10;
      RD_DATA_COUNT_WIDTH      : integer  := 12;
      PROG_EMPTY_THRESH        : integer  := 10;
      DOUT_RESET_VALUE         : string   := "0";
      ECC_MODE                 : string   :="no_ecc";
      WAKEUP_TIME              : integer  := 0
    );
    port (
  
      sleep          : in std_logic;
      rst            : in std_logic;
      wr_clk         : in std_logic;
      wr_en          : in std_logic;
      din            : in std_logic_vector(WRITE_DATA_WIDTH-1 downto 0);
      full           : out std_logic;
      prog_full      : out std_logic;
      wr_data_count  : out std_logic_vector(WR_DATA_COUNT_WIDTH-1 downto 0);
      overflow       : out std_logic;
      wr_rst_busy    : out std_logic;
      rd_en          : in std_logic;
      dout           : out std_logic_vector(READ_DATA_WIDTH-1 downto 0);
      empty          : out std_logic;
      prog_empty     : out std_logic;
      rd_data_count  : out std_logic_vector(RD_DATA_COUNT_WIDTH-1 downto 0);
      underflow      : out std_logic;
      rd_rst_busy    : out std_logic;
      injectsbiterr  : in std_logic;
      injectdbiterr  : in std_logic;
      sbiterr        : out std_logic;
      dbiterr        : out std_logic
    );
  end component;


  -- Need to declare component interfaces to Verilog Modules that take bit vectors, otherwise
  -- Vivado can't match the types

  -- Component declaration for the Bitstream FIFO
  -- FIFO_DEPTH = 32
  -- NUM_BITS_FOR_FIFO_DEPTH = 5

--  COMPONENT < = : bs_fifo_name : >
--    PORT (
--      m_aclk        : IN STD_LOGIC;
--      s_aclk        : IN STD_LOGIC;
--      s_aresetn     : IN STD_LOGIC;
--      s_axis_tvalid : IN STD_LOGIC;
--      s_axis_tready : OUT STD_LOGIC;
--      s_axis_tdata  : IN STD_LOGIC_VECTOR(C_ICAP_DATA_WIDTH-1 DOWNTO 0);
--      s_axis_tuser  : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--      s_axis_tlast  : IN STD_LOGIC;
--      m_axis_tvalid : OUT STD_LOGIC;
--      m_axis_tready : IN STD_LOGIC;
--      m_axis_tdata  : OUT STD_LOGIC_VECTOR(C_ICAP_DATA_WIDTH-1 DOWNTO 0);
--      m_axis_tuser  : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
--      m_axis_tlast  : OUT STD_LOGIC;
--      axis_wr_data_count: OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
--      axis_rd_data_count: OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
--    );
--  END COMPONENT;



-- coverage off t
  signal zero_v1                : std_logic_vector(0 downto 0) := (others => '0'); -- Dummy signal used in component instantiation
-- coverage on
  
  signal cp_bs_avail            : std_logic := '0';                                                   -- Bitstream is available for the ICAP
  signal cp_bs_read             : std_logic := '0';                                                   -- Read a word from the Bitstream from the FIFO
  signal cp_bs_data             : std_logic_vector(C_ICAP_DATA_WIDTH-1 downto 0) := (others => '0');  -- Bitstream data
  signal cp_bs_tuser            : std_logic_vector(0                   downto 0) := (others => '0');  -- Bitstream extra information
  signal cp_bs_tlast            : std_logic;


  signal cp_bs_data_vector      : std_logic_vector(2+C_ICAP_DATA_WIDTH-1 downto 0) := (others => '0');   
  signal cc_bs_data_vector      : std_logic_vector(2+C_ICAP_DATA_WIDTH-1 downto 0) := (others => '0');   



  signal cp_bs_empty            : std_logic;
  signal cp_bs_rd_rst_busy      : std_logic;
  signal cc_bs_full             : std_logic; 
  signal cc_bs_wr_rst_busy      : std_logic;


  signal cp_done                : std_logic := '0';
  signal cp_error               : std_logic := '0';  
  signal cp_lost_error          : std_logic := '0';  
  signal cp_fetch_error         : std_logic := '0';  

  signal cc_done_i              : std_logic := '0';
  signal cc_error_i             : std_logic := '0';
  signal cc_lost_error_i        : std_logic := '0';


  signal cc_axis_bs_tready_i    : std_logic := '0';
  signal cc_axis_bs_fifo_tready : std_logic := '0';
  signal write_bs_fifo          : std_logic := '0';
  
  signal cc_first_bs_word       : std_logic := '0';

 
  signal cc_id_store            : std_logic;
  signal cc_s_axis_id_tready    : std_logic;
  signal cc_s_axis_id_tuser     : std_logic_vector(C_VS_ID_WIDTH + C_RM_ID_WIDTH + C_BS_ID_WIDTH-1 downto 0);

  signal cc_id_avail            : std_logic := '0';                                                   
  signal cc_id_read             : std_logic := '0';                                                   
  signal cc_id_data             : std_logic_vector(C_VS_ID_WIDTH + C_RM_ID_WIDTH + C_BS_ID_WIDTH-1 downto 0) := (others => '0');  


  -- coverage toggle_ignore cc_s_axis_id_tuser "6"
  -- coverage toggle_ignore cc_id_data "6"





  signal tx_in_progress_cmb : std_logic := '0';
  signal desync_needed      : std_logic := '0';
  signal desync_needed_cmb  : std_logic := '0';
  signal desync_in_progress : std_logic := '0';
  signal icap_req_i         : std_logic := '0';  -- Request the ICAP port
  signal icap_csib_i        : std_logic := '1';  
  signal icap_o_preswap     : std_logic_vector(C_ICAP_DATA_WIDTH-1 downto 0) := (others => '0'); 


  signal can_exit_ST_WAIT_FOR_ICAP_DONE : std_logic := '0';  
  signal abort_desync_sequence          : std_logic := '0';  
  
  

  
--  -- ICAP Status constants
--  -- ------------------------
--  --                                                   _____ CFGERR_B
--  --                                                  | ____ DALIGN
--  --                                                  || ___ RIP
--  --                                                  ||| __ IN_ABORT_B
--  --                                                  ||||
--  constant ICAP_NOSYNC_NOERROR : std_logic_vector := "1001";  -- 9
--  constant ICAP_NOSYNC_ERROR   : std_logic_vector := "0001";  -- 1
--  constant ICAP_SYNC_NOERROR   : std_logic_vector := "1101";  -- D
--  constant ICAP_SYNC_ERROR     : std_logic_vector := "0101";  -- 5

  
  function reverse_for_icap(data_in : std_logic_vector(31 downto 0)) return std_logic_vector is
    variable ret : std_logic_vector(31 downto 0);
  begin
    -- for bit in 0 to 31 loop
    --   ret(31-bit) := data_in(bit);
    -- end loop;  -- Bit

    for byte in 0 to (32/8-1) loop
      for bit in 0 to 7 loop
        ret(byte*8 + (7-bit)) := data_in(byte*8 + bit);
      end loop;  -- Bit
    end loop;  -- Byte

    return ret;
  end;


  -- FSM Signals
  -- -----------
  type cp_state_t is (ST_POR                         , -- Power On Reset state      
                      ST_WAIT_FOR_BS                 , -- Wait here until a bitstream is available
                      ST_ICAP_REQ                    , -- Request the ICAP and wait for it to be granted        
                      ST_FETCH_BS                    , -- Start sending the bitstream to the ICAP without the ICAP error flag set
                      ST_WAIT_FOR_ICAP_DONE          ,
                      ST_SEND_DESYNC_0               ,
                      ST_SEND_DESYNC_1               ,
                      ST_SEND_DESYNC_2               ,
                      ST_SEND_DESYNC_3               
                      );
  
  -- _cs = current state, _ns = next state
  signal cp_fsm_cs            : cp_state_t := ST_POR;
  signal cp_fsm_ns            : cp_state_t := ST_POR;


  -- We recommend only doing a reset when the VSM is idle, so I'm not testing resets when it isn't idle
  -- However, allow a reset in ST_FETCH_BS as we may be draining the fetch path after a CFG error so a reset 
  -- can occur there
  -- coverage fsm_off -ftrans cp_fsm_cs ST_ICAP_REQ->ST_POR
  -- coverage fsm_off -ftrans cp_fsm_cs ST_WAIT_FOR_ICAP_DONE->ST_POR
  -- coverage fsm_off -ftrans cp_fsm_cs ST_SEND_DESYNC_0->ST_POR
  -- coverage fsm_off -ftrans cp_fsm_cs ST_SEND_DESYNC_1->ST_POR
  -- coverage fsm_off -ftrans cp_fsm_cs ST_SEND_DESYNC_2->ST_POR
  -- coverage fsm_off -ftrans cp_fsm_cs ST_SEND_DESYNC_3->ST_POR

  -- These are impossible to hit as there are no self transitions for these states
  -- 
  -- coverage fsm_off -ftrans cp_fsm_cs ST_SEND_DESYNC_0->ST_SEND_DESYNC_0
  -- coverage fsm_off -ftrans cp_fsm_cs ST_SEND_DESYNC_1->ST_SEND_DESYNC_1
  -- coverage fsm_off -ftrans cp_fsm_cs ST_SEND_DESYNC_2->ST_SEND_DESYNC_2
  -- coverage fsm_off -ftrans cp_fsm_cs ST_SEND_DESYNC_3->ST_SEND_DESYNC_3


  -- These two are strange.  Coverage consistently reports that they aren't hit, but statement coverage 
  -- shows that they are hit.  For example (edited for clarity):

  --    684                  when ST_WAIT_FOR_ICAP_DONE =>
  --    685                    if icap_dalign = '0' then
  --    687                      if cp_bs_avail = '1' then
  --    689                        if cp_fetch_error = '0' and (icap_gnt = '0' or icap_rel = '1' or icap_req_i = '0' or icap_avail = '0') then
  --    692     1     95             cp_fsm_ns    <= ST_ICAP_REQ;
  --    693                        elsif cp_fetch_error = '0' and icap_gnt = '1' and icap_rel = '0' and icap_req_i = '1' and icap_avail = '1' then
  --    699     1    106             cp_fsm_ns    <= ST_FETCH_BS;
  --
  --     Uncovered Transitions :
  --     -----------------------
  -- Line            Trans_ID          Transition          
  -- ----            --------          ----------          
  --  692                  13          ST_WAIT_FOR_ICAP_DONE -> ST_ICAP_REQ
  --  699                  14          ST_WAIT_FOR_ICAP_DONE -> ST_FETCH_BS

  -- I'm waiving them to stop me having to check them every time I get coverage results

  -- coverage fsm_off -ftrans cp_fsm_cs ST_WAIT_FOR_ICAP_DONE->ST_ICAP_REQ
  -- coverage fsm_off -ftrans cp_fsm_cs ST_WAIT_FOR_ICAP_DONE->ST_FETCH_BS

  signal legacy_cfg_error     : std_logic := '0';
  signal lost_error_seen      : std_logic := '0';
  signal fetch_error_seen     : std_logic := '0';

  signal fetch_error_seen_on_first_word     : std_logic := '0';
  signal fetch_error_seen_on_first_word_cmb : std_logic := '0';


  -- This is a combinatorial signal that's asserted when a CFG ERR is seen during a transfer.  
  --
  signal cfg_error_seen_cmb   : std_logic := '0';

  -- This is cfg_error_seen_cmb delayed by 1 cycle.  In order to generate a single cycle pulse
  -- on cp_error and cp_done, I edge detect cfg_error_seen_cmb, so I need to keep its history
  --
  signal cfg_error_seen_cmb_d1   : std_logic := '0';

  -- This is a flag that is asserted when an error has been seen in the cycle.
  -- It lags the error by a cycle, so it may need to be used in conjunction with cfg_error_seen_cmb
  -- to get full coverage of the error.  
  --
  signal cfg_error_seen       : std_logic := '0';


  signal lost_error_seen_cmb  : std_logic := '0';
  signal lost_error_seen_cmb_d1  : std_logic := '0';
  signal fetch_error_seen_cmb : std_logic := '0';
  
  signal icap_dalign : std_logic := '0';
  signal icap_cfgerr : std_logic := '0';

  -- These are useful for debug. They show the IDs on the ID FIFO output
  signal vs_id_fifo_out           :  std_logic_vector(C_VS_ID_WIDTH-1 downto 0);
  signal rm_id_fifo_out           :  std_logic_vector(C_RM_ID_WIDTH-1 downto 0);
  signal bs_id_fifo_out           :  std_logic_vector(C_BS_ID_WIDTH-1 downto 0);





begin





  -- ---------------------------------------------------------------
  -- Move Bitstream data from CC clock domain to CP clock domain
  -- ---------------------------------------------------------------
  -- This FIFO takes data from the FETCH block (will eventually be from the Processing Block)
  -- which is AXI Streaming and I need to consume it and feed it to the ICAP port.
  --
  -- I may need a datawidth converter, but for now, assume everything is 32 bits

-- TODO: Need to take wr_rst_busy into account

  write_bs_fifo <= '1' when cc_axis_bs_tvalid = '1' and cc_axis_bs_tready_i = '1' else '0';

--  i_bs_fifo : < = : $bs_fifo_name : >
--    PORT MAP (
--      s_aresetn => cc_reset_al,
--
--      -- Connections to the bitstream source
--      s_aclk         => cc_clk,
--      s_axis_tvalid  => write_bs_fifo      ,
--      s_axis_tready  => cc_axis_bs_fifo_tready ,
--      s_axis_tdata   => cc_axis_bs_tdata       ,
--      s_axis_tuser   => cc_axis_bs_tuser(1 downto 1),
--      s_axis_tlast   => cc_axis_bs_tlast       ,
--
--      -- Connections to the ICAP side
--      m_aclk         => cp_clk                 ,
--      m_axis_tvalid  => cp_bs_avail            ,
--      m_axis_tready  => cp_bs_read             ,
--      m_axis_tdata   => cp_bs_data             ,
--      m_axis_tuser   => cp_bs_tuser            ,
--      m_axis_tlast   => cp_bs_tlast            ,
--      axis_wr_data_count => open,
--      axis_rd_data_count => open
--      );






  i_bs_fifo : xpm_fifo_async    
    generic map (
      FIFO_MEMORY_TYPE    => "distributed",
      ECC_MODE            => "no_ecc", 
      RELATED_CLOCKS      => 0, 
      FIFO_WRITE_DEPTH    => 32,
      WRITE_DATA_WIDTH    => C_ICAP_DATA_WIDTH+2,
      WR_DATA_COUNT_WIDTH => 1, --positive integer          
      PROG_FULL_THRESH    => 5,          
      FULL_RESET_VALUE    => 0, 
      READ_MODE           => "std",
      FIFO_READ_LATENCY   => 0,
      READ_DATA_WIDTH     => C_ICAP_DATA_WIDTH+2,
      RD_DATA_COUNT_WIDTH => 1, --positive integer
      PROG_EMPTY_THRESH   => 3,
      DOUT_RESET_VALUE    => "0", --string
      CDC_SYNC_STAGES     => 2,
      WAKEUP_TIME         => 0 --positive integer; 0 or 2;
    )
    port map (
      rst           => cc_reset_ah,  -- The 'rst' input should be synchronous to wr_clk and it is advised to keep the reset pulse more or equal to CDC_SYNC_STAGES.
      wr_clk        => cc_clk,
      wr_en         => write_bs_fifo,
      full          => cc_bs_full,
      din           => cc_bs_data_vector,
      wr_rst_busy   => cc_bs_wr_rst_busy, 
      rd_clk        => cp_clk,
      rd_en         => cp_bs_read,
      dout          => cp_bs_data_vector,
      empty         => cp_bs_empty,     
      rd_rst_busy   => cp_bs_rd_rst_busy, 
      sleep         => '0',
      overflow      => open,
      underflow     => open,
      prog_full     => open,
      wr_data_count => open,
      prog_empty    => open,
      rd_data_count => open,
      injectsbiterr => '0',
      injectdbiterr => '0',
      sbiterr       => open,
      dbiterr       => open
    );

    -- Empty is in read domain
    -- Full is in write domain


   cc_bs_data_vector  <= cc_axis_bs_tdata & cc_axis_bs_tuser(1 downto 1) & cc_axis_bs_tlast;

   cp_bs_data     <= cp_bs_data_vector(C_ICAP_DATA_WIDTH+2-1 downto 2);
   cp_bs_tuser(0) <= cp_bs_data_vector(1);
   cp_bs_tlast    <= cp_bs_data_vector(0);

   cp_bs_avail            <= '1' when cp_bs_empty = '0' and cp_bs_rd_rst_busy = '0' else '0';
   cc_axis_bs_fifo_tready <= '1' when cc_bs_full = '0' and cc_bs_wr_rst_busy = '0' else '0';  

  
  cp_fetch_error <= cp_bs_tuser(0);

   

  -- I can accept more bitstream data as long as the CDC bitstream FIFO can *and*
  -- the ID FIFO can.  If the ID FIFO is full then accepting new bitstream data
  -- could cause a set of IDs to get dropped
  --
  cc_axis_bs_tready_i <= cc_axis_bs_fifo_tready AND cc_s_axis_id_tready;
  cc_axis_bs_tready   <= cc_axis_bs_tready_i;
    

  -- ---------------------------------------------------------------
  -- FSM to move data from the bitstream FIFO to the ICAP port
  -- ---------------------------------------------------------------
  -- The FSM runs from the cp_* and icap_* signals:  
  --    cp_clk             
  --    cp_reset
  --    cp_bs_avail
  --    cp_bs_tlast
  --
  -- Anything staring with cc_* will result in an error as it is from another clock domain

  -- There are 5 valid paths through the ICAP taking Sync and CFG ERR into account.  Assumptions
  -- 1. If the icap status is 9F (no sync/no error) it can only go to DF (synch/No error).  This is because
  --    the synch word can't cause a configuration error, so there's no way the synch word can arrive and
  --    cause an error at the same time.
  -- 2. If the icap status is DF (sync/no error) it can only go to 9F (No synch/No error) or 5F (Synch/Error).
  --    Specifically, an error goes via Synch/Error for one clock before going to No Synch/Error.  This is taken
  --    from some test in the PR user guide   
  --           
  -- Paths
  --   1.  9F   : No Synch/No Error
  --       DF   :    Synch/No Error
  --       9F   : No Synch/No Error      PASS
  --   
  --   2.  9F   : No Synch/No Error
  --       DF   :    Synch/No Error      Not possible to get a config error before the sync word
  --       5F   :    Synch/   Error      Error seen
  --       1F   : No Synch/   Error      FAIL
  --
  --   3.  1F   : No Synch/   Error
  --       5F   :    Synch/   Error      New sync seen but legacy error still present
  --       DF   :    Synch/No Error      New sync seen and legacy error cleared
  --       9F   : No Synch/No Error      PASS
  --
  --   4.  1F   : No Synch/   Error
  --       5F   :    Synch/   Error      New sync seen but legacy error still present
  --       DF   :    Synch/No Error      New sync seen and legacy error cleared
  --       5F   :    Synch/   Error      New error seen
  --       1F   : No Synch/   Error      FAIL
  --   
  --   5.  1F   : No Synch/   Error
  --       5F   :    Synch/   Error      New sync seen but legacy error still present
  --       1F   : No Synch/   Error      FAIL
  --                                     This path occurs when we see a synch but get a CFG ERR before the RCRC command occurs to clear the ICAP.
  --                                     Silicon team say this is possible, but not likely
  --   
  --
  -- NOTE:
  --  ABORT status response occurs when RDWR_B changes from 0 (write) to 1 (read) when CSI_B = 0
  --  As that's under my control, I'm not going to look for this condition.
  --  RIP (readback in progress) is also under my control, so I'm not going to look for this condition either

  -- =================================================
  -- Error handling
  -- =================================================
  -- In the event of an ICAP error, I can't really abort the bitstream transfer.
  --   1. I need to clear BS FIFO *without* clearing the next bitstream if any of that is present.
  --   2. I need to clear the data mover in the fetch block, but again, only the current bitstream.
  -- I don't think either of these are possible - I don't see how I could avoid wiping following 
  -- bitstreams that had already entered the fetch path.
  --
  -- Instead, I'm just going to drain the FETCH path without sending it to the ICAP.
  
                                                                
  -- ---------------------------------------------------------------
  -- Status
  -- ---------------------------------------------------------------
  -- I need to return the following status to the Controller
  --  VS_ID, RM_ID, BS_ID Done, PASS/FAIL
  --
  --
  -- *_ID are all captured from the ports so no need to handle clocks.
  -- However, they may change before the ICAP is finished, so I need to capture
  -- them on the first word of a bitstream and store them in a FIFO. 
  
  -- DONE & PASS/FAIL need to cross a clock domain.    
  -- Bring cp_error, cp_lost_error and cp_done back into the cc clock domain  
  --
  i_cdc_done: entity lib_cdc_v1_0_2.cdc_sync
    generic map (
      C_CDC_TYPE     => 0,  -- Transfer a pulse
      C_RESET_STATE  => 0,  -- Reset not required
      C_SINGLE_BIT   => 1,
      C_FLOP_INPUT   => 1,
      C_VECTOR_WIDTH => 1,
      C_MTBF_STAGES  => 2
      )
    port map (
      prmry_aclk      => cp_clk,
      prmry_resetn    => cp_reset_al, 
      prmry_in        => cp_done,
      prmry_vect_in   => zero_v1,
      prmry_ack       => open,
      scndry_aclk     => cc_clk,
      scndry_resetn   => cc_reset_al,
      scndry_out      => cc_done_i,
      scndry_vect_out => open);
    
  i_cdc_error: entity lib_cdc_v1_0_2.cdc_sync

    generic map (
      C_CDC_TYPE     => 0,  -- Transfer a pulse
      C_RESET_STATE  => 0,  -- Reset not required
      C_SINGLE_BIT   => 1,
      C_FLOP_INPUT   => 1,
      C_VECTOR_WIDTH => 1,
      C_MTBF_STAGES  => 2
      )
    port map (
      prmry_aclk      => cp_clk,
      prmry_resetn    => cp_reset_al,  -- Use FIFO reset as it's guaranteed to be active low
      prmry_in        => cp_error,
      prmry_vect_in   => zero_v1,
      prmry_ack       => open,
      scndry_aclk     => cc_clk,
      scndry_resetn   => cc_reset_al,
      scndry_out      => cc_error_i,
      scndry_vect_out => open);

  i_cdc_lost_error: entity lib_cdc_v1_0_2.cdc_sync

    generic map (
      C_CDC_TYPE     => 0,  -- Transfer a pulse
      C_RESET_STATE  => 0,  -- Reset not required
      C_SINGLE_BIT   => 1,
      C_FLOP_INPUT   => 1,
      C_VECTOR_WIDTH => 1,
      C_MTBF_STAGES  => 2
      )
    port map (
      prmry_aclk      => cp_clk,
      prmry_resetn    => cp_reset_al, 
      prmry_in        => cp_lost_error,
      prmry_vect_in   => zero_v1,
      prmry_ack       => open,
      scndry_aclk     => cc_clk,
      scndry_resetn   => cc_reset_al,
      scndry_out      => cc_lost_error_i,
      scndry_vect_out => open);


  
  cc_s_axis_id_tuser  <= vs_id_i(C_VS_ID_WIDTH-1 downto 0) & rm_id_i & bs_id_i(C_BS_ID_WIDTH-1 downto 0);
   
  cc_first_bs_word <= cc_axis_bs_tuser(0); -- Rename to make the code and waveforms slightly easier to understand
   
 
  cc_id_store <= '1' when cc_axis_bs_tvalid = '1' and cc_axis_bs_tready_i = '1' and cc_first_bs_word = '1'
                     else '0';
                              
  -- I read data out of the ID fifo when I see cc_done                           
  cc_id_read <= cc_done_i;
              
  process (cc_clk)
  begin
    if rising_edge(cc_clk) then
      if cc_reset_ah = '1' then
        vs_id_o  <= (others => '0');
        rm_id_o  <= (others => '0');
        bs_id_o  <= (others => '0');
        cc_done  <= '0';
        cc_error <= '0';
      elsif cc_done_i = '1' then
        vs_id_o(C_VS_ID_WIDTH-1 downto 0) <= cc_id_data(C_VS_ID_WIDTH + C_RM_ID_WIDTH + C_BS_ID_WIDTH -1 downto C_RM_ID_WIDTH + C_BS_ID_WIDTH);
        rm_id_o                           <= cc_id_data(                C_RM_ID_WIDTH + C_BS_ID_WIDTH -1 downto                 C_BS_ID_WIDTH);
        bs_id_o(C_BS_ID_WIDTH-1 downto 0) <= cc_id_data(                                C_BS_ID_WIDTH -1 downto                             0);
        cc_done  <= '1';
        cc_error <= cc_error_i;
        cc_lost_error <= cc_lost_error_i;
      else
        vs_id_o  <= (others => '0');
        rm_id_o  <= (others => '0');
        bs_id_o  <= (others => '0');
        cc_done  <= '0';
        cc_error <= '0';
        cc_lost_error <= '0';
      end if;
    end if;
  end process;              

  vs_id_fifo_out(C_VS_ID_WIDTH-1 downto 0) <= cc_id_data(C_VS_ID_WIDTH + C_RM_ID_WIDTH + C_BS_ID_WIDTH -1 downto C_RM_ID_WIDTH + C_BS_ID_WIDTH);
  rm_id_fifo_out                           <= cc_id_data(                C_RM_ID_WIDTH + C_BS_ID_WIDTH -1 downto                 C_BS_ID_WIDTH);
  bs_id_fifo_out(C_BS_ID_WIDTH-1 downto 0) <= cc_id_data(                                C_BS_ID_WIDTH -1 downto                             0);
              
              

-- C_VS_ID_WIDTH  = 1
-- C_RM_ID_WIDTH  = 5
-- C_BS_ID_WIDTH  = 1
 

  blk_id_fifo : block
    signal fifo_write : std_logic := '0';
    signal fifo_read  : std_logic := '0';

    signal xpm_fifo_dout : std_logic_vector(7-1 downto 0) := (others => '0');  
    signal xpm_fifo_empty : std_logic := '0';
    signal xpm_fifo_full : std_logic := '0';
    signal xpm_fifo_overflow    : std_logic := '0';
    signal xpm_fifo_wr_rst_busy : std_logic := '0';
    signal xpm_fifo_underflow   : std_logic := '0';
    signal xpm_fifo_rd_rst_busy : std_logic := '0';

  begin 

    fifo_write <= '1' when cc_id_store = '1' and cc_reset_ah = '0' and cc_s_axis_id_tready = '1' else
                  '0';

    fifo_read <= '1' when cc_id_read = '1' and cc_reset_ah = '0' and cc_id_avail = '1' else
                  '0';

    cc_id_avail         <= not xpm_fifo_empty;
    cc_id_data          <= xpm_fifo_dout;
    cc_s_axis_id_tready <= not xpm_fifo_full;
    
    xpm_fifo_sync_inst : xpm_fifo_sync
      generic map (
        FIFO_WRITE_DEPTH    => 16,             --positive integer.  Min = 16
        WRITE_DATA_WIDTH    => 7,             --positive integer   
        FIFO_MEMORY_TYPE    => "distributed", --string; "auto", "block", "distributed", or "ultra" ;
        ECC_MODE            => "no_ecc",      --string; "no_ecc" or "en_ecc";
        WR_DATA_COUNT_WIDTH => 4,             --positive integer
        PROG_FULL_THRESH    => 11,             --positive integer
        FULL_RESET_VALUE    => 0,             --positive integer; 0 or 1;
        READ_MODE           => "fwft",         --string; "std" or "fwft"  (first word fall through);
        FIFO_READ_LATENCY   => 0,             --positive integer;  Must be 0 if fwft
        READ_DATA_WIDTH     => 7,    --positive integer
        RD_DATA_COUNT_WIDTH => 4,            --positive integer
        PROG_EMPTY_THRESH   => 7,            --positive integer
        DOUT_RESET_VALUE    => "0",           --string
        WAKEUP_TIME         => 0              --positive integer; 0 or 2;
        )
      port map (
        rst           => cc_reset_ah,
        wr_clk        => cc_clk,

        -- Write interface
        wr_en         => fifo_write,
        din           => cc_s_axis_id_tuser,

        -- Read interface
        rd_en         => fifo_read,
        dout          => xpm_fifo_dout,
        empty         => xpm_fifo_empty,

        full          => xpm_fifo_full,
        overflow      => xpm_fifo_overflow   ,
        wr_rst_busy   => xpm_fifo_wr_rst_busy,
        underflow     => xpm_fifo_underflow  ,
        rd_rst_busy   => xpm_fifo_rd_rst_busy,
        prog_full     => open,
        wr_data_count => open,
        prog_empty    => open,
        rd_data_count => open,
        sleep         => '0',
        injectsbiterr => '0',
        injectdbiterr => '0',
        sbiterr       => open,
        dbiterr       => open
        );


--    i_bs_id_fifo : glb_srl_fifo 
--        generic map (
--          WIDTH => 7,
--          DEPTH => 4,
--          HAS_UVPROT => true,
--          HAS_IFX    => false,
--          AFULL_THRESH1 => 0,
--          AFULL_THRESH0 => 0, 
--          AEMPTY_THRESH0 => 0,
--          AEMPTY_THRESH1 => 0,
--          HAS_HIERARCHY  => false
--         
--         )
--        port map (
--          aclk   => cc_clk,
--          areset => cc_reset_ah,
--        
--          --Write interface
--          wr_enable => fifo_write,
--          wr_data   => cc_s_axis_id_tuser,
--        
--          --Read interface
--          rd_enable => fifo_read,
--          rd_avail  => cc_id_avail,
--          rd_valid  => open,
--          rd_data   => cc_id_data,
--
--          --FIFO status
--          full       => open,
--          not_full   => cc_s_axis_id_tready,
--          empty      => open,
--          not_empty  => open,
--          afull      => open,
--          not_afull  => open,
--          aempty     => open,
--          not_aempty => open,
--          add        => open
--          );
    end block;



  icap_dalign                    <= icap_i(6);
  icap_cfgerr                    <= not icap_i(7);
  can_exit_ST_WAIT_FOR_ICAP_DONE <= not icap_dalign;


  abort_desync_sequence          <= '1' when lost_error_seen_cmb = '1' or cfg_error_seen_cmb = '1' else '0';


  -- This didn't do what I needed it to do so I'm removing it and
  -- just passing data through directly.  I'll let the user worry about
  -- formatting it correctly
  icap_o      <= reverse_for_icap(icap_o_preswap);    
  icap_rdwrb  <= '0';  -- Write = 0

 
  process (cp_clk)
  begin
    if rising_edge(cp_clk) then
      if cp_reset_ah = '1' then
        cp_fsm_cs <= ST_POR;
      else
        cp_fsm_cs <= cp_fsm_ns;
      end if;
    end if;
  end process;
  
  process (cp_fsm_cs, 
           cp_reset_ah, 
           cp_bs_avail, 
           icap_req_i, 
           icap_gnt, 
           icap_rel, 
           icap_avail, 
           cp_bs_tlast, 
           cp_fetch_error, 
           desync_needed,
           desync_needed_cmb,
           can_exit_ST_WAIT_FOR_ICAP_DONE,
           abort_desync_sequence
           )
  begin
    cp_fsm_ns  <= cp_fsm_cs ;  -- Avoid an inferred latch
    case cp_fsm_cs is
      when ST_POR =>
        if cp_reset_ah = '1' then
          cp_fsm_ns <= ST_POR; 
        else
          cp_fsm_ns <= ST_WAIT_FOR_BS;
        end if;  
        
      when ST_WAIT_FOR_BS =>
        -- Only start the bitstream if there's no FETCH ERROR.
        --  If there is, just wait here and the BS fifo will get flushed
        if cp_bs_avail = '1' and cp_fetch_error = '0' and (icap_gnt = '0' or icap_req_i = '0' or icap_avail = '0') then
          -- There's bitstream data.  However, we don't have the ICAP 
          cp_fsm_ns    <= ST_ICAP_REQ;

        elsif cp_bs_avail = '1' and cp_fetch_error = '0' and icap_gnt = '1' and icap_req_i = '1' and icap_avail = '1' then
          -- We already have the ICAP, so go straight to transferring the bitstream.
          --
          cp_fsm_ns    <= ST_FETCH_BS;

        -- We have a fetch error on the first word.  Go to ST_FETCH_BS to drain the FIFO
        elsif cp_bs_avail = '1' and cp_fetch_error = '1' and cp_bs_tlast = '0' then
          cp_fsm_ns    <= ST_FETCH_BS;
        elsif cp_bs_avail = '1' and cp_fetch_error = '1' and cp_bs_tlast = '1' then
          cp_fsm_ns    <= ST_WAIT_FOR_ICAP_DONE;
        end if;

        --elsif cp_bs_avail = '1' and cp_fetch_error = '1' then
        --  cp_fsm_ns    <= ST_FETCH_BS;
        --end if;

      when ST_ICAP_REQ =>
        -- icap_req_i is included to make sure I've actually started requesting before I proceed.
        -- It's possible that I enter this state because I've been asked to release the ICAP, 
        -- but gnt is still high because I've only just started to release req.
        --if icap_gnt = '1' and icap_req_i = '1' then 
        if icap_gnt = '1' and icap_req_i = '1' and icap_avail = '1' then 
          cp_fsm_ns    <= ST_FETCH_BS;
        else
          cp_fsm_ns    <= ST_ICAP_REQ ;
        end if; 

      when ST_FETCH_BS =>
        if cp_bs_tlast = '1' AND cp_bs_avail = '1' then

          -- Send a desync on a fetch error, but not on any other error type.  CFG and LOST errors
          -- self desynchronise
          --
          if desync_needed = '1' or desync_needed_cmb = '1' then
            cp_fsm_ns    <= ST_SEND_DESYNC_0;
          else
            -- I will go to this state if I had a fetch error on the very first word.  It's not necessary because
            -- I wouldn't have started a transfer to the ICAP. DALIGN should be 0 so it will just work, and just
            -- wastes one clock cycle in an error condition.  It's not worth spending resources avoiding this
            -- state just now
            --
            -- If this does get fixed, cp_done generation will need to change 

            cp_fsm_ns    <= ST_WAIT_FOR_ICAP_DONE;
          end if;
        end if;

      when ST_WAIT_FOR_ICAP_DONE =>
        -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        -- If we don't have latency on the arbiter signals
        -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        if can_exit_ST_WAIT_FOR_ICAP_DONE = '1' then
          -- If we have a fetch error on the first word then just go to ST_WAIT_FOR_BS
          --
          if cp_bs_avail = '1' and cp_fetch_error = '0' then
            if icap_gnt = '0' or icap_rel = '1' or icap_req_i = '0' or icap_avail = '0' then
              -- There's bitstream data.  However, we either don't have the ICAP, 
              -- or we're being asked to release it.
              cp_fsm_ns    <= ST_ICAP_REQ;
            elsif icap_gnt = '1' and icap_rel = '0' and icap_req_i = '1' and icap_avail = '1' then
              -- We already have the ICAP, so go straight to transferring the bitstream.

              cp_fsm_ns    <= ST_FETCH_BS;
            end if;
           -- elsif cp_bs_avail = '1' and cp_fetch_error = '1' then
            elsif cp_bs_avail = '1' and cp_fetch_error = '1' and cp_bs_tlast = '0' then
              cp_fsm_ns    <= ST_FETCH_BS;
             -- With decompression I can get a single word bitstream.  It's an error condition
             -- but I'd like to handle it without falling over.  If I get a fetch error and tlast
             -- then go to ST_WAIT_FOR_BS and take my time processing it.  If I rush straight to ST_FETCH_BS
             -- then I can get cp_done merging between the two bitstreams
           elsif cp_bs_avail = '1' and cp_fetch_error = '1' and cp_bs_tlast = '1' then
             cp_fsm_ns    <= ST_WAIT_FOR_BS;
          else 
            cp_fsm_ns <= ST_WAIT_FOR_BS;
          end if;
        end if;


         when ST_SEND_DESYNC_0 =>
        if abort_desync_sequence = '0' then
          cp_fsm_ns    <= ST_SEND_DESYNC_1;
        else
          cp_fsm_ns    <= ST_WAIT_FOR_ICAP_DONE; --ST_WAIT_FOR_BS;
        end if;

      when ST_SEND_DESYNC_1 => 
        if abort_desync_sequence = '0' then
          cp_fsm_ns    <= ST_SEND_DESYNC_2;
        else
          cp_fsm_ns    <= ST_WAIT_FOR_ICAP_DONE; --ST_WAIT_FOR_BS;
        end if;

      when ST_SEND_DESYNC_2 => 
        if abort_desync_sequence = '0' then
          cp_fsm_ns    <= ST_SEND_DESYNC_3;
        else
          cp_fsm_ns    <= ST_WAIT_FOR_ICAP_DONE; --ST_WAIT_FOR_BS;
        end if;
       
      when ST_SEND_DESYNC_3 => 
          cp_fsm_ns    <= ST_WAIT_FOR_ICAP_DONE; --ST_WAIT_FOR_BS;

      -- coverage off
      when others =>
        cp_fsm_ns <= ST_POR;
      -- coverage on

    end case;
  end process;
  
  process (cp_clk)
  begin
    if rising_edge(cp_clk) then
      if cp_reset_ah = '1' then
          lost_error_seen       <= '0';
          fetch_error_seen      <= '0';
          cfg_error_seen        <= '0';
          legacy_cfg_error      <= '0';
          cfg_error_seen_cmb_d1 <= '0';
          fetch_error_seen_on_first_word <= '0';

      else

        -- FETCH_ERROR
        --
        -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        -- Set the flag to 1 when a fetch error is seen on a clock cycle.
        -- Keep it set until we fetch the last word of the BS from the FIFO
        -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        if cp_bs_tlast = '1' AND cp_bs_avail = '1' and cp_bs_read = '1' then

          fetch_error_seen <= '0';
           
        elsif  fetch_error_seen_cmb = '1' then
          fetch_error_seen <= fetch_error_seen_cmb;
        end if;


        if cp_bs_tlast = '1' AND cp_bs_avail = '1' and cp_bs_read = '1' then
          fetch_error_seen_on_first_word <= '0';
        elsif  fetch_error_seen_on_first_word_cmb = '1' then
          fetch_error_seen_on_first_word <= '1';
        end if;




        -- LOST ERROR
        --
        lost_error_seen_cmb_d1 <= lost_error_seen_cmb;

        if (cp_fsm_ns /= ST_FETCH_BS and cp_fsm_ns /= ST_WAIT_FOR_ICAP_DONE)
          -- Clear the error if it happens at the end of a bitstream.  This is needed if there's
          -- a new BS waiting and I go straight to loading it

          -- This needs to wait on GNT as well now.  It has to stay asserted until
           or (cp_done = '1'  ) then

          lost_error_seen  <= '0';
        elsif lost_error_seen_cmb = '1' then 
          lost_error_seen <= '1';
        end if;
            

        -- CFG ERROR
        --

        cfg_error_seen_cmb_d1 <= cfg_error_seen_cmb;

        if cp_fsm_cs /= ST_FETCH_BS and cp_fsm_ns = ST_FETCH_BS then
          legacy_cfg_error <= icap_cfgerr;
        else 
          if icap_cfgerr = '0' then
            legacy_cfg_error <= '0';
          end if;
        end if;

        if (cp_fsm_ns /= ST_FETCH_BS and cp_fsm_ns /= ST_WAIT_FOR_ICAP_DONE) or
          -- Clear the error if it happens at the end of a bitstream.  This is needed if there's
          -- a new BS waiting and I go straight to loading it

          -- This needs to wait on GNT as well now
           (cp_done = '1' )

        then
          cfg_error_seen   <= '0';
        elsif cfg_error_seen_cmb = '1' then 
          cfg_error_seen <= '1';
        end if;
      end if;
    end if;
  end process;


    lost_error_seen_cmb <= '1' when
                             ((cp_fsm_cs = ST_FETCH_BS or
                              cp_fsm_cs = ST_WAIT_FOR_ICAP_DONE or
                              cp_fsm_cs = ST_SEND_DESYNC_0 or
                              cp_fsm_cs = ST_SEND_DESYNC_1   or
                              cp_fsm_cs = ST_SEND_DESYNC_2   or
                              cp_fsm_cs = ST_SEND_DESYNC_3) and icap_avail = '0') 

                             else '0';                        


  -- A CFG error has occurred if icap_cfgerr is asserted when the ICAP is synched, but not if it was asserted
  -- at the start.  If it was, that's an error that hasn't been cleared yet so ignore it
  --
  cfg_error_seen_cmb <= '1' when icap_cfgerr = '1' and icap_dalign = '1' and legacy_cfg_error = '0' else
                            '0';

  fetch_error_seen_cmb <= '1' when
                            (cp_bs_avail = '1' and cp_bs_read = '1' and cp_fetch_error = '1' ) or
                            fetch_error_seen = '1' else
                            '0';


  -- An error in decompressing the bitstream can result in a single word bitstream with fetch error and tlast set.
  -- This means I can go straight from ST_WAIT_FOR_BS to ST_WAIT_FOR_ICAP_DONE.  The problem is that I don't
  -- read the FIFO until the ST_WAIT_FOR_ICAP_DONE so at the end of that clock cycle, cp_bs_avail is still set, 
  -- so I go to ST_FETCH_BS and start fetching a bitstream that doesn't exist.
  -- To get round this, I have to read the FIFO when I'm still in ST_WAIT_FOR_BS
  -- TODO: I might be able to reduce latency by always reading on the transition from ST_WAIT_FOR_BS.

  cp_bs_read <= '1' when cp_fsm_ns = ST_FETCH_BS or cp_fsm_cs = ST_FETCH_BS or (cp_fsm_cs = ST_WAIT_FOR_BS and cp_fetch_error = '1' and cp_bs_tlast = '1')
                   else '0';  


  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  -- desync_needed
  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --
  -- This flag is used to decide if the desync sequence is needed after the BS is fetched.
  -- It is set to 1 if a fetch error is seen on any word *apart* from the first word.
  -- If we see a fetch error on the first word then we never send anything to the ICAP so
  -- there is no need to desynchronise it

  --desync_needed_cmb <= '1' when cp_fsm_cs = ST_FETCH_BS and cp_bs_avail = '1' and cp_fetch_error = '1' and
  --                     cfg_error_seen = '0'              and
  --                     lost_error_seen = '0'             and
  --                     cfg_error_seen_cmb = '0'          and
  --                     lost_error_seen_cmb = '0'         
  --                     else '0';

  desync_needed_cmb <= '1' when cp_fsm_cs = ST_FETCH_BS and cp_bs_avail = '1' and cp_fetch_error = '1' and
                       cfg_error_seen = '0'              and
                       lost_error_seen = '0'             and
                       cfg_error_seen_cmb = '0'          and
                       lost_error_seen_cmb = '0'         and
                       fetch_error_seen_on_first_word_cmb = '0' and
                       fetch_error_seen_on_first_word = '0'
                       else '0';



  process (cp_clk)
    begin
      if rising_edge(cp_clk) then
   
        if cp_reset_ah =  '1' then
          desync_needed  <= '0';
        else
          if desync_needed_cmb = '1' then
            desync_needed  <= '1';
          elsif cp_fsm_cs = ST_SEND_DESYNC_1  or
            cfg_error_seen = '1'              or
            lost_error_seen = '1'             or
            cfg_error_seen_cmb = '1'          or
            lost_error_seen_cmb = '1'         then
            
            desync_needed  <= '0';
          end if;
        end if;
      end if;
    end process;


  -- tx_in_progress_cmb is asserted when I need to read data from the BS FIFO and transfer data to the ICAP.  
  -- Note that I can read from the BS FIFO and disgard when I am draining the data path after an error.
  --

  tx_in_progress_cmb <= '1' when 

     -- 1 when the transfer is proceeding without errors.  Not that cfg_error_seen_cmb is not held by this code, so I need
     -- to include cfg_error_seen as well
     --
     ((cp_fsm_ns = ST_FETCH_BS or cp_fsm_cs = ST_FETCH_BS) and cfg_error_seen_cmb = '0' and cfg_error_seen = '0' and fetch_error_seen_cmb = '0'
      and lost_error_seen_cmb = '0' and lost_error_seen = '0')

     or 

     -- 1 when I move straight from ST_WAIT_FOR_ICAP_DONE to ST_FETCH_BS as this represents a new transfer that is starting.  The various error flags
     -- may not be fully cleared at this stage, so ignore them on this transition
     --
     -- However, cp_fetch_error will be valid and if it's 1, the first word of the transfer has an error.  We go to ST_FETCH_BS to 
     -- drain the FIFO, but we don't want to transmit
     --
     (cp_fsm_cs = ST_WAIT_FOR_ICAP_DONE and cp_fsm_ns = ST_FETCH_BS and cp_fetch_error = '0')      
                      
     else '0';


    fetch_error_seen_on_first_word_cmb <= '1' when (cp_fsm_cs = ST_WAIT_FOR_BS or cp_fsm_cs = ST_WAIT_FOR_ICAP_DONE) and cp_fetch_error = '1' and cp_bs_avail = '1'
      else '0';
        
 
  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  -- cp_done
  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  cp_done    <= '1' when

                -- Transmission complete and ICAP completes
                --
                (cp_fsm_cs = ST_WAIT_FOR_ICAP_DONE and can_exit_ST_WAIT_FOR_ICAP_DONE = '1')


                else '0';



  -- Assert a single cycle error flag when a CFG or a lost error is seen at the end of a transfer.
  --
  cp_error <= '1' when cp_done = '1' and (cp_lost_error = '1' or cfg_error_seen = '1')
              else '0';

  cp_lost_error <= '1' when cp_done = '1' and (lost_error_seen = '1')
              else '0';

 


  desync_in_progress <= '1' when cp_fsm_ns = ST_SEND_DESYNC_0 or cp_fsm_ns = ST_SEND_DESYNC_1 or
                          cp_fsm_ns = ST_SEND_DESYNC_2 or cp_fsm_ns = ST_SEND_DESYNC_3
                          else '0';
  
  
  -- Drive outputs from FSM
  process (cp_clk)
    begin
      if rising_edge(cp_clk) then
        -- The icap_csib signal is a registered version of cp_bs_avail AND the next state, so I need to register
        -- the FIFO data as well to keep it in sync.  I'd rather not introduce this latency and burn the resources,
        -- but all module outputs should be registered, so there we go.  I don't need to reset the data though
        -- 
    
        if cp_reset_ah =  '1' then
          icap_csib_i  <= '1';
        else
          if (tx_in_progress_cmb = '1' AND cp_bs_avail = '1') or desync_in_progress = '1' then
            icap_csib_i  <= '0';
          else
            icap_csib_i  <= '1';
          end if;
        end if;
      end if;
    end process;
    icap_csib <= icap_csib_i;
    

    p_icap_req : process (cp_clk)
    begin
      if rising_edge(cp_clk) then
        if cp_reset_ah =  '1' then
          icap_req_i  <= '0';
        else
          if
            -- Set to 1 when we have a bitstream to transfer
            (cp_fsm_cs = ST_WAIT_FOR_BS and cp_bs_avail = '1' and cp_fetch_error = '0') or

            -- I'm in ST_WAIT_FOR_ICAP_DONE and REL is asserted so I go to ST_ICAP_REQ.
            -- However, I've dropped icap_req so I need to reapply
            (cp_fsm_cs = ST_ICAP_REQ) then

            icap_req_i  <= '1';
          elsif 
            -- Protocol 1: I don't have to wait for GNT to be 0 before leaving ST_WAIT_FOR_ICAP_DONE so I
            --             don't always have to deassert icap_req
            
            -- Leaving ST_WAIT_FOR_ICAP_DONE and we have no new bitstream
            (cp_fsm_cs = ST_WAIT_FOR_ICAP_DONE and icap_dalign = '0' and cp_bs_avail = '0') or

            -- Leaving ST_WAIT_FOR_ICAP_DONE and we have a new bitstream but it has an error on the first word.
            -- We won't send that to the ICAP, so no need to request access
            (cp_fsm_cs = ST_WAIT_FOR_ICAP_DONE and icap_dalign = '0' and cp_bs_avail = '1' and cp_fetch_error = '1') or

            -- Leaving ST_WAIT_FOR_ICAP_DONE and we are being asked to release the ICAP.  We do that regardless of what else is going on

            (cp_fsm_cs = ST_WAIT_FOR_ICAP_DONE and icap_dalign = '0' and icap_rel = '1' ) then
            icap_req_i  <= '0';
          end if;


        end if;
      end if;
    end process p_icap_req;


    icap_req <= icap_req_i;

    
    process (cp_clk)
    begin
      if rising_edge(cp_clk) then
        if tx_in_progress_cmb = '1' then 
          icap_o_preswap <= cp_bs_data;
        elsif desync_in_progress = '1' then

          -- This has an "all_false" branch for coverage that I want ignored - there's no way I can hit it
          -- as we can only enter this statement if we are in one of these states.
          --          
          -- coverage off -item b 1 -allfalse 
          if    cp_fsm_ns = ST_SEND_DESYNC_0 then
            icap_o_preswap <= X"30008001";  -- Type 1 write 1 word to CMD
          elsif cp_fsm_ns = ST_SEND_DESYNC_1 then
            icap_o_preswap <= X"0000000D";  -- Desync command
          elsif cp_fsm_ns = ST_SEND_DESYNC_2 then
            icap_o_preswap <= X"20000000";  -- NOOP word
          elsif cp_fsm_ns = ST_SEND_DESYNC_3 then
            icap_o_preswap <= X"20000000";  -- NOOP word
          end if;
        end if;
      end if;
    end process;





end architecture synth;


