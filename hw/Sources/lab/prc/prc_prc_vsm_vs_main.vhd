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
 
  
  
 
 
 
-- -----------------------------------------------------------------------------------------
--
-- Virtual Socket Manager for configuration Controller
--
-- Name : vs_main 
-- ID   : 0 
-- -----------------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library prc_v1_2_1;
use prc_v1_2_1.prc_v1_2_1_pkg.all;
library xil_defaultlib;
use xil_defaultlib.prc_prc_table_pkg.all;  

entity prc_prc_vsm_vs_main is
  generic (
    C_XDEVICEFAMILY                : string  := "not set";
    C_VS_ID_WIDTH                  : natural := 1;
    C_RM_ID_WIDTH                  : natural := 1;
    C_BS_ID_WIDTH                  : natural := 1;
    
    C_VS_ID                        : natural := 0;  -- The ID of this VS.  Must fit into C_VS_ID_WIDTH bits
    C_RM_REQUIRES_UNLOAD_BITSTREAM : natural := 1;  -- 1 if it needs to be unloaded (UltraScale), 0 if it doesn't (FUJI)

    -- Not used
    C_NUM_RMS                      : natural := 2;  -- The number of RMs in this virtual socket

    C_NUM_RMS_ALLOCATED            : natural := 4;  -- The number of RMs allocated for this virtual socket.  This is >=
                                                    -- C_NUM_RMs and should be a power of 2.  
    C_NUM_TRIGGERS_ALLOCATED       : natural := 16;
    C_NUM_HW_TRIGGERS              : natural := 16;

    C_NUM_BITSTREAMS_ALLOCATED     : natural := 4;   -- The number of entries in the bitstream table for VS
    
    C_RESET_ACTIVE_LEVEL           : std_logic := '0';   -- Reset can be active high or low, so compare against this value.
    C_AXI_REG_ADDRESS_WIDTH        : natural := 32;
    C_AXI_REG_DATA_WIDTH           : natural := 32;
    C_TABLE_SELECT_MSB             : natural := 8;
    C_TABLE_SELECT_LSB             : natural := 7;
    C_REG_SELECT_MSB               : natural := 6;
    C_REG_SELECT_LSB               : natural := 2;
    C_HAS_AXI_LITE                 : natural := 0;
    C_HAS_AXIS_STATUS              : natural := 0;
    C_HAS_AXIS_CONTROL             : natural := 0;
    C_SHUTDOWN_ON_ERROR            : natural := 1;
    C_START_IN_SHUTDOWN            : natural := 0;

    -- These generic are used when there's an RM already loaded into a VS
    -- in the initial configuration bitstream
    --
    C_HAS_DEFAULT_RM               : std_logic := '0';
    C_SKIP_RM_STARTUP_AFTER_RESET  : std_logic := '0';
    C_DEFAULT_RM_ID                : natural := 0;
    C_DEFAULT_SHUTDOWN_REQUIRED    : std_logic_vector(PC_RM_SHUTDOWN_REQUIRED_WIDTH-1 downto 0) := PC_RM_NO_SHUTDOWN_REQUIRED;
    C_DEFAULT_RESET_REQUIRED       : std_logic_vector(PC_RM_RESET_REQUIRED_WIDTH   -1 downto 0) := PC_RM_NO_RESET_REQUIRED;
    C_DEFAULT_RESET_DURATION       : std_logic_vector(PC_RM_RESET_DURATION_WIDTH   -1 downto 0) := (others => '0');
    C_DEFAULT_SW_STARTUP_REQUIRED  : std_logic_vector(PC_RM_STARTUP_REQUIRED_WIDTH -1 downto 0) := PC_RM_STARTUP_NOT_REQUIRED
        
    );
  port (

    -- System interfaces
    clk                  : in std_logic := '1';     -- Clock
    reset                : in std_logic := '1';     -- Synchronous reset. 

    hw_triggers          : in  std_logic_vector(C_NUM_HW_TRIGGERS-1 downto 0) := (others => '0');
    hw_triggers_pending  : out std_logic_vector(C_NUM_HW_TRIGGERS-1 downto 0) := (others => '0');

    -- Interface to RMs
    rm_shutdown_req      : out std_logic := '0';
    rm_shutdown_ack      : in  std_logic;
    rm_decouple          : out std_logic := '0';

    -- Change from 2015.4 released verison to try and get RM_RESET behaving nicely after PoR.  Can still fail if programmed in the netlist
    -- Invert the active level bit to make sure reset isn't active atstartup
    rm_reset             : out std_logic := not C_DEFAULT_RESET_REQUIRED(0);  
    --rm_reset             : out std_logic := '0';  

    -- Interface to Software
    sw_shutdown_req      : out std_logic := '0';   
    sw_startup_req       : out std_logic := '0';   
    event_error          : out std_logic := '0';   

    -- Interface to FETCH block
    fetch_req            : out std_logic := '0';
    fetch_gnt            : in  std_logic;
    fetch_addr           : out std_logic_vector(PC_AXI_ADDR_WIDTH      -1 downto 0) := (others => '0');
    fetch_size           : out std_logic_vector(PC_MAX_BS_SIZE_WIDTH   -1 downto 0) := (others => '0');
    fetch_vs_id_out      : out std_logic_vector(C_VS_ID_WIDTH     -1 downto 0) := (others => '0');
    fetch_rm_id_out      : out std_logic_vector(C_RM_ID_WIDTH     -1 downto 0) := (others => '0');
    fetch_bs_id_out      : out std_logic_vector(C_BS_ID_WIDTH     -1 downto 0) := (others => '0');

    fetch_error          : in std_logic := '0';
    bad_config_error     : in std_logic := '0';
    decompress_bad_size_error   : in std_logic := '0';
    decompress_bad_format_error : in std_logic := '0';


    -- Interface to AXI Lite interface
    reg_addr             : in  std_logic_vector(C_AXI_REG_ADDRESS_WIDTH-1 downto 0);
    reg_rnw              : in  std_logic;
    reg_tvalid           : in  std_logic;
    reg_wdata            : in  std_logic_vector(C_AXI_REG_DATA_WIDTH-1 downto 0);
    reg_rdata            : out std_logic_vector(C_AXI_REG_DATA_WIDTH-1 downto 0);
    reg_tready           : out std_logic := '0';
    reg_error            : out std_logic;

    -- AXI Status Channel
    m_axis_status_tvalid : out std_logic                                         := '1';
    m_axis_status_tdata  : out std_logic_vector(PC_REGISTER_WIDTH-1 downto 0)    := (others => '0');

    -- AXI Control Channel
    s_axis_ctrl_tvalid   : in std_logic                                          := '1';
    s_axis_ctrl_tready   : out std_logic                                         := '1';
    s_axis_ctrl_tdata    : in std_logic_vector(PC_REGISTER_WIDTH-1 downto 0)     := (others => '0');


    -- Interface to Debug Port
    debug_port          : out std_logic_vector(PC_VSM_DEBUG_PORT_WIDTH-1 downto 0) := (others => '0');

    -- Interface to configuration port
    cp_done              : in std_logic                                          := '0';
    cp_error             : in std_logic                                          := '0';                                                     
    cp_lost_error        : in std_logic                                          := '0';                                                     
    cp_rm_id_in          : in std_logic_vector(C_RM_ID_WIDTH-1 downto 0)    := (others => '0');  -- TODO: Not used yet
    cp_bs_id_in          : in std_logic_vector(C_BS_ID_WIDTH-1 downto 0)    := (others => '0')   -- TODO: Not used yet
    );
end prc_prc_vsm_vs_main;


architecture synth of prc_prc_vsm_vs_main is
  attribute ram_style                              : string;
  attribute dont_touch : string;

  attribute DowngradeIPIdentifiedWarnings          : string;
  attribute DowngradeIPIdentifiedWarnings of synth : architecture is "yes";

  -- -----------------------------------------------------------------------------------------
  -- Local Constants
  -- -----------------------------------------------------------------------------------------
   
  -- I have C_NUM_TRIGGERS_ALLOCATED which represents the number of entries in the trigger table.
  -- That can be accessed via the hw_trigger vector (C_NUM_HW_TRIGGERS bits) or the SW trigger 
  -- register.  Work out how many bits are required to access the highest trigger allocated
  --      
  -- However, I may have a smaller number of HW triggers which are handled by the trigger manager.
  -- That might require a smaller width.  As it generated a lookup table, then it's important 
  -- to minimise this width.  For example, I could have 1024 triggers, of which only 16 are accessible 
  -- from the HW triggers.
  constant C_TRIGGER_ID_WIDTH    : natural := 5;

  constant C_HW_TRIGGER_ID_WIDTH : natural := natural(ceil(ieee.math_real.log2(real(C_NUM_HW_TRIGGERS))));  

  constant C_TRIGGER_ADDR_WIDTH : natural := natural(ceil(ieee.math_real.log2(real(C_NUM_TRIGGERS_ALLOCATED))));
  constant C_RM_ADDR_WIDTH      : natural := natural(ceil(ieee.math_real.log2(real(C_NUM_RMS_ALLOCATED))));
  constant C_BS_ADDR_WIDTH      : natural := natural(ceil(ieee.math_real.log2(real(C_NUM_BITSTREAMS_ALLOCATED))));

  constant C_CAN_ENTER_SHUTDOWN_ON_ERROR: boolean := C_SHUTDOWN_ON_ERROR > 0;
  constant C_REQUIRES_CLEAR_BITSTREAM   : natural := 0;

  -- Constants to control the latency of table lookups
  -- Don't change these numbers.  The code will not work if any become 0.
  -- I ultimately want to be able to turn off some pipelining, but it's not implemented yet
  --
  constant TRIGGER_TABLE_REGISTER_ADDR: integer := 1;
  constant TRIGGER_TABLE_REGISTER_DATA: integer := 1+0;   -- Always at least 1 because I always register the data from the tables

  constant RM_INFO_TABLE_REGISTER_ADDR: integer := 1;
  constant RM_INFO_TABLE_REGISTER_DATA: integer := 1+0;   -- Always at least 1 because I always register the data from the tables

  constant BS_INFO_TABLE_REGISTER_ADDR: integer := 1;
  constant BS_INFO_TABLE_REGISTER_DATA: integer := 1+0;   -- Always at least 1 because I always register the data from the tables

  -- -----------------------------------------------------------------------------------------
  -- Local Constants :END
  -- -----------------------------------------------------------------------------------------

  -- -----------------------------------------------------------------------------------------
  -- Misc Signals
  -- -----------------------------------------------------------------------------------------
  signal reset_ah : std_logic;  -- Active high reset for delay lines

  -- internal version of rm_decouple
  -- Default to 1 if empty, 0 if full
  signal rm_decouple_i  : std_logic := conv_bool_to_sl(C_HAS_DEFAULT_RM = '0') ;

  -- Change from 2015.4 released verison to try and get RM_RESET behaving nicely after PoR.  Can still fail if programmed in the netlist
  -- Invert the active level bit to make sure reset isn't active atstartup
  signal rm_reset_i  : std_logic := not C_DEFAULT_RESET_REQUIRED(0); 

  -- internal version of sw_startup_req
  signal sw_startup_req_i  : std_logic := '0';   

  -- internal version of rm_shutdown_req
  signal rm_shutdown_req_i  : std_logic := '0';   

  -- internal version of sw_shutdown_req
  signal sw_shutdown_req_i  : std_logic := '0';   


  -- -----------------------------------------------------------------------------------------
  -- Misc Signals: End
  -- -----------------------------------------------------------------------------------------
  
  -- -----------------------------------------------------------------------------------------
  -- FSM Signals & types
  -- -----------------------------------------------------------------------------------------
  type   state_t is (ST_POR,              
                     ST_WAIT_FOR_TRIGGER, 
                     ST_SHUTDOWN_SW,         
                     ST_SHUTDOWN_HW,
                     ST_START_FETCH_RM_INFO,     
                     ST_FETCH_RM_INFO,     
                     --ST_LOAD_BITSTREAMS,     
                     ST_WAIT_FOR_DONE,        
                     ST_STARTUP_SW,          
                     ST_PRE_RESET_RM,            
                     ST_RESET_RM,            
                     ST_SHUTDOWN,
                     ST_START_FETCH_RM_INFO_AFTER_SHUTDOWN,
                     ST_FETCH_RM_INFO_AFTER_SHUTDOWN,

                     -- It's not obvious why we have to fetch RM Infor after a reset because these registers are not cleared on 
                     -- reset.  It's because the initial values are baked into the flops for use after the initial reset.  However, 
                     -- the PRC can be programmed in the routed netlist by changing the lutram values.  This *won't* change the flop
                     -- values, so we need to fetch the info from the lutrams into the flops

                     ST_START_FETCH_RM_INFO_AFTER_RESET,
                     ST_FETCH_RM_INFO_AFTER_RESET  
                     );


  signal current_state : state_t := ST_POR;
  signal next_state    : state_t := ST_POR;

  -- We recommend only doing a reset when the VSM is idle, so I'm not testing resets when it isn't idle
  --
  -- coverage fsm_off -ftrans current_state ST_WAIT_FOR_TRIGGER->ST_POR
  -- coverage fsm_off -ftrans current_state ST_PRE_RESET_RM->ST_POR
  -- coverage fsm_off -ftrans current_state ST_STARTUP_SW->ST_POR
  -- coverage fsm_off -ftrans current_state ST_START_FETCH_RM_INFO->ST_POR
  -- coverage fsm_off -ftrans current_state ST_SHUTDOWN_HW->ST_POR
  -- coverage fsm_off -ftrans current_state ST_SHUTDOWN_SW->ST_POR
  -- coverage fsm_off -ftrans current_state ST_FETCH_RM_INFO->ST_POR
  -- c overage fsm_off -ftrans current_state ST_LOAD_BITSTREAMS->ST_POR
  -- coverage fsm_off -ftrans current_state ST_WAIT_FOR_DONE->ST_POR
  -- coverage fsm_off -ftrans current_state ST_RESET_RM->ST_POR
  -- coverage fsm_off -ftrans current_state ST_START_FETCH_RM_INFO_AFTER_SHUTDOWN->ST_POR
  -- coverage fsm_off -ftrans current_state ST_FETCH_RM_INFO_AFTER_SHUTDOWN->ST_POR

  -- These are impossible to hit as there are no self transitions for these states
  -- coverage fsm_off -ftrans current_state ST_PRE_RESET_RM->ST_PRE_RESET_RM
  -- coverage fsm_off -ftrans current_state ST_START_FETCH_RM_INFO->ST_START_FETCH_RM_INFO
  -- coverage fsm_off -ftrans current_state ST_START_FETCH_RM_INFO_AFTER_SHUTDOWN->ST_START_FETCH_RM_INFO_AFTER_SHUTDOWN



  -- These assert when particular states can exit.  Doing it this way means I can use 
  --   current_state = ST_FOO and can_exit_ST_FOO = '1'
  -- instead of 
  --   current_state = ST_FOO and next_state /= ST_FOO
  --
  -- Using next_state anywhere means you won't hit any sensible speed
  --
  signal can_exit_ST_POR                          : std_logic := '0';      
  signal can_exit_ST_FETCH_RM_INFO                : std_logic := '0';      
  signal can_exit_ST_FETCH_RM_INFO_AFTER_SHUTDOWN : std_logic := '0';      
  signal can_exit_ST_FETCH_RM_INFO_AFTER_RESET    : std_logic := '0';      
  signal can_exit_ST_RESET_RM                     : std_logic := '0';      
  signal can_exit_ST_WAIT_FOR_DONE                : std_logic := '0';      
  signal can_exit_ST_STARTUP_SW                   : std_logic := '0';
  signal can_exit_ST_SHUTDOWN_SW                  : std_logic := '0';


  -- -----------------------------------------------------------------------------------------
  -- FSM Signals & types :END
  -- -----------------------------------------------------------------------------------------

  -- -----------------------------------------------------------------------------------------
  -- Trigger-to-RM INFO Register Table
  -- -----------------------------------------------------------------------------------------
  --   * This table stores the RM_ID assigned to each trigger.  The trigger_id is the address
  --   * used to access it.
  --   *
  --   *                    +----------------------------+
  --   *           Address  | RM_ID                      |
  --   *                    +----------------------------+
  --   *                 0  | RM_ID mapped to trigger  0 |
  --   *                    +----------------------------+
  --   *                 1  | RM_ID mapped to trigger  1 |
  --   *                    +----------------------------+
  --   *                 2  | RM_ID mapped to trigger  2 |
  --   *                    +----------------------------+
  --   *                 3  | RM_ID mapped to trigger  3 |
  --   *                    +----------------------------+ 

  -- The RM_ID fetched from the Trigger Table
  --
  signal rm_id_from_mem : std_logic_vector(C_RM_ID_WIDTH-1 downto 0);
  signal rm_id_from_mem_del : std_logic_vector(C_RM_ID_WIDTH-1 downto 0);

  type TRIGGER2RM_RAMtype is array (0 to C_NUM_TRIGGERS_ALLOCATED-1) of std_logic_vector(C_RM_ID_WIDTH-1 downto 0);

  -- Function to initialise the Trigger2RM Address LUTRAM
  --
  function initialise_trigger2rm_table ( vs_id     : natural;
                                         rom_depth : natural;
                                         rom_width : natural) return TRIGGER2RM_RAMtype is
    variable output_array : TRIGGER2RM_RAMtype;
  begin
    for trigger_id in 0 to rom_depth-1 loop
      output_array(trigger_id) :=std_logic_vector(to_unsigned(
        get_trigger_to_rm_table_entry (vs_id => vs_id, trigger_id => trigger_id), rom_width));      
    end loop;  
    return output_array;
  end initialise_trigger2rm_table;

  signal trigger2rm_table : TRIGGER2RM_RAMtype := initialise_trigger2rm_table(vs_id     => C_VS_ID,
                                                                              rom_depth => C_NUM_TRIGGERS_ALLOCATED, 
                                                                              rom_width => C_RM_ID_WIDTH);
  attribute  ram_style of trigger2rm_table : signal is "distributed";  --{auto | block | distributed}
  attribute dont_touch of trigger2rm_table : signal is "true";


  -- -----------------------------------------------------------------------------------------
  -- Trigger-to-RM INFO Register Table :END
  -- -----------------------------------------------------------------------------------------
  
  -- -----------------------------------------------------------------------------------------
  -- RM INFO Address Register Table
  -- -----------------------------------------------------------------------------------------
  --
  --   * This table stores the Load and Unload Addresses for each RM.  The rm_id is the address
  --   * used to access the table.
  --   *
  --   * The Load and Unload Addresses are used to address the Bitstream (BS) Info table 
  --   * The Unload Address is only required in UltraScale.
  --   *
  --   *                    +-----------------------------------------+
  --   *           Address  | RM Address Table                        |
  --   *                    +-----------------------------------------+
  --   *                 0  | Unload Address | Load Address for RM  0 |
  --   *                    +-----------------------------------------+
  --   *                 1  | Unload Address | Load Address for RM  1 |
  --   *                    +-----------------------------------------+
  --   *                 2  | Unload Address | Load Address for RM  2 |
  --   *                    +-----------------------------------------+
  --   *                 3  | Unload Address | Load Address for RM  3 |
  --   *                    +-----------------------------------------+

  type RM_ADDRESS_RAMtype is array (0 to C_NUM_RMS_ALLOCATED-1) of std_logic_vector((C_BS_ADDR_WIDTH + (C_BS_ADDR_WIDTH * C_REQUIRES_CLEAR_BITSTREAM))-1 downto 0);


  -- Function to initialise the RM Address LUTRAM
  --
  function initialise_rm_address_table ( vs_id     : natural;
                                         rom_depth : natural;
                                         rom_width : natural) return RM_ADDRESS_RAMtype is
    variable output_array : RM_ADDRESS_RAMtype;
  begin
    for rm_id in 0 to rom_depth-1 loop
      if C_REQUIRES_CLEAR_BITSTREAM = 0 then
        output_array(rm_id) :=std_logic_vector(to_unsigned(
          get_rm_table_load_addr (vs_id => vs_id, rm_id => rm_id), rom_width));      
      else
        output_array(rm_id)((C_BS_ADDR_WIDTH)-1 downto 0) :=std_logic_vector(to_unsigned(
          get_rm_table_load_addr (vs_id => vs_id, rm_id => rm_id), rom_width/2));      
  
        output_array(rm_id)((C_BS_ADDR_WIDTH*2)-1 downto C_BS_ADDR_WIDTH) :=std_logic_vector(to_unsigned(
          get_rm_table_clear_addr (vs_id => vs_id, rm_id => rm_id), rom_width/2));      
      end if;
    end loop;  
    return output_array;
  end initialise_rm_address_table;

  signal rm_address_table : RM_ADDRESS_RAMtype := initialise_rm_address_table(vs_id     => C_VS_ID,
                                                                              rom_depth => C_NUM_RMS_ALLOCATED, 
                                                                              rom_width => C_BS_ADDR_WIDTH + (C_BS_ADDR_WIDTH * C_REQUIRES_CLEAR_BITSTREAM));


  attribute  ram_style of rm_address_table : signal is "distributed";  --{auto | block | distributed}
  attribute dont_touch of rm_address_table : signal is "true";

  -- -----------------------------------------------------------------------------------------
  -- RM INFO Address Register Table :END
  -- -----------------------------------------------------------------------------------------
  
  -- -----------------------------------------------------------------------------------------
  -- RM INFO Control Register Table
  -- -----------------------------------------------------------------------------------------
  --
  --   * This table stores the Control Information for each RM.  The rm_id is the address
  --   * used to access the table.
  --   *
  --   *
  --   *           +---------------------------------------------------------------------------------+
  --   *  Address  | RM Control Table                                                                |
  --   *           +---------------------------------------------------------------------------------+
  --   *        0  | Reset Duration | Reset Required | Startup Required | Shutdown Required for RM 0 |
  --   *           +---------------------------------------------------------------------------------+
  --   *        1  | Reset Duration | Reset Required | Startup Required | Shutdown Required for RM 1 |
  --   *           +---------------------------------------------------------------------------------+
  --   *        2  | Reset Duration | Reset Required | Startup Required | Shutdown Required for RM 2 |
  --   *           +---------------------------------------------------------------------------------+
  --   *        3  | Reset Duration | Reset Required | Startup Required | Shutdown Required for RM 3 |
  --   *           +---------------------------------------------------------------------------------+
  
  type RM_CTRL_REG_RAMtype is array (0 to C_NUM_RMS_ALLOCATED-1) of std_logic_vector(PC_RM_CTRL_REG_WIDTH-1 downto 0);

  -- Data is stored in memory as:
  -- MSB : RESET_DURATION : RESET_REQ : STARTUP_REQ : SHUTDOWN_REQ

  -- Data is placed on the bus as:
  -- MSB : RESET_DURATION : RESET_REQ : STARTUP_REQ : SHUTDOWN_REQ
  -- I'm not putting any padding between the fields as I want a small register with room to grow
  --

  -- Function to pack the control register fields into a register
  --
  function rm_ctrl_reg_pack ( shutdown       : std_logic_vector(PC_RM_SHUTDOWN_REQUIRED_WIDTH -1 downto 0);
                              startup        : std_logic_vector(PC_RM_STARTUP_REQUIRED_WIDTH  -1 downto 0);
                              reset          : std_logic_vector(PC_RM_RESET_REQUIRED_WIDTH    -1 downto 0);
                              reset_duration : std_logic_vector(PC_RM_RESET_DURATION_WIDTH    -1 downto 0);
                              reg_width      : natural) return std_logic_vector is
    variable data : std_logic_vector (reg_width-1 downto 0);
    variable ptr_lo  : natural := 0;
    variable ptr_hi  : natural := 0;
  begin
    ptr_lo := 0     ; ptr_hi := ptr_lo + PC_RM_SHUTDOWN_REQUIRED_WIDTH;  data(ptr_hi-1 downto ptr_lo) := shutdown;
    ptr_lo := ptr_hi; ptr_hi := ptr_lo + PC_RM_STARTUP_REQUIRED_WIDTH ;  data(ptr_hi-1 downto ptr_lo) := startup;
    ptr_lo := ptr_hi; ptr_hi := ptr_lo + PC_RM_RESET_REQUIRED_WIDTH   ;  data(ptr_hi-1 downto ptr_lo) := reset;
    ptr_lo := ptr_hi; ptr_hi := ptr_lo + PC_RM_RESET_DURATION_WIDTH   ;  data(ptr_hi-1 downto ptr_lo) := reset_duration;
    return data;
  end function;


  -- Function to unpack the control register into fields
  --
  procedure rm_ctrl_reg_unpack (signal data           : in  std_logic_vector(PC_RM_CTRL_REG_WIDTH          -1 downto 0);
                                signal shutdown       : out std_logic_vector(PC_RM_SHUTDOWN_REQUIRED_WIDTH -1 downto 0);
                                signal startup        : out std_logic_vector(PC_RM_STARTUP_REQUIRED_WIDTH  -1 downto 0);
                                signal reset          : out std_logic_vector(PC_RM_RESET_REQUIRED_WIDTH    -1 downto 0);
                                signal reset_duration : out std_logic_vector(PC_RM_RESET_DURATION_WIDTH    -1 downto 0)) is
    variable ptr_lo : natural := 0;
    variable ptr_hi : natural := 0;
  begin
    ptr_lo := 0     ; ptr_hi := ptr_lo + PC_RM_SHUTDOWN_REQUIRED_WIDTH; shutdown       <= data(ptr_hi-1 downto ptr_lo);
    ptr_lo := ptr_hi; ptr_hi := ptr_lo + PC_RM_STARTUP_REQUIRED_WIDTH ; startup        <= data(ptr_hi-1 downto ptr_lo);
    ptr_lo := ptr_hi; ptr_hi := ptr_lo + PC_RM_RESET_REQUIRED_WIDTH   ; reset          <= data(ptr_hi-1 downto ptr_lo);
    ptr_lo := ptr_hi; ptr_hi := ptr_lo + PC_RM_RESET_DURATION_WIDTH   ; reset_duration <= data(ptr_hi-1 downto ptr_lo);
  end procedure;


  -- Function to convert the AXI TDATA into the control register
  --
  function rm_ctrl_reg_bus2reg ( bus_value : std_logic_vector(C_AXI_REG_DATA_WIDTH-1 downto 0);
                                 reg_width : natural) return std_logic_vector is

  begin
    return bus_value(reg_width-1 downto 0);
  end function;

  -- Function to convert the control register into AXI TDATA 
  --
  function rm_ctrl_reg_reg2bus ( reg_value : std_logic_vector(PC_RM_CTRL_REG_WIDTH-1 downto 0);
                                 reg_width : natural;
                                 bus_width : natural) return std_logic_vector is

    variable result : std_logic_vector (bus_width-1 downto 0) := (others => '0');
  begin
    result(reg_width-1 downto 0) := reg_value;
    return result;
  end function;

  -- Function to initialise the RM Control Register LUTRAM
  --
  function initialise_rm_ctrl_reg_table (vs_id     : natural;
                                         rom_depth : natural;
                                         rom_width : natural) return RM_CTRL_REG_RAMtype is
    variable output_array : RM_CTRL_REG_RAMtype;

    variable data : std_logic_vector (PC_RM_CTRL_REG_WIDTH-1 downto 0);
    variable ptr_lo  : natural := 0;
    variable ptr_hi  : natural := 0;
  begin
    for rm_id in 0 to rom_depth-1 loop

      data :=  rm_ctrl_reg_pack ( shutdown       => get_rm_table_shutdown_required(vs_id => vs_id, rm_id => rm_id),
                                  startup        => get_rm_table_startup_required (vs_id => vs_id, rm_id => rm_id),
                                  reset          => get_rm_table_reset_required   (vs_id => vs_id, rm_id => rm_id),
                                  reset_duration => get_rm_table_reset_duration   (vs_id => vs_id, rm_id => rm_id),
                                  reg_width      => rom_width);
      output_array(rm_id) := data;
    end loop;  
    return output_array;
  end initialise_rm_ctrl_reg_table;

  signal rm_ctrl_reg_table : RM_CTRL_REG_RAMtype := initialise_rm_ctrl_reg_table(vs_id     => C_VS_ID,
                                                                                 rom_depth => C_NUM_RMS_ALLOCATED, 
                                                                                 rom_width => PC_RM_CTRL_REG_WIDTH);
  attribute ram_style  of rm_ctrl_reg_table : signal is "distributed";  --{auto | block | distributed}
  attribute dont_touch of rm_ctrl_reg_table : signal is "true";
  
  -- -----------------------------------------------------------------------------------------
  -- RM INFO Control Register Table :END
  -- -----------------------------------------------------------------------------------------

  -- -----------------------------------------------------------------------------------------
  -- BS INFO ID Register Table
  -- -----------------------------------------------------------------------------------------
  --
  --   * This table stores the ID Information for each Bitstream.  It is addressed by either 
  --   * load_address or unload_address, depending on the phase of the FSM
  --   *
  --   *           +-------------+
  --   *  Address  | BS ID Table |
  --   *           +-------------+
  --   *        0  | ID of BS 0  |
  --   *           +-------------+
  --   *        1  | ID of BS 1  |
  --   *           +-------------+
  --   *        2  | ID of BS 2  |
  --   *           +-------------+
  --   *        3  | ID of BS 3  |
  --   *           +-------------+
  --   *
  --   *
  type BS_INFO_ID_RAMtype is array (0 to C_NUM_BITSTREAMS_ALLOCATED-1)
    of std_logic_vector(C_BS_ID_WIDTH-1 downto 0);
  
  -- Function to initialise the Bitstream ID Register LUTRAM
  --
  function initialise_bs_id_table ( vs_id     : natural;
                                    rom_depth : natural;
                                    rom_width : natural) return BS_INFO_ID_RAMtype is
    variable output_array : BS_INFO_ID_RAMtype;
  begin
    for address in 0 to rom_depth-1 loop
      output_array(address) := get_bs_table_id (vs_id => vs_id, addr => address)(C_BS_ID_WIDTH-1 downto 0);
    end loop;  
    return output_array;
  end initialise_bs_id_table;
  
  signal bs_id_table : BS_INFO_ID_RAMtype := initialise_bs_id_table(vs_id     => C_VS_ID,
                                                                    rom_depth => C_NUM_BITSTREAMS_ALLOCATED, 
                                                                    rom_width => C_BS_ID_WIDTH);
  attribute ram_style  of bs_id_table : signal is "distributed";  --{auto | block | distributed}
  attribute dont_touch of bs_id_table : signal is "false";

  -- -----------------------------------------------------------------------------------------
  -- BS INFO ID Register Table: END
  -- -----------------------------------------------------------------------------------------


  -- -----------------------------------------------------------------------------------------
  -- BS INFO Address Register Table
  -- -----------------------------------------------------------------------------------------
  --
  --   * This table stores the Address Information for each Bitstream.  It is addressed by either 
  --   * load_address or unload_address, depending on the phase of the FSM
  --   *
  --   *           +------------------------------------------+
  --   *  Address  | BS Address Table                         |
  --   *           +------------------------------------------+
  --   *        0  | Address of BS 0 in configuration library |
  --   *           +------------------------------------------+
  --   *        1  | Address of BS 1 in configuration library |
  --   *           +------------------------------------------+
  --   *        2  | Address of BS 2 in configuration library |
  --   *           +------------------------------------------+
  --   *        3  | Address of BS 3 in configuration library |
  --   *           +------------------------------------------+
  --   *
  --   * Note that the identifiers here (0, 1, 2, 3) are not the BS_ID refered to elsewhere
  --   * in the code.  The BS_ID starts at 0 for each RM, so RM0 will have BS 0 and BS 1, 
  --   * but RM10 will also have BS 0 and BS 1.  BS_ID is relative to the RM.
  --   *

  type BS_INFO_ADDRESS_RAMtype is array (0 to C_NUM_BITSTREAMS_ALLOCATED-1)
    of std_logic_vector(C_AXI_REG_DATA_WIDTH-1 downto 0);

  -- Function to initialise the Bitstream Address Register LUTRAM
  --
  function initialise_bs_address_table ( vs_id     : natural;
                                         rom_depth : natural;
                                         rom_width : natural) return BS_INFO_ADDRESS_RAMtype is
    variable output_array : BS_INFO_ADDRESS_RAMtype;
  begin
    for address in 0 to rom_depth-1 loop
      output_array(address) := get_bs_table_mem_addr (vs_id => vs_id, addr => address);
    end loop;  
    return output_array;
  end initialise_bs_address_table;

  signal bs_address_table : BS_INFO_ADDRESS_RAMtype := initialise_bs_address_table(vs_id     => C_VS_ID,
                                                                                  rom_depth => C_NUM_BITSTREAMS_ALLOCATED, 
                                                                                  rom_width => C_AXI_REG_DATA_WIDTH);
  attribute ram_style of bs_address_table : signal is "distributed";  --{auto | block | distributed}
  attribute dont_touch of bs_address_table : signal is "true";
  
  -- -----------------------------------------------------------------------------------------
  -- BS INFO Address Register Table: END
  -- -----------------------------------------------------------------------------------------

  -- -----------------------------------------------------------------------------------------
  -- BS INFO Size Register Table
  -- -----------------------------------------------------------------------------------------
  --   * This table stores the Size Information for each Bitstream.  It is addressed by either 
  --   * load_address or unload_address, depending on the phase of the FSM
  --   *
  --   *           +---------------------------------------+
  --   *  Address  | BS Size Table                         |
  --   *           +---------------------------------------+
  --   *        0  | Size of BS 0 in configuration library |
  --   *           +---------------------------------------+
  --   *        1  | Size of BS 1 in configuration library |
  --   *           +---------------------------------------+
  --   *        2  | Size of BS 2 in configuration library |
  --   *           +---------------------------------------+
  --   *        3  | Size of BS 3 in configuration library |
  --   *           +---------------------------------------+
  --   *
  --   * Note that the identifiers here (0, 1, 2, 3) are not the BS_ID refered to elsewhere
  --   * in the code.  The BS_ID starts at 0 for each RM, so RM0 will have BS 0 and BS 1, 
  --   * but RM10 will also have BS 0 and BS 1.  BS_ID is relative to the RM.
  --   *

  type BS_INFO_SIZE_RAMtype is array (0 to C_NUM_BITSTREAMS_ALLOCATED-1) of std_logic_vector(PC_MAX_BS_SIZE_WIDTH-1 downto 0);

  -- Function to initialise the Bitstream Size Register LUTRAM
  --
  function initialise_bs_size_table ( vs_id     : natural;
                                      rom_depth : natural
                                      ) return BS_INFO_SIZE_RAMtype is
    variable output_array : BS_INFO_SIZE_RAMtype;
  begin
    for address in 0 to rom_depth-1 loop
      output_array(address) := get_bs_table_size (vs_id => vs_id, addr => address);
    end loop;  
    return output_array;
  end initialise_bs_size_table;

  signal bs_size_table : BS_INFO_SIZE_RAMtype := initialise_bs_size_table(vs_id     => C_VS_ID,
                                                                          rom_depth => C_NUM_BITSTREAMS_ALLOCATED); 

  attribute ram_style of bs_size_table : signal is "distributed";  --{auto | block | distributed}
  attribute dont_touch of bs_size_table : signal is "true";

  -- -----------------------------------------------------------------------------------------
  -- BS INFO Size Register Table :END
  -- -----------------------------------------------------------------------------------------


  -- -----------------------------------------------------------------------------------------
  -- AXI Lite Register Access signals
  -- -----------------------------------------------------------------------------------------
  --
  --  * The register addresses are encoded as follows:
  --  * [0000..] [VSM Select] [Bank Select] [Register Select][00]
  --  * 
  --  * VSM Select      : The ID of the VSM.  0 = VSM0, 1 = VSM1, etc
  --  *                 
  --  * Bank Select     : There are 4 banks of registers in each VSM.  3 are 
  --  *                   implemented as LUTRAM and 1 is just implemented using flops.
  --  *                      1. General Registers (Flops)
  --  *                      2. Trigger to RM Mapping Table (LUTRAM)
  --  *                      3. RM Information Table (LUTRAM)
  --  *                      4. BS Information Table (LUTRAM)
  --  *                    Each bank can consist of multiple register types per entry, each
  --  *                    of which needs to be addressed.  For example, a single entry
  --  *                    in the RM Info Bank consists of an Address Register and a
  --  *                    Control register.  All Address registers are stored in one LUTRAM
  --  *                    and all the Control Registers in another.
  --  *
  --  * Register Select : This segment of the address has different interpretations depending
  --  *                   on the bank being accessed.  The Upper bits give the address into
  --  *                   the bank and the lower bits give the register type in the entry to access.
  --  *                   General Registers          :  All bits give the address into the bank
  --  *                   Trigger to RM Mapping Table:  All bits give the address into the bank
  --  *                   RM Information Bank        :  This Bank contains Address and Control
  --  *                                                 registers.  The LSB selects between them, 
  --  *                                                 and the remaining upper bits give the 
  --  *                                                 entry address (rm_id)
  --  *                   BS Information Bank        :  This bank contains Address and SIZE
  --  *                                                 registers.  The LSB selects between them, 
  --  *                                                 and the remaining upper bits give the 
  --  *                                                 entry address (load_address/Unload_address)
  --  *                                                 
  --  *                                                        ,----------------------------------------.   ,----------------------------------------------------.
  --  *    ,---------------------.   ,---------------------.   |                RM Info Bank            |   |                       BS Info Bank                 |
  --  *    |General Register Bank|   |Trigger Bank         |   |RM Address Table    ||RM Control Table  |   |BS Address Table    ||BS Size Table  ||BS ID Table  |
  --  *  --+---------------------+ --+---------------------+ --+--------------------++------------------+ --+--------------------++---------------++-------------+
  --  *  0 | VSM CTRL/STATUS     | 0 | RM_ID for trigger 0 | 0 | Addresses for RM 0 || Control for RM 0 | 0 | Addresses for BS 0 || Size for BS 0 || ID for BS 0 |
  --  *  --+---------------------+ 1 | RM_ID for trigger 1 | 1 | Addresses for RM 1 || Control for RM 1 | 1 | Addresses for BS 1 || Size for BS 1 || ID for BS 1 |
  --  *  1 | SW Trigger          | 2 | RM_ID for trigger 2 | 2 | Addresses for RM 2 || Control for RM 2 | 2 | Addresses for BS 2 || Size for BS 2 || ID for BS 2 |
  --  *    +---------------------+ . |         ...         | . |         ...        ||       ...        | . |         ...        ||       ...     ||     ...     |
  --  *                            X | RM_ID for trigger X | Y | Addresses for RM Y || Control for RM Y | Y | Addresses for BS Z || Size for BS Z || ID for BS Z |
  --  *                            --+---------------------+ --+--------------------++------------------+ --+--------------------++---------------++-------------+

  
  CONSTANT C_NUM_REG_SEL_BITS : integer := (C_REG_SELECT_MSB - C_REG_SELECT_LSB) +1;

  signal bank_select_slice  : std_logic_vector(C_TABLE_SELECT_MSB-C_TABLE_SELECT_LSB downto 0);
  --signal reg_select_slice   : std_logic_vector(C_REG_SELECT_MSB - C_REG_SELECT_LSB downto 0);
  signal reg_select_slice   : std_logic_vector(C_NUM_REG_SEL_BITS-1 downto 0);

  --  * These two take a slice from the reg_select_slice to work out the appropriate register address
  --  * within a bank, with the remainder of the reg_select_slice giving the LUTRAM to access.
  --  * For example, if reg_select_slice = 1000101 and there were two LUTRAMS in the table, then
  --  * the table address would be "100010" and the table select would be "1"
  --
  signal trigger_reg_address : std_logic_vector(C_TRIGGER_ADDR_WIDTH - 1 downto 0);
  signal rm_info_reg_address : std_logic_vector(C_RM_ADDR_WIDTH      - 1 downto 0);
  signal bs_info_reg_address : std_logic_vector(C_BS_ADDR_WIDTH      - 1 downto 0); 
        
  
  CONSTANT C_TRIGGER_REG_ADDR_NUM_UNUSED_BITS : integer := (C_NUM_REG_SEL_BITS - C_TRIGGER_ADDR_WIDTH);

  -- TODO: The -1 is the RM reg sel offset.  Make it a constant
  CONSTANT C_RM_INFO_REG_ADDR_NUM_UNUSED_BITS : integer := (C_NUM_REG_SEL_BITS - C_RM_ADDR_WIDTH)-1;

  -- TODO: The -2 is the BS reg sel offset. Make it a constant
  CONSTANT C_BS_INFO_REG_ADDR_NUM_UNUSED_BITS : integer := (C_NUM_REG_SEL_BITS - C_BS_ADDR_WIDTH)-2;

  -- signal trigger_reg_address_unused_bits : std_logic_vector((C_REG_SELECT_MSB - C_REG_SELECT_LSB)-C_TRIGGER_ADDR_WIDTH downto 0);
  signal trigger_reg_address_unused_bits : std_logic_vector(C_TRIGGER_REG_ADDR_NUM_UNUSED_BITS-1 downto 0);

  --  signal rm_info_reg_address_unused_bits : std_logic_vector((C_REG_SELECT_MSB - C_REG_SELECT_LSB)-C_RM_ADDR_WIDTH-1 downto 0);
  signal rm_info_reg_address_unused_bits : std_logic_vector(C_RM_INFO_REG_ADDR_NUM_UNUSED_BITS-1 downto 0);

  --signal bs_info_reg_address_unused_bits : std_logic_vector((C_REG_SELECT_MSB - C_REG_SELECT_LSB)-C_BS_ADDR_WIDTH-2 downto 0);
  signal bs_info_reg_address_unused_bits : std_logic_vector(C_BS_INFO_REG_ADDR_NUM_UNUSED_BITS-1 downto 0);

  signal bad_trigger_addr : std_logic := '0';
  signal bad_rm_info_addr : std_logic := '0';
  signal bad_bs_info_addr : std_logic := '0';

  -- These are asserted when AXI-LITE reads and writes are complete, and they are used to drive
  -- reg_tready.
  -- reg_read_complete  is the OR of reg_read_complete_*
  -- reg_write_complete is the OR of reg_write_complete_*
  --
  signal reg_read_complete                 : std_logic := '0';
  signal reg_write_complete                : std_logic := '0';
  signal reg_read_complete_trigger_table   : std_logic := '0';
  signal reg_write_complete_trigger_table  : std_logic := '0';
  signal reg_write_complete_bad_table      : std_logic := '0';
  signal reg_read_complete_rm_table        : std_logic := '0';
  signal reg_write_complete_rm_table       : std_logic := '0';
  signal reg_read_complete_bs_table        : std_logic := '0';
  signal reg_write_complete_bs_table       : std_logic := '0';
  signal reg_write_complete_ctrl_reg       : std_logic := '0'; 
  signal reg_read_complete_status_reg      : std_logic := '0';
  signal reg_write_complete_sw_trigger_reg : std_logic := '0'; 
  signal reg_read_complete_sw_trigger_reg  : std_logic := '0'; 
  signal reg_read_complete_bad_table       : std_logic := '0'; 


  signal reg_read_complete_cmb                 : std_logic := '0';
  signal reg_write_complete_cmb                : std_logic := '0';

  signal reg_rdata_trigger_table           : std_logic_vector(C_AXI_REG_DATA_WIDTH-1 downto 0);
  signal reg_rdata_rm_table_address        : std_logic_vector(C_AXI_REG_DATA_WIDTH-1 downto 0);
  signal reg_rdata_rm_table_ctrl           : std_logic_vector(C_AXI_REG_DATA_WIDTH-1 downto 0);
  signal reg_rdata_bs_table_id             : std_logic_vector(C_AXI_REG_DATA_WIDTH-1 downto 0);
  signal reg_rdata_bs_table_address        : std_logic_vector(C_AXI_REG_DATA_WIDTH-1 downto 0);
  signal reg_rdata_bs_table_size           : std_logic_vector(C_AXI_REG_DATA_WIDTH-1 downto 0);

  -- These signals are asserted when there's an AXI Read or Write ongoing.
  -- Some are specialised to the particular register table
  --
  signal write_to_registers          : std_logic := '0';
  signal write_to_bad_table          : std_logic := '0';
  signal write_to_vsm_registers      : std_logic := '0';
  signal write_to_trigger_registers  : std_logic := '0';
  signal write_to_rm_info_registers  : std_logic := '0';
  signal write_to_bs_info_registers  : std_logic := '0';
  signal write_to_ctrl_reg           : std_logic := '0';
  signal write_to_sw_trigger_reg     : std_logic := '0'; 


  signal write_to_registers_cmb          : std_logic := '0';
  signal write_to_vsm_registers_cmb      : std_logic := '0';
  signal write_to_trigger_registers_cmb  : std_logic := '0';
  signal write_to_rm_info_registers_cmb  : std_logic := '0';
  signal write_to_bs_info_registers_cmb  : std_logic := '0';
  signal write_to_ctrl_reg_cmb           : std_logic := '0';
  signal write_to_sw_trigger_reg_cmb     : std_logic := '0'; 



 
  signal read_from_registers         : std_logic := '0';
  signal read_from_bad_table         : std_logic := '0';
  signal read_from_vsm_registers     : std_logic := '0';
  signal read_from_status_reg        : std_logic := '0';
  signal read_from_sw_trigger_reg    : std_logic := '0';
  signal read_from_trigger_registers : std_logic := '0';
  signal read_from_rm_info_registers : std_logic := '0';
  signal read_from_bs_info_registers : std_logic := '0';

  signal read_from_registers_cmb         : std_logic := '0';
  signal read_from_vsm_registers_cmb     : std_logic := '0';
  signal read_from_status_reg_cmb        : std_logic := '0';
  signal read_from_sw_trigger_reg_cmb    : std_logic := '0';
  signal read_from_trigger_registers_cmb : std_logic := '0';
  signal read_from_rm_info_registers_cmb : std_logic := '0';
  signal read_from_bs_info_registers_cmb : std_logic := '0';

  signal reg_rdata_i                 : std_logic_vector(C_AXI_REG_DATA_WIDTH-1 downto 0);
  signal reg_tready_d0               : std_logic;
  signal reg_tready_d1               : std_logic;
  signal reg_tready_i               : std_logic;
  
  signal reg_addr_i             : std_logic_vector(C_AXI_REG_ADDRESS_WIDTH-1 downto 0);
  signal reg_rnw_i              : std_logic;
  signal reg_tvalid_i           : std_logic;
  signal reg_tvalid_d1           : std_logic;
  signal reg_wdata_i            : std_logic_vector(C_AXI_REG_DATA_WIDTH-1 downto 0) := (others => '0');

--I need to make sure the LUTRAMS are inferred even when they are roms, and the workaround to do this
--it to keep a benign write interface that's dont_touched

  -- -----------------------------------------------------------------------------------------
  -- AXI Lite Register Access signals :END
  -- -----------------------------------------------------------------------------------------


  -- -----------------------------------------------------------------------------------------
  -- AXI Stream signals
  -- -----------------------------------------------------------------------------------------
  signal s_axis_ctrl_tready_i : std_logic  := '1';
 
  -- This is asserted when the data transfer is to take place for the control register
  signal transfer_ctrl_chan_data : std_logic := '0';


  -- -----------------------------------------------------------------------------------------
  -- AXI Stream signals :END
  -- -----------------------------------------------------------------------------------------


  -- -----------------------------------------------------------------------------------------
  -- Trigger Signals 
  -- -----------------------------------------------------------------------------------------

  -- The trigger identifier from the trigger_manager block
  --
  signal hw_trigger_id          : std_logic_vector(C_HW_TRIGGER_ID_WIDTH-1 downto 0);

  -- Asserted when a trigger has been decoded
  --
  signal hw_trigger_valid       : std_logic := '0';

  signal ready_for_hw_trigger   : std_logic := '0';  


  signal hw_trigger_used       : std_logic := '0';  


  -- -----------------------------------------------------------------------------------------
  -- Trigger Signals :END
  -- -----------------------------------------------------------------------------------------

 
  -- -----------------------------------------------------------------------------------------
  -- Signals to control the transfer
  -- -----------------------------------------------------------------------------------------
  signal rm_id_valid_m1                 : std_logic := '0';  -- Asserted the cycle before rm_id is asserted
  signal rm_id_valid_new_after_trigger  : std_logic := '0';  -- Asserted when a trigger has been converted into an RM ID
  signal rm_id_valid_new_after_shutdown : std_logic := '0';  -- Asserted when a trigger has been converted into an RM ID
  signal rm_id_valid              : std_logic := '0';  -- Asserted when a trigger has been converted into an RM ID
  signal rm_info_valid            : std_logic := '0';  -- Asserted when the RM INFO data is valid. 
  signal bs_info_valid            : std_logic := '0';  -- Asserted when the BITSTREAM INFO data is valid. 
  signal start_fetching_all    : std_logic := '0';  
  signal start_fetching_all_except_rm_id   : std_logic := '0';  

  -- These values come from the RM Information table
  --

  -- Change from 2015.4 released verison to try and get RM_RESET behaving nicely after PoR.  Can still fail if programmed in the netlist

  signal shutdown_required        : std_logic_vector(PC_RM_SHUTDOWN_REQUIRED_WIDTH-1 downto 0) := C_DEFAULT_SHUTDOWN_REQUIRED;
  signal startup_required         : std_logic_vector(PC_RM_STARTUP_REQUIRED_WIDTH -1 downto 0) := C_DEFAULT_SW_STARTUP_REQUIRED;
  signal reset_required           : std_logic_vector(PC_RM_RESET_REQUIRED_WIDTH   -1 downto 0) := C_DEFAULT_RESET_REQUIRED;
  signal reset_duration           : std_logic_vector(PC_RM_RESET_DURATION_WIDTH   -1 downto 0) := std_logic_vector(unsigned(C_DEFAULT_RESET_DURATION) + 1);
  signal reset_duration_stored    : std_logic_vector(PC_RM_RESET_DURATION_WIDTH   -1 downto 0) := std_logic_vector(unsigned(C_DEFAULT_RESET_DURATION) + 1);

  --signal shutdown_required        : std_logic_vector(PC_RM_SHUTDOWN_REQUIRED_WIDTH-1 downto 0) := (others => '0');
  --signal startup_required         : std_logic_vector(PC_RM_STARTUP_REQUIRED_WIDTH -1 downto 0) := (others => '0');
  --signal reset_required           : std_logic_vector(PC_RM_RESET_REQUIRED_WIDTH   -1 downto 0) := (others => '0');
  --signal reset_duration           : std_logic_vector(PC_RM_RESET_DURATION_WIDTH   -1 downto 0) := (others => '0');
  --signal reset_duration_stored    : std_logic_vector(PC_RM_RESET_DURATION_WIDTH   -1 downto 0) := (others => '0');



  -- Combinatorial versions that are permanently decoded from the
  -- LUTRAM output
  signal shutdown_required_cmb : std_logic_vector(PC_RM_SHUTDOWN_REQUIRED_WIDTH-1 downto 0) := (others => '0');
  signal startup_required_cmb  : std_logic_vector(PC_RM_STARTUP_REQUIRED_WIDTH -1 downto 0) := (others => '0');
  signal reset_required_cmb    : std_logic_vector(PC_RM_RESET_REQUIRED_WIDTH   -1 downto 0) := (others => '0');
  signal reset_duration_cmb    : std_logic_vector(PC_RM_RESET_DURATION_WIDTH   -1 downto 0) := (others => '0');

  -- Asserted when the FSM is in ST_RESET_RM and causes the
  -- remaining reset duration to decrement
  --
  signal decrement_reset_duration : std_logic := '0';

  
  -- The address of the "load" bitstream information in the BS Info table.
  -- This is not the address that goes to the fetch block
  --

  signal bs_addr : std_logic_vector( C_BS_ADDR_WIDTH -1 downto 0) := (others => '0');

  -- When this is true, interaction with software is allowed.  This controls sw_shutdown_req
  -- and sw_startup_req.
  -- If either of these signals are asserted, we have to wait until we see the PC_OK_TO_PROCEED_CMD
  -- command.  This can come from the AXI Lite interface or the AXI Control channel

  constant SW_INTERACTION_ALLOWED : boolean := C_HAS_AXI_LITE > 0 or C_HAS_AXIS_CONTROL > 0;

  -- -----------------------------------------------------------------------------------------
  -- Signals to control the transfer :END
  -- -----------------------------------------------------------------------------------------

  -- -----------------------------------------------------------------------------------------
  -- Status
  -- -----------------------------------------------------------------------------------------

  -- The status register value returned via AXI-Stream or AXI Lite.  It's the concatenation
  -- of several register outputs
  --
  signal status_register : std_logic_vector(PC_REGISTER_WIDTH-1 downto 0) := (others => '0');

  
  -- Register holding the status value.  Forms part of the addressable Status Register
  --
  signal status : std_logic_vector(PC_STATUS_WIDTH-1 downto 0) := (others => '0');
  -- The error field is 4 bits wide but I only use 3 of them.  Ignore the upper bit
  -- coverage toggle_ignore status "6"

  -- Additionally, the upper 8 bits hold the BS_ID but I only support 2 bitstreams per RM, so only 1 bit can toggle.
  -- Additionally, the middle 16 bits hold the RM_ID but I only have 4 bitstreams per RM in the coverage configuration 
  -- So I expect bits 24 (BS_ID), 9:8 (RM_ID) 7 (Shutdown) 5:3 (Error) 2:0 (status) to toggle
  -- coverage toggle_ignore status_register "31:25 23:10 6"



  -- The encoded part of the status field.
  --
  signal status_encoded_field : std_logic_vector(PC_STATUS_ENCODED_WIDTH-1 downto 0) := PC_STATUS_EMPTY;

  -- The error part of the status field.
  --
  signal status_error_field : std_logic_vector(PC_STATUS_ERROR_WIDTH-1 downto 0) := PC_STATUS_NO_ERROR;


  
  -- Register holding the RM_ID being processed.  Forms part of the addressable Status Register
  --
  signal rm_id : std_logic_vector(C_RM_ID_WIDTH-1 downto 0) := std_logic_vector(to_unsigned(C_DEFAULT_RM_ID, C_RM_ID_WIDTH));

  
  -- Register holding the BS_ID being processed.  Forms part of the addressable Status Register
  --
  signal bs_id : std_logic_vector(C_BS_ID_WIDTH-1 downto 0) := (others => '0');

  
  -- This is set to 1 when an RM is sucessfully loaded, 0 otherwise
  --
  signal full_flag : std_logic := C_HAS_DEFAULT_RM;

  
  -- This is set to 1 when an RM fails with a cp_error. Set to 0 when a new load starts
  --
  signal cp_error_flag : std_logic := '0';

  -- This is set to 1 when an RM fails with a cp_error. Set to 0 when a new load starts
  --
  signal cp_lost_error_flag : std_logic := '0';


  -- This is set to 1 when an RM fails with a fetch_error. Set to 0 when a new load starts
  --
  signal fetch_error_flag : std_logic := '0';

  -- This is set to 1 when an RM fails with a decompress bad format error. Set to 0 when a new load starts
  --
  signal decompress_bad_format_error_flag : std_logic := '0';

  -- This is set to 1 when an RM fails with a decompress bad size error. Set to 0 when a new load starts
  --
  signal decompress_bad_size_error_flag : std_logic := '0';






  -- This is set to 1 when an RM fails with a bad_config_error. Set to 0 when a new load starts
  --
  signal bad_config_error_flag : std_logic := '0';

  signal event_error_i : std_logic := '0';




  -- Used when the user restarts a VSM in the full or empty state.  Either way, 
  -- clear the error flag 
  --
  signal user_restarted_with_status :std_logic := '0';  


  -- Used when the user takes control of the VSM outputs to the RM.  Clears the error flag 
  --
  signal user_ctrl_command_seen :std_logic := '0';  

  
  -- 1 if the FSM is fetching LOAD bitsreams and 0 if it is fetching the CLEAR bitstreams
  --
  signal load_flag: std_logic := '1'; 

  
  -- This is the flag set when the VSM has entered shutdown.  It is the bit returned when
  -- the shutdown register is read
  --
  -- Set to 0 when the VSM is active
  -- Set to 1 when it is shutdown
  --
  signal in_shutdown : std_logic := conv_bool_to_sl (C_START_IN_SHUTDOWN > 0 and C_SKIP_RM_STARTUP_AFTER_RESET = '1') ;

  -- in_shutdown delayed by 1 cycle.  I need this for the AXI accesses as the address used is registered
  -- and in_shutdown can change between the first and second cycle of the access.  
  -- 
  signal in_shutdown_d1    : std_logic:= '0';  

  -- Asserted when we're in the post reset startup phase.  It's used to suppress
  -- rm_decouple in the ST_STARTUP_SW state
  signal in_post_reset_startup : std_logic := '1';

  
  -- The value returned when AXI-LITE reads the shutdown register. It's 31x Zeros and the in_shutdown bit
  --
  signal shutdown_register : std_logic_vector(PC_REGISTER_WIDTH-1 downto 0) := (others => '0');

  -- -----------------------------------------------------------------------------------------
  -- Status :END
  -- -----------------------------------------------------------------------------------------

  -- -----------------------------------------------------------------------------------------
  -- Control
  -- -----------------------------------------------------------------------------------------
  -- This is set to the lower bit of reg_wdata on an AXI LITE write.  It is the signal that the
  -- VSM is to go into shutdown
  -- 
  signal shutdown_bit : std_logic := conv_bool_to_sl (C_START_IN_SHUTDOWN >0);


  -- This is asserted when the PC_OK_TO_PROCEED_CMD is received
  -- 
  signal sw_ok_to_proceed    : std_logic := '0';
  signal sw_ok_to_proceed_d0 : std_logic := '0';
  signal sw_ok_to_proceed_d1 : std_logic := '0';


  -- This is asserted when data should be transfered from the AXI Lite interface 
  -- to the control register
  -- 
  signal transfer_ctrl_reg_data      : std_logic := '0';
 

  -- Holds the command portion of the AXI Stream and AXI Lite CTRL interfaces
  signal s_axis_ctrl_cmd : std_logic_vector(PC_AXIS_CTRL_CMD_FIELD_WIDTH -1 downto 0);
  signal ctrl_reg_cmd    : std_logic_vector(PC_CTRL_REG_CMD_FIELD_WIDTH  -1 downto 0);   


  -- -----------------------------------------------------------------------------------------
  -- Control :END
  -- -----------------------------------------------------------------------------------------


  -- -----------------------------------------------------------------------------------------
  -- SW Triggers
  -- -----------------------------------------------------------------------------------------
  -- The SW Trigger register value returned via AXI Lite.  It's the concatenation
  -- of the SW Trigger ID and a status bit showing if it is pending or not
  --
  signal sw_trigger_register : std_logic_vector(PC_REGISTER_WIDTH-1 downto 0) := (others => '0');

  -- The trigger identifier written to the SW Trigger Register
  -- 
  signal sw_trigger_id : std_logic_vector(C_TRIGGER_ID_WIDTH-1 downto 0) := (others => '0');

  -- sw_trigger_pending is set when the user writes to the SW Trigger Register and is
  -- cleared when the SW Trigger ID has been used to load the rm_id.  
  -- The SW Trigger ID can be changed by the user when sw_trigger_pending is set.
  --
  signal sw_trigger_pending : std_logic := '0';

  -- using_sw_trigger is asserted when the RM is being loaded based on a SW Trigger.
  -- It's set when we start using the SW trigger and remains asserted until the RM is
  -- loaded
  --

  signal using_sw_trigger : std_logic := '0';


  -- -----------------------------------------------------------------------------------------
  -- SW Triggers :END
  -- -----------------------------------------------------------------------------------------
  

  -- -----------------------------------------------------------------------------------------
  -- Debug port signals
  -- -----------------------------------------------------------------------------------------
  signal debug_processing_starting   : std_logic  := '0';
  signal debug_processing_finished   : std_logic  := '0';
  signal debug_fetching_after_reset  : std_logic  := '0';
  signal debug_processing_aborted    : std_logic  := '0';
  signal debug_processing_aborted_d1 : std_logic  := '0';
  signal debug_user_in_control       : std_logic  := '0';
  -- -----------------------------------------------------------------------------------------
  -- Debug Port signals :END
  -- -----------------------------------------------------------------------------------------



  -- Set up toggle exclusions for bits we can't hit in this configuration
  --
  -- Turn off toggle coverage for the trigger table read data.  This table is C_RM_ID_WIDTH bits wide
  --
  -- coverage toggle_ignore reg_rdata_trigger_table "31:5"


  -- Turn off toggle coverage for the RM Table address.  This table stores one or two bitstream table addresses, depending
  -- on family type
  --
  -- coverage toggle_ignore reg_rdata_rm_table_address "31:5"

  -- Turn off toggle coverage for the RM Table Control data.  This only stores a small number of bits
  --
  -- coverage toggle_ignore reg_rdata_rm_table_ctrl "31:13"
  
  -- It's also the largest thing to go through reg_rdata_i
  -- coverage toggle_ignore reg_rdata_i "31:13"

  -- Turn off toggle coverage for the BS Table ID data.  This only stores a small number of bits
  --
  -- coverage toggle_ignore reg_rdata_bs_table_id "31:1"


  -- Turn off toggle coverage for the BS Table Address data.  This can store 32 bit data but the testbench
  -- memory is only 27 bits wide.  However, I don't generate enough bitstreams to get this high in the coverage
  -- configuration, so ignore downto bit 14.  The bottom 2 bits need to be 00
  --
  -- TODO: I've added a test_register test to test the full range, including the bottom bits
  -- c o verage toggle_ignore reg_rdata_bs_table_address "31:14 1:0"

  -- Turn off toggle coverage for the BS Table Size data.  This can store 32 bit data but the testbench
  -- only generates bitstreams up to 11 bits wide
  --
  -- TODO: I've added a test_register test to test the full range, including the bottom bits
  -- c o verage toggle_ignore reg_rdata_bs_table_size "31:11 1:0"


  -- Ignore toggle coverage for this signal.  It's hardwired to 1
  -- coverage toggle_ignore s_axis_ctrl_tready_i ""

  -- Turn off toggle coverage above the max number of triggers allocated
  -- coverage toggle_ignore sw_trigger_register "31:5"

  -- Turn off toggle coveragefor the hardwired bits of the shutdown register
  -- coverage toggle_ignore shutdown_register "31:1"


  -- This is split into 3 fields. Halfword and byte are randomised, but the command field isn't.
  -- The commands only need 3 bits
  -- coverage toggle_ignore s_axis_ctrl_cmd "8:3"

begin
  -- Generate an active high reset for the local delay blocks.
  reset_ah <= reset when C_RESET_ACTIVE_LEVEL = '1' else (not reset);


  reg_addr_i    <= reg_addr;  
  reg_rnw_i     <= reg_rnw;   
  reg_tvalid_i  <= reg_tvalid;
  reg_wdata_i   <= reg_wdata; 

  -- -----------------------------------------------------------------------------------------
  -- Debug port signals
  -- -----------------------------------------------------------------------------------------
  -- These are needed by the testbench in order to work out when to start analysing the VSM
  -- output signals
  --
  debug_port(PC_VSM_DEBUG_PORT_STARTING                                 ) <= debug_processing_starting;
  debug_port(PC_VSM_DEBUG_PORT_FINISHED                                 ) <= debug_processing_finished;
  debug_port(PC_VSM_DEBUG_PORT_FETCHING_AFTER_RESET                     ) <= debug_fetching_after_reset;
  debug_port(PC_VSM_DEBUG_PORT_ABORT                                    ) <= debug_processing_aborted_d1;
  debug_port(PC_VSM_DEBUG_PORT_SHUTDOWN_BIT                             ) <= shutdown_bit;
  debug_port(PC_VSM_DEBUG_PORT_USER_RESTARTED_WITH_STATUS               ) <= user_restarted_with_status;
  debug_port(PC_VSM_DEBUG_PORT_FULL                                     ) <= full_flag;
  debug_port(PC_VSM_DEBUG_PORT_USER_IN_CONTROL                          ) <= debug_user_in_control;
  debug_port(PC_VSM_DEBUG_PORT_OK_TO_PROCEED                            ) <= sw_ok_to_proceed;

  debug_port(PC_VSM_DEBUG_PORT_RM_ID_LSB + C_RM_ID_WIDTH-1 downto PC_VSM_DEBUG_PORT_RM_ID_LSB ) <= rm_id;
  debug_port(PC_VSM_DEBUG_PORT_RM_ID_MSB                   downto C_RM_ID_WIDTH + PC_VSM_DEBUG_PORT_RM_ID_LSB ) <= (others => '0');

  debug_port(PC_VSM_DEBUG_PORT_STATUS_MSB                  downto PC_VSM_DEBUG_PORT_STATUS_LSB ) <= status_register;


  debug_fetching_after_reset <= '1' when current_state = ST_START_FETCH_RM_INFO_AFTER_RESET or current_state = ST_FETCH_RM_INFO_AFTER_RESET else
      '0';


  debug_processing_starting <= 
      '1' when current_state = ST_FETCH_RM_INFO_AFTER_RESET  and next_state = ST_STARTUP_SW          else
      '1' when current_state = ST_FETCH_RM_INFO_AFTER_RESET  and next_state = ST_PRE_RESET_RM        else
      '1' when current_state = ST_WAIT_FOR_TRIGGER and next_state = ST_START_FETCH_RM_INFO else
      '1' when current_state = ST_WAIT_FOR_TRIGGER and next_state = ST_SHUTDOWN_HW         else
      '1' when current_state = ST_WAIT_FOR_TRIGGER and next_state = ST_SHUTDOWN_SW         else
      '0';


  debug_processing_finished <=
      '1' when current_state = ST_WAIT_FOR_DONE and next_state =  ST_SHUTDOWN         and cp_done = '1' and cp_error = '0' and fetch_error_flag = '0' and decompress_bad_format_error_flag = '0' and decompress_bad_size_error_flag = '0' else
      '1' when current_state = ST_WAIT_FOR_DONE and next_state =  ST_WAIT_FOR_TRIGGER and cp_done = '1' and cp_error = '0' and fetch_error_flag = '0' and decompress_bad_format_error_flag = '0' and decompress_bad_size_error_flag = '0' else
      '1' when current_state = ST_STARTUP_SW    and next_state =  ST_SHUTDOWN                                                  else
      '1' when current_state = ST_STARTUP_SW    and next_state =  ST_WAIT_FOR_TRIGGER                                          else
      '1' when current_state = ST_RESET_RM      and next_state =  ST_SHUTDOWN                                                  else
      '1' when current_state = ST_RESET_RM      and next_state =  ST_WAIT_FOR_TRIGGER                                          else
       -- This is to cover a failure I got in one test.
      '1' when full_flag = '1' and reset_ah = '1' else
      '0';

  debug_processing_aborted  <= 
      '1' when current_state = ST_WAIT_FOR_DONE and next_state =  ST_SHUTDOWN         and cp_done = '1' and (cp_error = '1' or fetch_error_flag = '1' or decompress_bad_format_error_flag = '1' or decompress_bad_size_error_flag = '1' ) else
      '1' when current_state = ST_WAIT_FOR_DONE and next_state =  ST_WAIT_FOR_TRIGGER and cp_done = '1' and (cp_error = '1' or fetch_error_flag = '1' or decompress_bad_format_error_flag = '1' or decompress_bad_size_error_flag = '1' ) else
      
      -- Abort when a load bitstream fails
      '1' when current_state = ST_WAIT_FOR_DONE and bad_config_error_flag = '1' and load_flag = '1' else

      -- Abort when a clear bitstream fails, but only if we shutdown on error.  If the VSM carries on, then the
      -- monitor has to as well
      '1' when current_state = ST_WAIT_FOR_DONE and bad_config_error_flag = '1' and load_flag = '0' and C_CAN_ENTER_SHUTDOWN_ON_ERROR else
      '0';

  debug_user_in_control  <= 
      '1' when transfer_ctrl_chan_data = '1' and in_shutdown = '1' and s_axis_ctrl_cmd = PC_USER_CTRL_CMD else
      '1' when transfer_ctrl_reg_data  = '1' and in_shutdown = '1' and ctrl_reg_cmd    = PC_USER_CTRL_CMD else
      '0';


  -- I need debug_processing_aborted to align with shutdown_bit which takes a cycle to assert
  -- on an error.        
  process (clk)
  begin
    if rising_edge(clk) then
      if reset = C_RESET_ACTIVE_LEVEL then
        debug_processing_aborted_d1 <= '0';
      else
        debug_processing_aborted_d1 <= debug_processing_aborted;
      end if;
    end if;
  end process;

  -- -----------------------------------------------------------------------------------------
  -- Debug Port signals :END
  -- -----------------------------------------------------------------------------------------

  -- -----------------------------------------------------------------------------------------
  -- The FSM
  -- -----------------------------------------------------------------------------------------
  --

  -- Set this to 1 when a transition into ST_FETCH_RM_INFO should be allowed.  Set it to 0 when it should
  -- be stalled.  ST_FETCH_RM_INFO causes the VSM to read from the Trigger2RM, the RM INFO and the BS Info
  -- tables.  That conflicts with AXI LITE trying to read them.  AXI Writes can only happen when the VSM is
  -- in shutdown, so I can ignore them - the FSM won't be trying to transition into ST_FETCH_RM_INFO in this 
  -- condition anyway.
  --

  process (clk)
  begin
    if rising_edge(clk) then
      if reset = C_RESET_ACTIVE_LEVEL then
        current_state <= ST_POR;
      else
        current_state <= next_state;
      end if;
    end if;
  end process;


   can_exit_ST_POR                          <= '1' when reset /= C_RESET_ACTIVE_LEVEL else '0';
   can_exit_ST_FETCH_RM_INFO                <= bs_info_valid; 
   can_exit_ST_FETCH_RM_INFO_AFTER_SHUTDOWN <= bs_info_valid; 
   can_exit_ST_FETCH_RM_INFO_AFTER_RESET    <= bs_info_valid; 
   can_exit_ST_RESET_RM                     <= '1' when to_integer(unsigned(reset_duration)) = 0 else '0';
   can_exit_ST_WAIT_FOR_DONE                <= cp_done or bad_config_error_flag;


   --can_exit_ST_STARTUP_SW                   <= sw_ok_to_proceed;
   -- If a proceed command for the SW_STARTUP is sent over AXI Lite then the FSM will move into ST_WAIT_FOR_TRIGGER and possiblt ST_SHUTDOWN_SW
   -- before sw_ok_to_proceed_d1 has cleared.  This can cause the sw_ok_to_proceed for the ST_SHUTDOWN_SW to be missed.  To solve that I'm stalling 
   -- in ST_STARTUP_SW until the command is completely over
   --
   can_exit_ST_STARTUP_SW                   <= '1' when sw_ok_to_proceed_d0 ='0' and sw_ok_to_proceed_d1 = '1' else '0';

   can_exit_ST_SHUTDOWN_SW                  <= sw_ok_to_proceed;
    
  p_fsm : process (current_state, 
                   shutdown_bit, 
                   hw_trigger_valid, 
                   sw_trigger_pending, 
                   can_exit_ST_POR,
                   can_exit_ST_FETCH_RM_INFO,
                   can_exit_ST_FETCH_RM_INFO_AFTER_SHUTDOWN,
                   can_exit_ST_FETCH_RM_INFO_AFTER_RESET,
                   can_exit_ST_RESET_RM,
                   can_exit_ST_WAIT_FOR_DONE,
                   can_exit_ST_STARTUP_SW,
                   can_exit_ST_SHUTDOWN_SW,
                   full_flag, 
                   shutdown_required, 
                   startup_required, 
                   rm_shutdown_ack,
                   fetch_gnt, 
                   cp_error, 
                   fetch_error_flag, 
                   decompress_bad_format_error_flag,
                   decompress_bad_size_error_flag, 
                   bad_config_error_flag,
                   reset_required,
                   in_shutdown,
                   load_flag,
                   user_restarted_with_status) is
  begin
    next_state <= current_state;  -- Avoid an inferred latch
    case current_state is
      when ST_POR =>
        if can_exit_ST_POR = '1' then

          if full_flag = '1' then
              next_state <= ST_START_FETCH_RM_INFO_AFTER_RESET;
          else
            if shutdown_bit = '1' then 
              next_state <= ST_SHUTDOWN;
            else 
              next_state <= ST_WAIT_FOR_TRIGGER;
            end if;
          end if;  
        end if;  
          
      when ST_START_FETCH_RM_INFO_AFTER_RESET =>
          next_state <= ST_FETCH_RM_INFO_AFTER_RESET;

      when ST_FETCH_RM_INFO_AFTER_RESET =>
        if can_exit_ST_FETCH_RM_INFO_AFTER_RESET = '1' then
          -- All the RM info has been fetched.  Options now are:
          --   1. Start up the RM that's already present (either from the initial configuration or from 
          --      before a warm reset).  One reason for this is that the reset to the RM (if there is one) 
          --      is under the control of the VSM, so it's only polite to pulse that for the RM.  The 
          --      alternative would be that the system would have to combine various reset sources, which
          --      could get messy.  Another reason is that it makes the RM startup look the same
          --      regardless of whether it was in the original bitstream, or loaded later.
          --
          --      1.1 Startup the SW first
          --      1.2 Reset the RM first
          --      1.3 Go into shutdown if there's nothing to do for that particular RM, and the user requested
          --          starting in shutdown
          --      1.4 Wait for a trigger if there's nothing to do for that particular RM, and the user didn't 
          --          want to start in shutdown
          --   2. Go into shutdown
          --   3. Wait for a trigger

          if C_SKIP_RM_STARTUP_AFTER_RESET = '0' then
            if startup_required = PC_RM_SW_STARTUP_REQUIRED and SW_INTERACTION_ALLOWED = true then
              -- 1.1  
              next_state <= ST_STARTUP_SW;
            elsif reset_required /= PC_RM_NO_RESET_REQUIRED then
              -- 1.2  
              next_state <= ST_PRE_RESET_RM;
            elsif shutdown_bit = '1' then 
              -- 1.3
              next_state <= ST_SHUTDOWN;
            else 
              -- 1.4
              next_state <= ST_WAIT_FOR_TRIGGER;
            end if;
          elsif shutdown_bit = '1' then 
              -- 2
            next_state <= ST_SHUTDOWN;
          else 
              -- 3
            next_state <= ST_WAIT_FOR_TRIGGER;
          end if;
        end if;



      when ST_WAIT_FOR_TRIGGER =>
        -- Stay in this state until there's a trigger requesting a new bitstream.
        -- Initial entry into this state from somewhere else causes hw_trigger_req to
        -- be asserted for a clock cycle, which is the signal to the trigger manager
        -- to send a trigger along when it has one.
        --
        -- When a trigger is seen, or more accurately, when a trigger has caused all
        -- of the RM and BS information to be fetched from the tables, then start
        -- processing it.  There are two major options here:
        --  1. If the VS is empty (no RM loaded) then just start loading the new bitstream
        --  2. If the VS is full  (   RM loaded) then start by shutting that down, and then
        --     proceed to loading the new bitstream
        --
        --
        if shutdown_bit = '1' then
          next_state <= ST_SHUTDOWN;
          
        elsif hw_trigger_valid = '1' or sw_trigger_pending = '1' then
          if full_flag = '1' then
            -- VS contains an RM.  Shut it down
            --
            if    shutdown_required = PC_RM_NO_SHUTDOWN_REQUIRED  then  -- No shutdown required
              next_state    <= ST_START_FETCH_RM_INFO;

            elsif shutdown_required = PC_RM_HW_SHUTDOWN_REQUIRED    then  -- HW shutdown required
              next_state    <= ST_SHUTDOWN_HW;

            elsif shutdown_required = PC_RM_HW_SW_SHUTDOWN_REQUIRED then  -- HW->SW shutdown required
              next_state    <= ST_SHUTDOWN_HW;

            elsif shutdown_required = PC_RM_SW_HW_SHUTDOWN_REQUIRED and SW_INTERACTION_ALLOWED = true then  -- SW->HW shutdown required
              next_state    <= ST_SHUTDOWN_SW;

            elsif shutdown_required = PC_RM_SW_HW_SHUTDOWN_REQUIRED and SW_INTERACTION_ALLOWED = false then  -- SW->HW shutdown required, but no SW interface
              next_state    <= ST_SHUTDOWN_HW;
            end if;
          else
            -- The VS was empty so there's no need to shut the existing RM down (because there isn't one to shutdown)
            next_state    <= ST_START_FETCH_RM_INFO;
          end if;
        end if;
        
      when ST_SHUTDOWN_HW =>
        if rm_shutdown_ack = '1' then

          if shutdown_required = PC_RM_HW_SW_SHUTDOWN_REQUIRED and SW_INTERACTION_ALLOWED = true then  -- HW->SW shutdown required
            next_state    <= ST_SHUTDOWN_SW;
          else
            next_state    <= ST_START_FETCH_RM_INFO;
          end if;  
        end if;
        
      when ST_SHUTDOWN_SW =>
        if can_exit_ST_SHUTDOWN_SW = '1' then 
          if shutdown_required = PC_RM_SW_HW_SHUTDOWN_REQUIRED then  -- SW->HW shutdown required
            next_state    <= ST_SHUTDOWN_HW;
          else
            next_state    <= ST_START_FETCH_RM_INFO;
          end if;  
        end if;


      when ST_START_FETCH_RM_INFO =>
          next_state <= ST_FETCH_RM_INFO;

      when ST_FETCH_RM_INFO =>
        if can_exit_ST_FETCH_RM_INFO = '1' then 
            next_state <= ST_WAIT_FOR_DONE;
        end if;

      when ST_WAIT_FOR_DONE=>
        if can_exit_ST_WAIT_FOR_DONE = '1' then
          if cp_error = '1' or fetch_error_flag = '1' or bad_config_error_flag = '1' or decompress_bad_format_error_flag = '1' or decompress_bad_size_error_flag = '1' then
            -- An error has occurred      
            -- Move to shutdown if he user has requested shutdown-on-error AND there's a
            -- way to detect and escape it (i.e. AXI Lite or AXI Stream interface).
            -- If there's no way to escape it, move to ST_WAIT_FOR_TRIGGER
            --
            if C_CAN_ENTER_SHUTDOWN_ON_ERROR then
              next_state <= ST_SHUTDOWN;            
            else
              if load_flag = '0' then
                -- If an error occurred loading the clear bitstream, and we can't enter shutdown, 
                -- then just proceed to process the load bitstream.
                -- If I go back to ST_WAIT_FOR_TRIGGER then I'll just re-enter here and 
                -- the clear bitstream will fail again
                next_state <= ST_START_FETCH_RM_INFO;
              else
                next_state <= ST_WAIT_FOR_TRIGGER;
              end if;  -- if load_flag = '0' then
            end if;
          else
            if load_flag = '0' then
                -- Start fetching the load bitstream
                next_state <= ST_START_FETCH_RM_INFO;
            else
              if startup_required = PC_RM_SW_STARTUP_REQUIRED and SW_INTERACTION_ALLOWED = true then
                next_state <= ST_STARTUP_SW;
                
              elsif reset_required /= PC_RM_NO_RESET_REQUIRED then
                  next_state <= ST_PRE_RESET_RM;
                
              elsif shutdown_bit = '1' then
                next_state <= ST_SHUTDOWN;
                
              else
                next_state <= ST_WAIT_FOR_TRIGGER;
              end if;
            end if;  -- if load_flag = '0' then
          end if;  
        end if;


        
      when ST_STARTUP_SW=>
        -- Wait here until SW says it's ok to proceed.  When it does,
        -- either go to the reset state, the shutdown state, or wait
        -- for a new trigger
        --
        if can_exit_ST_STARTUP_SW = '1' then 
          if reset_required /= PC_RM_NO_RESET_REQUIRED then
              next_state <= ST_PRE_RESET_RM;
            
          elsif shutdown_bit = '1' then
            next_state <= ST_SHUTDOWN;
            
          else
            next_state <= ST_WAIT_FOR_TRIGGER;
          end if;
        end if;


      when ST_PRE_RESET_RM=>
         next_state <= ST_RESET_RM;
        
      when ST_RESET_RM=>
        if can_exit_ST_RESET_RM = '1' then
          if shutdown_bit = '0' then
            next_state <= ST_WAIT_FOR_TRIGGER;
          else 
            next_state <= ST_SHUTDOWN;
          end if;  
        end if;

      when ST_SHUTDOWN=>
        -- If we've restarted with a user defined full, then go and fetch the RM INFO
        if shutdown_bit = '0' and user_restarted_with_status = '1' and full_flag = '1' then 
            next_state <= ST_START_FETCH_RM_INFO_AFTER_SHUTDOWN;
        elsif shutdown_bit = '0' then 
          next_state <= ST_WAIT_FOR_TRIGGER;
        end if;

      when ST_START_FETCH_RM_INFO_AFTER_SHUTDOWN =>
          next_state <= ST_FETCH_RM_INFO_AFTER_SHUTDOWN;

      when ST_FETCH_RM_INFO_AFTER_SHUTDOWN =>
        if can_exit_ST_FETCH_RM_INFO_AFTER_SHUTDOWN = '1' then 
          next_state <= ST_WAIT_FOR_TRIGGER;
        end if;

      -- coverage off
      when others => next_state <= ST_POR;
      -- coverage on
    end case;
  end process p_fsm;

  -- -----------------------------------------------------------------------------------------
  -- The FSM :END
  -- -----------------------------------------------------------------------------------------


  -- -----------------------------------------------------------------------------------------
  -- Outputs to the RM & SW
  -- -----------------------------------------------------------------------------------------
  --
  -- rm_decouple rules
  -- -----------------
  -- 1. If VS is empty then rm_decouple = 1, even when the PRC is in reset
  -- 2. If VS is full, rm_decouple should generaly be 0.  However, it will
  --    assert after we shutdown an existing RM and deassert again when we finish loading it.
  --    It will be 1 when we start up any SW for it, but will be 0 if we reset it

  process (clk)
  begin
    if rising_edge(clk) then
      if reset = C_RESET_ACTIVE_LEVEL then
        sw_startup_req_i  <= '0';
        rm_shutdown_req_i <= '0';
        rm_reset_i <= not reset_required(0);

        in_post_reset_startup <= '1';

        -- If the VSM is empty then keep decouple asserted even during reset
        if full_flag = '0' then 
          rm_decouple_i   <= '1';
        else
          rm_decouple_i   <= '0';
        end if;

      else

        if current_state = ST_SHUTDOWN then
          in_post_reset_startup <= '0';
        end if;
        
        if transfer_ctrl_chan_data  = '1' and in_shutdown = '1' and s_axis_ctrl_cmd = PC_USER_CTRL_CMD then
          -- AXI Control Channel is taking over
          rm_decouple_i <= s_axis_ctrl_tdata(PC_AXIS_RM_DECOUPLE_BIT);

        elsif transfer_ctrl_reg_data  = '1' and in_shutdown = '1' and ctrl_reg_cmd = PC_USER_CTRL_CMD then
          -- AXI Control Register is taking over
          rm_decouple_i <= reg_wdata_i(PC_CTRL_REG_RM_DECOUPLE_BIT);

        elsif user_restarted_with_status = '1' and full_flag = '0' then
          -- The user is exiting shutdown with an empty status.  Assert decouple as quickly as possible
          rm_decouple_i <= '1';
         
        elsif in_shutdown = '0' then 
          -- VSM is taking over

          if (current_state = ST_WAIT_FOR_TRIGGER) then
            in_post_reset_startup <= '0';
          end if;

          if
            (full_flag = '0') -- Always decouple if the Virtual Socket is empty

            or

            -- We are loading an RM, so assert in the following states.  Some of these may also occur
            -- in the post-reset RM startup phase.  These need to be skipped
            (
              (current_state = ST_WAIT_FOR_DONE or current_state = ST_STARTUP_SW or
               -- The RM is shutdown before it gets to this stage so decouple it - it's no longer safely part of the design
               current_state = ST_START_FETCH_RM_INFO or current_state = ST_FETCH_RM_INFO)
              and in_post_reset_startup = '0'
              )

          then
            rm_decouple_i <= '1';
          else
            rm_decouple_i <= '0';
          end if;
        end if;

        if transfer_ctrl_chan_data  = '1' and in_shutdown = '1' and s_axis_ctrl_cmd = PC_USER_CTRL_CMD then
          -- AXI Control Channel is taking over
          rm_shutdown_req_i <= s_axis_ctrl_tdata(PC_AXIS_RM_SHUTDOWN_REQ_BIT);

        elsif transfer_ctrl_reg_data  = '1' and in_shutdown = '1' and ctrl_reg_cmd = PC_USER_CTRL_CMD then
          -- AXI Control Register is taking over
          rm_shutdown_req_i <= reg_wdata_i(PC_CTRL_REG_RM_SHUTDOWN_REQ_BIT);
        elsif in_shutdown = '0' then 
          -- VSM is taking over
          if current_state = ST_SHUTDOWN_HW then
            rm_shutdown_req_i <= '1';
          else
            rm_shutdown_req_i <= '0';
          end if;
        end if;

        if transfer_ctrl_chan_data  = '1' and in_shutdown = '1' and s_axis_ctrl_cmd = PC_USER_CTRL_CMD then
          -- AXI Control Channel is taking over
          sw_startup_req_i <= s_axis_ctrl_tdata(PC_AXIS_SW_STARTUP_REQ_BIT);

        elsif transfer_ctrl_reg_data  = '1' and in_shutdown = '1' and ctrl_reg_cmd = PC_USER_CTRL_CMD then
          -- AXI Control Register is taking over
          sw_startup_req_i <= reg_wdata_i(PC_CTRL_REG_SW_STARTUP_REQ_BIT);

        elsif in_shutdown = '0' then 
          -- VSM is taking over
          if current_state = ST_STARTUP_SW and can_exit_ST_STARTUP_SW = '0'  then
            sw_startup_req_i <= '1';
          else
            sw_startup_req_i <= '0';
          end if;
        end if;


        if transfer_ctrl_chan_data  = '1' and in_shutdown = '1' and s_axis_ctrl_cmd = PC_USER_CTRL_CMD then
          -- AXI Control Channel is taking over
          rm_reset_i <= s_axis_ctrl_tdata(PC_AXIS_RM_RESET_BIT);

        elsif transfer_ctrl_reg_data  = '1' and in_shutdown = '1' and ctrl_reg_cmd = PC_USER_CTRL_CMD then
          -- AXI Control Register is taking over
          rm_reset_i <= reg_wdata_i(PC_CTRL_REG_RM_RESET_BIT);

        elsif in_shutdown = '0' then 
          -- VSM is taking over
         if current_state = ST_PRE_RESET_RM then
            -- The  LSB of  PC_RM_LOW_RESET_REQUIRED and PC_RM_HIGH_RESET_REQUIRED
            -- encodes the level 
            rm_reset_i <= reset_required(0);

          elsif 
                (current_state = ST_FETCH_RM_INFO                and can_exit_ST_FETCH_RM_INFO = '1'                ) or
                (current_state = ST_FETCH_RM_INFO_AFTER_SHUTDOWN and can_exit_ST_FETCH_RM_INFO_AFTER_SHUTDOWN = '1' ) or
                (current_state = ST_RESET_RM                     and can_exit_ST_RESET_RM = '1'                     ) or 
                (current_state = ST_FETCH_RM_INFO_AFTER_RESET and can_exit_ST_FETCH_RM_INFO_AFTER_RESET = '1'       ) or
                (current_state = ST_POR                          and can_exit_ST_POR = '1'                          ) then 

             -- Set rm_reset to non-active value when we start loading the RM, and when we finish resetting
             -- it.  This makes sure we have a visible pulse. It's also critical in case the RM has an edge
             -- sensitive reset rather than just a level sensitive reset
            rm_reset_i <= not reset_required(0);
          end if;
        end if;
      end if;
    end if;
  end process;      

  rm_reset        <= rm_reset_i;
  rm_decouple     <= rm_decouple_i;
  rm_shutdown_req <= rm_shutdown_req_i; 
  sw_startup_req  <= sw_startup_req_i;

  p_sw_shutdown_req: process (clk)
  begin
    if rising_edge(clk) then
      if reset = C_RESET_ACTIVE_LEVEL then
        sw_shutdown_req_i <= '0';
      else
        if in_shutdown = '0' then 
          -- VSM is taking over
          if current_state = ST_SHUTDOWN_SW  and can_exit_ST_SHUTDOWN_SW = '0' then
            sw_shutdown_req_i <= '1';
          else
            sw_shutdown_req_i <= '0';
          end if;
        elsif transfer_ctrl_chan_data  = '1' and s_axis_ctrl_cmd = PC_USER_CTRL_CMD then
          -- AXI Control Channel is taking over
          sw_shutdown_req_i <= s_axis_ctrl_tdata(PC_AXIS_SW_SHUTDOWN_REQ_BIT);
         
        elsif transfer_ctrl_reg_data  = '1' and ctrl_reg_cmd = PC_USER_CTRL_CMD then
          -- AXI Control Register is taking over
          sw_shutdown_req_i <= reg_wdata_i(PC_CTRL_REG_SW_SHUTDOWN_REQ_BIT);
        end if;
      end if;
    end if;
  end process;      
  sw_shutdown_req <= sw_shutdown_req_i;


  user_ctrl_command_seen <= '1' when transfer_ctrl_chan_data  = '1' and in_shutdown = '1' and s_axis_ctrl_cmd = PC_USER_CTRL_CMD else
                            '1' when transfer_ctrl_reg_data   = '1' and in_shutdown = '1' and    ctrl_reg_cmd = PC_USER_CTRL_CMD else
                            '0';

  -- -----------------------------------------------------------------------------------------
  -- Outputs to the RM & SW :END
  -- -----------------------------------------------------------------------------------------

  -- -----------------------------------------------------------------------------------------
  -- Outputs to the Fetch Block
  -- -----------------------------------------------------------------------------------------
  fetch_vs_id_out(C_VS_ID_WIDTH-1 downto 0) <= std_logic_vector(to_unsigned(C_VS_ID, C_VS_ID_WIDTH));
  fetch_rm_id_out(C_RM_ID_WIDTH-1 downto 0) <= rm_id;
  fetch_bs_id_out(C_BS_ID_WIDTH-1 downto 0) <= bs_id;
  
  process (clk)
  begin
    if rising_edge(clk) then
      if reset = C_RESET_ACTIVE_LEVEL then
        fetch_req <= '0';
      else

        if (current_state = ST_FETCH_RM_INFO and can_exit_ST_FETCH_RM_INFO = '1')  then
          fetch_req <= '1';
        else
          fetch_req <= '0';
        end if;
      end if;
    end if;
  end process;

  -- fetch_addr and fetch_size are registered in a process dealing with accesses to the BS Info
  -- table.  This is to try and infer a registered LUTRAM 

  -- -----------------------------------------------------------------------------------------
  -- Outputs to the Fetch Block :END
  -- -----------------------------------------------------------------------------------------
  

  -- -----------------------------------------------------------------------------------------
  -- Trigger Related Signals
  -- -----------------------------------------------------------------------------------------

  -- The SW Trigger register
  -- ----------------------

  sw_trigger_register(PC_SW_TRIGGER_STATUS_LSB) <= sw_trigger_pending;
  sw_trigger_register(C_TRIGGER_ID_WIDTH+PC_SW_TRIGGER_ID_LSB-1 downto PC_SW_TRIGGER_ID_LSB) <= sw_trigger_id;
  
  reg_read_complete_sw_trigger_reg <=  '1' when read_from_vsm_registers = '1' and to_integer(unsigned(reg_select_slice)) = PC_VSM_SW_TRIGGER_REG_OFFSET 
                                        else '0';

  p_using_sw_trigger : process (clk)
  begin
    if rising_edge(clk) then
      if reset = C_RESET_ACTIVE_LEVEL then
        using_sw_trigger <= '0';
      else

        -- Make the decision on which trigger to use when entering ST_FETCH_RM_INFO.
        -- For simplicity, always use a SW trigger if there is one waiting

        if current_state = ST_START_FETCH_RM_INFO and sw_trigger_pending = '1' and load_flag = '1' then
          using_sw_trigger <= '1';
        elsif (current_state = ST_WAIT_FOR_DONE and can_exit_ST_WAIT_FOR_DONE = '1') 

        then
          using_sw_trigger <= '0';
        end if;

      end if;
    end if;
  end process p_using_sw_trigger;


 
  p_sw_trigger_id : process (clk)
  begin
    if rising_edge(clk) then
      -- Don't bother reseting this

      reg_write_complete_sw_trigger_reg <= '0';
      if write_to_sw_trigger_reg = '1' then
        sw_trigger_id <= reg_wdata_i(C_TRIGGER_ID_WIDTH + PC_SW_TRIGGER_ID_LSB-1 downto PC_SW_TRIGGER_ID_LSB);
        reg_write_complete_sw_trigger_reg <= '1';
      end if;
    end if;
  end process p_sw_trigger_id;

  p_sw_trigger_pending : process (clk)
  begin
    if rising_edge(clk) then
      if reset = C_RESET_ACTIVE_LEVEL then
        sw_trigger_pending <= '0';
      else
        if write_to_sw_trigger_reg = '1'  and reg_write_complete_sw_trigger_reg = '1' then
          sw_trigger_pending <= '1';

        elsif current_state = ST_FETCH_RM_INFO and can_exit_ST_FETCH_RM_INFO = '1' and using_sw_trigger = '1' then

          sw_trigger_pending <= '0';
        end if;
      end if;
    end if;
  end process p_sw_trigger_pending;


  -- Generate the ready_for_hw_trigger pulse. This is the read enable on the trigger FIFO, 
  -- so just assert for a single cycle. It removes the trigger that has just been processed 
  -- and exposes a new one.
  --
  p_ready_for_hw_trigger : process (clk)
  begin
    if rising_edge(clk) then
      if reset = C_RESET_ACTIVE_LEVEL then
        ready_for_hw_trigger <= '0';
      else
        if hw_trigger_used = '1' then 
          ready_for_hw_trigger <= '1';
        else
          ready_for_hw_trigger <= '0';
        end if;
      end if;
      end if;
  end process p_ready_for_hw_trigger;

  
  -- The Trigger Detector needs time to clear itself and find the next trigger.  Let it start as soon as is possible.
  --
  hw_trigger_used <= '1' when current_state = ST_FETCH_RM_INFO and can_exit_ST_FETCH_RM_INFO = '1' and using_sw_trigger = '0' and load_flag = '1' else
                         '0';


  -- -----------------------------------------------------------------------------------------
  -- Trigger Related Signals :END
  -- -----------------------------------------------------------------------------------------


  -- -----------------------------------------------------------------------------------------
  -- Internal Status and control signals
  -- -----------------------------------------------------------------------------------------
  -- NOTE: in_shutdown lags current_state = ST_SHUTDOWN by a cycle, so make sure to only use
  --       in_shutdown in the code.  Using both in_shutdown and current_state = ST_SHUTDOWN could
  --       lead to errors if one indicated shutdown and the other didn't

  p_in_shutdown : process (clk)
  begin
    if rising_edge(clk) then
      -- There's a cycle after reset is released when the FSM is still in ST_POR which means
      -- in_shutdown will go to 0.  If this overlaps with a command to bring it out of shutdown,
      -- the FSM stays in shutdown but the status says it has exited.  The testbench will then timeout
      --
      if reset = C_RESET_ACTIVE_LEVEL or current_state = ST_POR then
        -- If the user said start in shutdown and skip rm startup after reset, then
        -- set the in_shutdown flag.
        -- If the user said start in shutdown but don't skip rm startup after reset, then
        -- don't set the in_shutdown flag.  The shutdown_bit will be set which will move
        -- the VSM into shutdown when the startup is complete

        -- If the VSM is full then I have to go and fetch the RM info, so I'm not quite in shutdown yet
        in_shutdown    <= conv_bool_to_sl (C_START_IN_SHUTDOWN > 0 and C_SKIP_RM_STARTUP_AFTER_RESET = '1') and (not full_flag) ;
        in_shutdown_d1 <= conv_bool_to_sl (C_START_IN_SHUTDOWN > 0 and C_SKIP_RM_STARTUP_AFTER_RESET = '1') and (not full_flag) ;

      else

        if current_state = ST_SHUTDOWN and shutdown_bit = '1' then 
          in_shutdown  <= '1';
        else 
          in_shutdown  <= '0';
        end if;

        in_shutdown_d1 <= in_shutdown;
      end if;
    end if;
  end process p_in_shutdown;

  p_cp_error_flag : process (clk)
  begin
    -- cp_error_flag is not reset.  If an RM load failed, then a local reset does not
    -- change that fact, and I need to track what's in the Virtual Socket

    if rising_edge(clk) then
      if cp_error = '1' then 
        cp_error_flag  <= '1';
      elsif rm_id_valid = '1' or user_restarted_with_status = '1' or user_ctrl_command_seen = '1' then  
        -- I'm either loading a new RM, or the user restarted the RM with status set, 
        -- so, empty or full, they decided that the error is clear
        cp_error_flag  <= '0';
      end if;
    end if;
  end process p_cp_error_flag;

  p_cp_lost_error_flag : process (clk)
  begin
    -- cp_lost_error_flag is not reset.  If an RM load failed, then a local reset does not
    -- change that fact, and I need to track what's in the Virtual Socket

    if rising_edge(clk) then
      if cp_lost_error = '1' then 
        cp_lost_error_flag  <= '1';
      elsif rm_id_valid = '1' or user_restarted_with_status = '1' or user_ctrl_command_seen = '1' then  
        -- I'm either loading a new RM, or the user restarted the RM with status set, 
        -- so, empty or full, they decided that the lost_error is clear
        cp_lost_error_flag  <= '0';
      end if;
    end if;
  end process p_cp_lost_error_flag;



  p_fetch_error_flag : process (clk)
  begin
    -- fetch_error_flag is not reset.  If an RM load failed, then a local reset does not
    -- change that fact, and I need to track what's in the Virtual Socket

    if rising_edge(clk) then
      if current_state = ST_WAIT_FOR_DONE and fetch_error = '1' then 
        fetch_error_flag  <= '1';
      elsif rm_id_valid = '1' or user_restarted_with_status = '1' or user_ctrl_command_seen = '1' then  
        -- I'm either loading a new RM, or the user restarted the RM with status set, 
        -- so, empty or full, they decided that the error is clear
        fetch_error_flag  <= '0';
      end if;
    end if;
  end process p_fetch_error_flag;

  p_decompress_bad_format_error_flag : process (clk)
  begin
    -- decompress_bad_format_error_flag is not reset.  If an RM load failed, then a local reset does not
    -- change that fact, and I need to track what's in the Virtual Socket

    if rising_edge(clk) then
      if current_state = ST_WAIT_FOR_DONE and decompress_bad_format_error = '1' then 
        decompress_bad_format_error_flag  <= '1';
      elsif rm_id_valid = '1' or user_restarted_with_status = '1' or user_ctrl_command_seen = '1' then  
        -- I'm either loading a new RM, or the user restarted the RM with status set, 
        -- so, empty or full, they decided that the error is clear
        decompress_bad_format_error_flag  <= '0';
      end if;
    end if;
  end process p_decompress_bad_format_error_flag;

  p_decompress_bad_size_error_flag : process (clk)
  begin
    -- decompress_bad_size_error_flag is not reset.  If an RM load failed, then a local reset does not
    -- change that fact, and I need to track what's in the Virtual Socket

    if rising_edge(clk) then
      if current_state = ST_WAIT_FOR_DONE and decompress_bad_size_error = '1' then 
        decompress_bad_size_error_flag  <= '1';
      elsif rm_id_valid = '1' or user_restarted_with_status = '1' or user_ctrl_command_seen = '1' then  
        -- I'm either loading a new RM, or the user restarted the RM with status set, 
        -- so, empty or full, they decided that the error is clear
        decompress_bad_size_error_flag  <= '0';
      end if;
    end if;
  end process p_decompress_bad_size_error_flag;



  p_bad_config_error_flag : process (clk)
  begin
    -- bad_config_error_flag is not reset.  If an RM load failed, then a local reset does not
    -- change that fact, and I need to track what's in the Virtual Socket

    if rising_edge(clk) then
      if bad_config_error = '1' then 
        bad_config_error_flag  <= '1';
      elsif rm_id_valid = '1' or user_restarted_with_status = '1' or user_ctrl_command_seen = '1' then  
        -- I'm either loading a new RM, or the user restarted the RM with status set, 
        -- so, empty or full, they decided that the error is clear
        bad_config_error_flag  <= '0';
      end if;
    end if;
  end process p_bad_config_error_flag;



  -- The full flag can be written to by the VSM, the AXI Stream interface and the AXI Lite interface.
  -- Stream is highest priority, VSM is lowest.                                        
  -- However, the stream and LITE bits are only valid if the VSM is in shutdown,
  -- and the VSM only updates when it's not in shutdown, so there's no way an AXI write can
  -- block a VSM write
  -- 
  p_full_flag : process (clk)
  begin
    if rising_edge(clk) then
      -- full_flag is not reset.  If an RM is loaded, then a local reset does not
      -- change that fact, and I need to track what's in the Virtual Socket

      user_restarted_with_status <= '0';
      
      if transfer_ctrl_chan_data = '1' and in_shutdown = '1' and s_axis_ctrl_cmd = PC_RESTART_WITH_STATUS_CMD then 
        full_flag  <= s_axis_ctrl_tdata(PC_AXIS_CTRL_BYTE_INFO_LSB);
        user_restarted_with_status <= '1';

      elsif transfer_ctrl_reg_data  = '1' and in_shutdown = '1' and ctrl_reg_cmd = PC_RESTART_WITH_STATUS_CMD then

        full_flag  <= reg_wdata_i(PC_CTRL_REG_BYTE_INFO_LSB);
        user_restarted_with_status <= '1';

      elsif current_state = ST_WAIT_FOR_DONE and cp_done = '1' and (cp_error = '1' or fetch_error_flag = '1' or decompress_bad_format_error_flag = '1' or decompress_bad_size_error_flag = '1') then 
        full_flag  <= '0';

        -- If there's a bad_config_error, the loaded RM will still be fully present.  However, it may have been shutdown and out
        -- of sync with the system because rm_decouple had been asserted.  The system certainly doesn't expect it to be there.
        -- 
      elsif current_state = ST_WAIT_FOR_DONE and bad_config_error_flag = '1' then 
        full_flag  <= '0';
      elsif current_state = ST_WAIT_FOR_DONE and cp_done = '1' then 
        full_flag  <= '1';
      end if;
    end if;
  end process p_full_flag;

  decrement_reset_duration <= '1' when current_state = ST_PRE_RESET_RM or current_state = ST_RESET_RM else '0';

  -- Handle reset_duration seperately.  It gets loaded into a down counter, and
  -- that needs a seperate process
  process (clk)
  begin
    if rising_edge(clk) then
      -- No reset for this.  It will get loaded again for the first RM
      -- after a reset, so no need to clear it

      if current_state = ST_POR then
         -- On reset, load the stored value.  As reset_duration decrement, I can't use 
         -- it after a warm reset
         reset_duration <= reset_duration_stored;

      elsif rm_info_valid = '1' then
        -- We're doing an internal read from both RM INFO TABLE lutrams.
        -- 
        -- The reset duration value is stored with a -1 offset (0 means 1 cycle, etc) so I need to add
        -- that 1 back on here. However, if I do that on load, I add an adder between a LUTRAM and 
        -- its register, and that's slow.  Instead, load it and then add one before the reset value is
        -- needed

        reset_duration <= reset_duration_cmb;

      elsif bs_info_valid = '1' then
       reset_duration        <= std_logic_vector(unsigned(reset_duration) + 1);
       reset_duration_stored <= std_logic_vector(unsigned(reset_duration) + 1);

      elsif decrement_reset_duration = '1' then
        reset_duration <= std_logic_vector(unsigned(reset_duration) - 1);
      end if;
    end if;
  end process;

  
  -- -----------------------------------------------------------------------------------------
  -- Internal Status and Control signals :END
  -- -----------------------------------------------------------------------------------------


  -- -----------------------------------------------------------------------------------------
  -- AXI Lite accesses to the register banks
  -- -----------------------------------------------------------------------------------------

  -- Decompose the address into the routing components
  bank_select_slice   <= reg_addr_i(C_TABLE_SELECT_MSB downto C_TABLE_SELECT_LSB);
  reg_select_slice    <= reg_addr_i(C_REG_SELECT_MSB   downto C_REG_SELECT_LSB  );

  trigger_reg_address <= reg_select_slice(C_TRIGGER_ADDR_WIDTH - 1 downto 0); 
  trigger_reg_address_unused_bits <= reg_select_slice((C_REG_SELECT_MSB - C_REG_SELECT_LSB) downto C_TRIGGER_ADDR_WIDTH); 


  rm_info_reg_address <= reg_select_slice(C_RM_ADDR_WIDTH +1 - 1 downto 1); 
  rm_info_reg_address_unused_bits <= reg_select_slice((C_REG_SELECT_MSB - C_REG_SELECT_LSB) downto C_RM_ADDR_WIDTH +1); 

  -- bs_info_reg_address is the address used to access the line in the table.  It is a slice of
  -- the axi address with the bottom 2 bits (2'b00) removed, and the offset removed (that selects with 
  -- LUTRAM to access)
  bs_info_reg_address <= reg_select_slice(C_BS_ADDR_WIDTH +2 - 1 downto 2); 
  bs_info_reg_address_unused_bits <= reg_select_slice((C_REG_SELECT_MSB - C_REG_SELECT_LSB) downto C_BS_ADDR_WIDTH+2); 

  
  -- Generate some centralised control signals to make it easier to interact with the registers
  --

  write_to_registers_cmb         <= '1' when reg_tvalid_i = '1' and reg_rnw_i = '0' else '0';
  write_to_vsm_registers_cmb     <= '1' when write_to_registers_cmb      = '1' and to_integer(unsigned(bank_select_slice)) = PC_VSM_GENERAL_REG_SEL else '0';
  write_to_trigger_registers_cmb <= '1' when write_to_registers_cmb      = '1' and to_integer(unsigned(bank_select_slice)) = PC_VSM_TRIGGER_REG_SEL else '0';
  write_to_rm_info_registers_cmb <= '1' when write_to_registers_cmb      = '1' and to_integer(unsigned(bank_select_slice)) = PC_VSM_RM_REG_SEL else '0';
  write_to_bs_info_registers_cmb <= '1' when write_to_registers_cmb      = '1' and to_integer(unsigned(bank_select_slice)) = PC_VSM_BS_REG_SEL else '0';
  write_to_ctrl_reg_cmb          <= '1' when write_to_vsm_registers_cmb  = '1' and to_integer(unsigned( reg_select_slice)) = PC_VSM_CTRL_REG_OFFSET else '0';
  write_to_sw_trigger_reg_cmb    <= '1' when write_to_vsm_registers_cmb  = '1' and to_integer(unsigned( reg_select_slice)) = PC_VSM_SW_TRIGGER_REG_OFFSET else '0';

  -- Register these signals before they are used anywhere else.  
    b_write_to_registers_cmb_del : block
    signal write_to_registers_cmb_vec  : std_logic_vector(1-1 downto 0);
    signal write_to_registers_vec : std_logic_vector(1-1 downto 0);
  begin
    write_to_registers_cmb_vec(0) <= write_to_registers_cmb;
    write_to_registers <= write_to_registers_vec(0);
    i_write_to_registers_cmb_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => 0)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => write_to_registers_cmb_vec,
                          q   => write_to_registers_vec
                         );
  end block;

    b_write_to_vsm_registers_cmb_del : block
    signal write_to_vsm_registers_cmb_vec  : std_logic_vector(1-1 downto 0);
    signal write_to_vsm_registers_vec : std_logic_vector(1-1 downto 0);
  begin
    write_to_vsm_registers_cmb_vec(0) <= write_to_vsm_registers_cmb;
    write_to_vsm_registers <= write_to_vsm_registers_vec(0);
    i_write_to_vsm_registers_cmb_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => 0)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => write_to_vsm_registers_cmb_vec,
                          q   => write_to_vsm_registers_vec
                         );
  end block;

    b_write_to_trigger_registers_cmb_del : block
    signal write_to_trigger_registers_cmb_vec  : std_logic_vector(1-1 downto 0);
    signal write_to_trigger_registers_vec : std_logic_vector(1-1 downto 0);
  begin
    write_to_trigger_registers_cmb_vec(0) <= write_to_trigger_registers_cmb;
    write_to_trigger_registers <= write_to_trigger_registers_vec(0);
    i_write_to_trigger_registers_cmb_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => 0)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => write_to_trigger_registers_cmb_vec,
                          q   => write_to_trigger_registers_vec
                         );
  end block;

    b_write_to_rm_info_registers_cmb_del : block
    signal write_to_rm_info_registers_cmb_vec  : std_logic_vector(1-1 downto 0);
    signal write_to_rm_info_registers_vec : std_logic_vector(1-1 downto 0);
  begin
    write_to_rm_info_registers_cmb_vec(0) <= write_to_rm_info_registers_cmb;
    write_to_rm_info_registers <= write_to_rm_info_registers_vec(0);
    i_write_to_rm_info_registers_cmb_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => 0)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => write_to_rm_info_registers_cmb_vec,
                          q   => write_to_rm_info_registers_vec
                         );
  end block;

    b_write_to_bs_info_registers_cmb_del : block
    signal write_to_bs_info_registers_cmb_vec  : std_logic_vector(1-1 downto 0);
    signal write_to_bs_info_registers_vec : std_logic_vector(1-1 downto 0);
  begin
    write_to_bs_info_registers_cmb_vec(0) <= write_to_bs_info_registers_cmb;
    write_to_bs_info_registers <= write_to_bs_info_registers_vec(0);
    i_write_to_bs_info_registers_cmb_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => 0)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => write_to_bs_info_registers_cmb_vec,
                          q   => write_to_bs_info_registers_vec
                         );
  end block;

    b_write_to_ctrl_reg_cmb_del : block
    signal write_to_ctrl_reg_cmb_vec  : std_logic_vector(1-1 downto 0);
    signal write_to_ctrl_reg_vec : std_logic_vector(1-1 downto 0);
  begin
    write_to_ctrl_reg_cmb_vec(0) <= write_to_ctrl_reg_cmb;
    write_to_ctrl_reg <= write_to_ctrl_reg_vec(0);
    i_write_to_ctrl_reg_cmb_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => 0)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => write_to_ctrl_reg_cmb_vec,
                          q   => write_to_ctrl_reg_vec
                         );
  end block;

    b_write_to_sw_trigger_reg_cmb_del : block
    signal write_to_sw_trigger_reg_cmb_vec  : std_logic_vector(1-1 downto 0);
    signal write_to_sw_trigger_reg_vec : std_logic_vector(1-1 downto 0);
  begin
    write_to_sw_trigger_reg_cmb_vec(0) <= write_to_sw_trigger_reg_cmb;
    write_to_sw_trigger_reg <= write_to_sw_trigger_reg_vec(0);
    i_write_to_sw_trigger_reg_cmb_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => 0)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => write_to_sw_trigger_reg_cmb_vec,
                          q   => write_to_sw_trigger_reg_vec
                         );
  end block;




  -- We're writing to a table that doesn't exist.  I've split the general table as registers
  -- to pick up writes to registers that don't exist in that table
  --
  write_to_bad_table <= '1' when write_to_registers         = '1' AND 
                                 write_to_trigger_registers = '0' AND
                                 write_to_rm_info_registers = '0' AND
                                 write_to_bs_info_registers = '0' AND
                                 write_to_ctrl_reg          = '0' AND
                                 write_to_sw_trigger_reg    = '0' else '0';  


  read_from_registers_cmb         <= '1' when reg_tvalid_i = '1' and reg_rnw_i = '1' else '0';
  read_from_vsm_registers_cmb     <= '1' when reg_tvalid_i = '1' and reg_rnw_i = '1' and to_integer(unsigned(bank_select_slice)) = PC_VSM_GENERAL_REG_SEL else '0';
  read_from_trigger_registers_cmb <= '1' when read_from_registers_cmb = '1' and to_integer(unsigned(bank_select_slice)) = PC_VSM_TRIGGER_REG_SEL else '0';
  read_from_rm_info_registers_cmb <= '1' when read_from_registers_cmb = '1' and to_integer(unsigned(bank_select_slice)) = PC_VSM_RM_REG_SEL else '0';
  read_from_bs_info_registers_cmb <= '1' when read_from_registers_cmb = '1' and to_integer(unsigned(bank_select_slice)) = PC_VSM_BS_REG_SEL else '0';
  read_from_sw_trigger_reg_cmb    <= '1' when read_from_vsm_registers_cmb = '1' and to_integer(unsigned(reg_select_slice)) = PC_VSM_SW_TRIGGER_REG_OFFSET else '0';
  read_from_status_reg_cmb        <= '1' when read_from_vsm_registers_cmb = '1' and to_integer(unsigned(reg_select_slice)) = PC_VSM_STATUS_REG_OFFSET     else '0';


  -- Register these signals before they are used anywhere else.  
    b_read_from_registers_cmb_del : block
    signal read_from_registers_cmb_vec  : std_logic_vector(1-1 downto 0);
    signal read_from_registers_vec : std_logic_vector(1-1 downto 0);
  begin
    read_from_registers_cmb_vec(0) <= read_from_registers_cmb;
    read_from_registers <= read_from_registers_vec(0);
    i_read_from_registers_cmb_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => 0)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => read_from_registers_cmb_vec,
                          q   => read_from_registers_vec
                         );
  end block;

    b_read_from_vsm_registers_cmb_del : block
    signal read_from_vsm_registers_cmb_vec  : std_logic_vector(1-1 downto 0);
    signal read_from_vsm_registers_vec : std_logic_vector(1-1 downto 0);
  begin
    read_from_vsm_registers_cmb_vec(0) <= read_from_vsm_registers_cmb;
    read_from_vsm_registers <= read_from_vsm_registers_vec(0);
    i_read_from_vsm_registers_cmb_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => 0)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => read_from_vsm_registers_cmb_vec,
                          q   => read_from_vsm_registers_vec
                         );
  end block;

    b_read_from_trigger_registers_cmb_del : block
    signal read_from_trigger_registers_cmb_vec  : std_logic_vector(1-1 downto 0);
    signal read_from_trigger_registers_vec : std_logic_vector(1-1 downto 0);
  begin
    read_from_trigger_registers_cmb_vec(0) <= read_from_trigger_registers_cmb;
    read_from_trigger_registers <= read_from_trigger_registers_vec(0);
    i_read_from_trigger_registers_cmb_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => 0)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => read_from_trigger_registers_cmb_vec,
                          q   => read_from_trigger_registers_vec
                         );
  end block;

    b_read_from_rm_info_registers_cmb_del : block
    signal read_from_rm_info_registers_cmb_vec  : std_logic_vector(1-1 downto 0);
    signal read_from_rm_info_registers_vec : std_logic_vector(1-1 downto 0);
  begin
    read_from_rm_info_registers_cmb_vec(0) <= read_from_rm_info_registers_cmb;
    read_from_rm_info_registers <= read_from_rm_info_registers_vec(0);
    i_read_from_rm_info_registers_cmb_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => 0)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => read_from_rm_info_registers_cmb_vec,
                          q   => read_from_rm_info_registers_vec
                         );
  end block;

    b_read_from_bs_info_registers_cmb_del : block
    signal read_from_bs_info_registers_cmb_vec  : std_logic_vector(1-1 downto 0);
    signal read_from_bs_info_registers_vec : std_logic_vector(1-1 downto 0);
  begin
    read_from_bs_info_registers_cmb_vec(0) <= read_from_bs_info_registers_cmb;
    read_from_bs_info_registers <= read_from_bs_info_registers_vec(0);
    i_read_from_bs_info_registers_cmb_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => 0)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => read_from_bs_info_registers_cmb_vec,
                          q   => read_from_bs_info_registers_vec
                         );
  end block;

    b_read_from_sw_trigger_reg_cmb_del : block
    signal read_from_sw_trigger_reg_cmb_vec  : std_logic_vector(1-1 downto 0);
    signal read_from_sw_trigger_reg_vec : std_logic_vector(1-1 downto 0);
  begin
    read_from_sw_trigger_reg_cmb_vec(0) <= read_from_sw_trigger_reg_cmb;
    read_from_sw_trigger_reg <= read_from_sw_trigger_reg_vec(0);
    i_read_from_sw_trigger_reg_cmb_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => 0)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => read_from_sw_trigger_reg_cmb_vec,
                          q   => read_from_sw_trigger_reg_vec
                         );
  end block;

    b_read_from_status_reg_cmb_del : block
    signal read_from_status_reg_cmb_vec  : std_logic_vector(1-1 downto 0);
    signal read_from_status_reg_vec : std_logic_vector(1-1 downto 0);
  begin
    read_from_status_reg_cmb_vec(0) <= read_from_status_reg_cmb;
    read_from_status_reg <= read_from_status_reg_vec(0);
    i_read_from_status_reg_cmb_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => 0)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => read_from_status_reg_cmb_vec,
                          q   => read_from_status_reg_vec
                         );
  end block;


  -- We're reading from a table that doesn't exist.  I've split the general table as registers
  -- to pick up reads from registers that don't exist in that table
  --
  read_from_bad_table <= '1' when read_from_registers         = '1' AND 
                                  read_from_trigger_registers = '0' AND
                                  read_from_rm_info_registers = '0' AND
                                  read_from_bs_info_registers = '0' AND
                                  read_from_status_reg        = '0' AND
                                  read_from_sw_trigger_reg    = '0' 
                                else '0';

  -- TODO: Perhaps register these to improve timing?
  reg_read_complete_bad_table  <=  read_from_bad_table;
  reg_write_complete_bad_table <=  write_to_bad_table;


  -- Generate some control signals to show when reads and writes are finished
  --
  
  -- This might get slow so consider registering it and the read data
  reg_read_complete_cmb  <= reg_read_complete_trigger_table or
                            reg_read_complete_rm_table      or
                            reg_read_complete_bs_table      or
                            reg_read_complete_status_reg    or
                            reg_read_complete_sw_trigger_reg or
                            reg_read_complete_bad_table;


  reg_write_complete_cmb <= reg_write_complete_trigger_table or
                            reg_write_complete_rm_table      or
                            reg_write_complete_bs_table      or
                            reg_write_complete_ctrl_reg      or
                            reg_write_complete_sw_trigger_reg or
                            reg_write_complete_bad_table;

    b_reg_read_complete_cmb_del : block
    signal reg_read_complete_cmb_vec  : std_logic_vector(1-1 downto 0);
    signal reg_read_complete_vec : std_logic_vector(1-1 downto 0);
  begin
    reg_read_complete_cmb_vec(0) <= reg_read_complete_cmb;
    reg_read_complete <= reg_read_complete_vec(0);
    i_reg_read_complete_cmb_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => 0)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => reg_read_complete_cmb_vec,
                          q   => reg_read_complete_vec
                         );
  end block;

    b_reg_write_complete_cmb_del : block
    signal reg_write_complete_cmb_vec  : std_logic_vector(1-1 downto 0);
    signal reg_write_complete_vec : std_logic_vector(1-1 downto 0);
  begin
    reg_write_complete_cmb_vec(0) <= reg_write_complete_cmb;
    reg_write_complete <= reg_write_complete_vec(0);
    i_reg_write_complete_cmb_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => 0)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => reg_write_complete_cmb_vec,
                          q   => reg_write_complete_vec
                         );
  end block;


  reg_tready_d0     <= reg_write_complete or reg_read_complete;
   
  -- I've delayed reg_[read/write]_complete which delays reg_tready.  I need to delay the other return signals as well.

  b_reg_error: block
    signal reg_error_bad_table_cmb     : std_logic; 
    signal reg_error_trigger_table_cmb : std_logic;
    signal reg_error_rm_table_cmb      : std_logic;
    signal reg_error_bs_table_cmb      : std_logic;
    signal reg_error_bad_table_del     : std_logic;
    signal reg_error_trigger_table_del : std_logic;
    signal reg_error_rm_table_del      : std_logic;
    signal reg_error_bs_table_del      : std_logic;
  begin
    -- Combinatorially resolve the error from each register block.
    reg_error_bad_table_cmb     <= '1' when write_to_bad_table = '1' or read_from_bad_table = '1' else '0';

    reg_error_trigger_table_cmb <= '1' when (reg_read_complete_trigger_table  = '1' and bad_trigger_addr = '1') or
                                            (reg_write_complete_trigger_table = '1' and bad_trigger_addr = '1') 
                                       else '0';

    reg_error_rm_table_cmb      <= '1' when (reg_read_complete_rm_table  = '1' and bad_rm_info_addr = '1') or
                                            (reg_write_complete_rm_table = '1' and bad_rm_info_addr = '1')
                                       else '0';

    reg_error_bs_table_cmb      <= '1' when (reg_read_complete_bs_table  = '1' and bad_bs_info_addr = '1') or
                                            (reg_write_complete_bs_table = '1' and bad_bs_info_addr = '1')
                                       else '0';

    -- Delay these
    --
      b_reg_error_bad_table_cmb_del : block
    signal reg_error_bad_table_cmb_vec  : std_logic_vector(1-1 downto 0);
    signal reg_error_bad_table_del_vec : std_logic_vector(1-1 downto 0);
  begin
    reg_error_bad_table_cmb_vec(0) <= reg_error_bad_table_cmb;
    reg_error_bad_table_del <= reg_error_bad_table_del_vec(0);
    i_reg_error_bad_table_cmb_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => 0)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => reg_error_bad_table_cmb_vec,
                          q   => reg_error_bad_table_del_vec
                         );
  end block;

      b_reg_error_trigger_table_cmb_del : block
    signal reg_error_trigger_table_cmb_vec  : std_logic_vector(1-1 downto 0);
    signal reg_error_trigger_table_del_vec : std_logic_vector(1-1 downto 0);
  begin
    reg_error_trigger_table_cmb_vec(0) <= reg_error_trigger_table_cmb;
    reg_error_trigger_table_del <= reg_error_trigger_table_del_vec(0);
    i_reg_error_trigger_table_cmb_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => 0)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => reg_error_trigger_table_cmb_vec,
                          q   => reg_error_trigger_table_del_vec
                         );
  end block;

      b_reg_error_rm_table_cmb_del : block
    signal reg_error_rm_table_cmb_vec  : std_logic_vector(1-1 downto 0);
    signal reg_error_rm_table_del_vec : std_logic_vector(1-1 downto 0);
  begin
    reg_error_rm_table_cmb_vec(0) <= reg_error_rm_table_cmb;
    reg_error_rm_table_del <= reg_error_rm_table_del_vec(0);
    i_reg_error_rm_table_cmb_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => 0)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => reg_error_rm_table_cmb_vec,
                          q   => reg_error_rm_table_del_vec
                         );
  end block;

      b_reg_error_bs_table_cmb_del : block
    signal reg_error_bs_table_cmb_vec  : std_logic_vector(1-1 downto 0);
    signal reg_error_bs_table_del_vec : std_logic_vector(1-1 downto 0);
  begin
    reg_error_bs_table_cmb_vec(0) <= reg_error_bs_table_cmb;
    reg_error_bs_table_del <= reg_error_bs_table_del_vec(0);
    i_reg_error_bs_table_cmb_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => 0)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => reg_error_bs_table_cmb_vec,
                          q   => reg_error_bs_table_del_vec
                         );
  end block;


    -- Combine the delayed version into a singal. This isn't registered here but might be in the AXI LITE 
    -- interface or the top level which connects to the AXI Lite from the VSM
    --
    reg_error <= '1' when reg_error_bad_table_del      = '1' or
                           reg_error_trigger_table_del = '1' or
                           reg_error_rm_table_del      = '1' or  
                           reg_error_bs_table_del      = '1' else
                     '0';  
  end block;
  
  
  b_reg_rdata: block
     signal reg_read_complete_trigger_table_cmb  : std_logic := '0';
     signal reg_read_complete_rm_table_cmb       : std_logic := '0';
     signal reg_read_complete_bs_table_cmb       : std_logic := '0';
     signal reg_read_complete_vsm_registers_cmb  : std_logic := '0';


     signal reg_read_complete_trigger_table_del  : std_logic := '0';
     signal reg_read_complete_rm_table_del       : std_logic := '0';
     signal reg_read_complete_bs_table_del       : std_logic := '0';
     signal reg_read_complete_vsm_registers_del  : std_logic := '0';

     signal reg_rdata_trigger_table_cmb  : std_logic_vector(C_AXI_REG_DATA_WIDTH-1 downto 0);
     signal reg_rdata_rm_table_cmb       : std_logic_vector(C_AXI_REG_DATA_WIDTH-1 downto 0);
     signal reg_rdata_bs_table_cmb       : std_logic_vector(C_AXI_REG_DATA_WIDTH-1 downto 0);
     signal reg_rdata_vsm_reg_cmb        : std_logic_vector(C_AXI_REG_DATA_WIDTH-1 downto 0);

     signal reg_rdata_trigger_table_del  : std_logic_vector(C_AXI_REG_DATA_WIDTH-1 downto 0);
     signal reg_rdata_rm_table_del       : std_logic_vector(C_AXI_REG_DATA_WIDTH-1 downto 0);
     signal reg_rdata_bs_table_del       : std_logic_vector(C_AXI_REG_DATA_WIDTH-1 downto 0);
     signal reg_rdata_vsm_reg_del        : std_logic_vector(C_AXI_REG_DATA_WIDTH-1 downto 0);
  begin

    -- Combinatorially resolve the rdata from each register block.
    reg_rdata_trigger_table_cmb <= reg_rdata_trigger_table;
    reg_rdata_rm_table_cmb      <= reg_rdata_rm_table_address when reg_read_complete_rm_table      = '1' and reg_select_slice(0) = '0'  else
                                   reg_rdata_rm_table_ctrl; --    when reg_read_complete_rm_table      = '1' and reg_select_slice(0) = '1'  else

    reg_rdata_bs_table_cmb      <= reg_rdata_bs_table_id      when reg_read_complete_bs_table      = '1' and reg_select_slice(1 downto 0) = "00"  else
                                   reg_rdata_bs_table_address when reg_read_complete_bs_table      = '1' and reg_select_slice(1 downto 0) = "01"  else
                                   reg_rdata_bs_table_size    ;-- when reg_read_complete_bs_table      = '1' and reg_select_slice(1 downto 0) = "10"  else
                                   --(others => '0');

    reg_rdata_vsm_reg_cmb       <= status_register            when read_from_vsm_registers         = '1' and to_integer(unsigned(reg_select_slice)) = PC_VSM_STATUS_REG_OFFSET else
                                   sw_trigger_register; --        when read_from_vsm_registers         = '1' and to_integer(unsigned(reg_select_slice)) = PC_VSM_SW_TRIGGER_REG_OFFSET else
                                   --(others => '0') ; 

    reg_read_complete_trigger_table_cmb <= reg_read_complete_trigger_table;
    reg_read_complete_rm_table_cmb      <= reg_read_complete_rm_table;
    reg_read_complete_bs_table_cmb      <= reg_read_complete_bs_table; 
    reg_read_complete_vsm_registers_cmb <= read_from_vsm_registers; 

    -- Register the resolved data from each register block
    --  
      b_reg_rdata_trigger_table_cmb_del : block
    signal reg_rdata_trigger_table_cmb_vec  : std_logic_vector(C_AXI_REG_DATA_WIDTH-1 downto 0);
    signal reg_rdata_trigger_table_del_vec : std_logic_vector(C_AXI_REG_DATA_WIDTH-1 downto 0);
  begin
    reg_rdata_trigger_table_cmb_vec <= reg_rdata_trigger_table_cmb;
    reg_rdata_trigger_table_del <= reg_rdata_trigger_table_del_vec;
    i_reg_rdata_trigger_table_cmb_del : entity prc_v1_2_1.delay
             generic map (WIDTH => C_AXI_REG_DATA_WIDTH, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => 0)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => reg_rdata_trigger_table_cmb_vec,
                          q   => reg_rdata_trigger_table_del_vec
                         );
  end block;

      b_reg_rdata_rm_table_cmb_del : block
    signal reg_rdata_rm_table_cmb_vec  : std_logic_vector(C_AXI_REG_DATA_WIDTH-1 downto 0);
    signal reg_rdata_rm_table_del_vec : std_logic_vector(C_AXI_REG_DATA_WIDTH-1 downto 0);
  begin
    reg_rdata_rm_table_cmb_vec <= reg_rdata_rm_table_cmb;
    reg_rdata_rm_table_del <= reg_rdata_rm_table_del_vec;
    i_reg_rdata_rm_table_cmb_del : entity prc_v1_2_1.delay
             generic map (WIDTH => C_AXI_REG_DATA_WIDTH, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => 0)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => reg_rdata_rm_table_cmb_vec,
                          q   => reg_rdata_rm_table_del_vec
                         );
  end block;

      b_reg_rdata_bs_table_cmb_del : block
    signal reg_rdata_bs_table_cmb_vec  : std_logic_vector(C_AXI_REG_DATA_WIDTH-1 downto 0);
    signal reg_rdata_bs_table_del_vec : std_logic_vector(C_AXI_REG_DATA_WIDTH-1 downto 0);
  begin
    reg_rdata_bs_table_cmb_vec <= reg_rdata_bs_table_cmb;
    reg_rdata_bs_table_del <= reg_rdata_bs_table_del_vec;
    i_reg_rdata_bs_table_cmb_del : entity prc_v1_2_1.delay
             generic map (WIDTH => C_AXI_REG_DATA_WIDTH, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => 0)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => reg_rdata_bs_table_cmb_vec,
                          q   => reg_rdata_bs_table_del_vec
                         );
  end block;

      b_reg_rdata_vsm_reg_cmb_del : block
    signal reg_rdata_vsm_reg_cmb_vec  : std_logic_vector(C_AXI_REG_DATA_WIDTH-1 downto 0);
    signal reg_rdata_vsm_reg_del_vec : std_logic_vector(C_AXI_REG_DATA_WIDTH-1 downto 0);
  begin
    reg_rdata_vsm_reg_cmb_vec <= reg_rdata_vsm_reg_cmb;
    reg_rdata_vsm_reg_del <= reg_rdata_vsm_reg_del_vec;
    i_reg_rdata_vsm_reg_cmb_del : entity prc_v1_2_1.delay
             generic map (WIDTH => C_AXI_REG_DATA_WIDTH, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => 0)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => reg_rdata_vsm_reg_cmb_vec,
                          q   => reg_rdata_vsm_reg_del_vec
                         );
  end block;


      b_reg_read_complete_trigger_table_cmb_del : block
    signal reg_read_complete_trigger_table_cmb_vec  : std_logic_vector(1-1 downto 0);
    signal reg_read_complete_trigger_table_del_vec : std_logic_vector(1-1 downto 0);
  begin
    reg_read_complete_trigger_table_cmb_vec(0) <= reg_read_complete_trigger_table_cmb;
    reg_read_complete_trigger_table_del <= reg_read_complete_trigger_table_del_vec(0);
    i_reg_read_complete_trigger_table_cmb_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => 0)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => reg_read_complete_trigger_table_cmb_vec,
                          q   => reg_read_complete_trigger_table_del_vec
                         );
  end block;

      b_reg_read_complete_rm_table_cmb_del : block
    signal reg_read_complete_rm_table_cmb_vec  : std_logic_vector(1-1 downto 0);
    signal reg_read_complete_rm_table_del_vec : std_logic_vector(1-1 downto 0);
  begin
    reg_read_complete_rm_table_cmb_vec(0) <= reg_read_complete_rm_table_cmb;
    reg_read_complete_rm_table_del <= reg_read_complete_rm_table_del_vec(0);
    i_reg_read_complete_rm_table_cmb_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => 0)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => reg_read_complete_rm_table_cmb_vec,
                          q   => reg_read_complete_rm_table_del_vec
                         );
  end block;

      b_reg_read_complete_bs_table_cmb_del : block
    signal reg_read_complete_bs_table_cmb_vec  : std_logic_vector(1-1 downto 0);
    signal reg_read_complete_bs_table_del_vec : std_logic_vector(1-1 downto 0);
  begin
    reg_read_complete_bs_table_cmb_vec(0) <= reg_read_complete_bs_table_cmb;
    reg_read_complete_bs_table_del <= reg_read_complete_bs_table_del_vec(0);
    i_reg_read_complete_bs_table_cmb_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => 0)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => reg_read_complete_bs_table_cmb_vec,
                          q   => reg_read_complete_bs_table_del_vec
                         );
  end block;

      b_reg_read_complete_vsm_registers_cmb_del : block
    signal reg_read_complete_vsm_registers_cmb_vec  : std_logic_vector(1-1 downto 0);
    signal reg_read_complete_vsm_registers_del_vec : std_logic_vector(1-1 downto 0);
  begin
    reg_read_complete_vsm_registers_cmb_vec(0) <= reg_read_complete_vsm_registers_cmb;
    reg_read_complete_vsm_registers_del <= reg_read_complete_vsm_registers_del_vec(0);
    i_reg_read_complete_vsm_registers_cmb_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => 0)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => reg_read_complete_vsm_registers_cmb_vec,
                          q   => reg_read_complete_vsm_registers_del_vec
                         );
  end block;


    -- Select which one goes onto reg_rdata
    reg_rdata_i <= reg_rdata_trigger_table_del    when reg_read_complete_trigger_table_del = '1' else
                   reg_rdata_rm_table_del         when reg_read_complete_rm_table_del      = '1' else
                   reg_rdata_bs_table_del         when reg_read_complete_bs_table_del      = '1' else
                   reg_rdata_vsm_reg_del          when reg_read_complete_vsm_registers_del = '1' else
                  (others => '0');
  end block;
  
  p_register_axi_lite_response : process (clk)
  begin
    if rising_edge(clk) then
      if reset = C_RESET_ACTIVE_LEVEL then
        reg_tready_d1 <= '0';
        reg_tready_i <= '0';
      else
        reg_tready_d1 <= reg_tready_d0;
        if reg_tready_d0 = '1' and reg_tready_d1 = '0' then
          reg_tready_i <= '1';
        else 
          reg_tready_i <= '0';
        end if;
        reg_rdata  <= reg_rdata_i;
      end if;
    end if;
  end process p_register_axi_lite_response;
  reg_tready <= reg_tready_i;


  -- -----------------------------------------------------------------------------------------
  -- AXI Lite accesses to the register banks :END
  -- -----------------------------------------------------------------------------------------

  
  -- -----------------------------------------------------------------------------------------
  -- The General VSM Registers
  -- -----------------------------------------------------------------------------------------

  -- The SHUTDOWN register
  -- ----------------------
  -- The "shutdown" register which is just shutdown_bit.
  -- This bit can be written to by the AXI-LITE or AXI-STREAM interfaces, and
  -- by the VSM.
  -- It cannot be read.  Reading the shutdown_register returns in_shutdown which is
  -- generated seperately.
  -- 
  -- Priority
  --   AXI-STREAM (because it is HW driven and probably appreciates a faster response)
  --   AXI-LITE
  --   VSM
  --
  -- shutdown_bit is only changed as follows:
  --
  -- If in_shutdown = 0 and AXI enter shutdown = 1, the VSM needs to enter shutdown
  -- If in_shutdown = 1 and AXI enter shutdown = 0, the VSM needs to exit shutdown
  -- If in_shutdown = 0 and AXI enter shutdown = 0, the VSM needs to ignore this
  -- If in_shutdown = 1 and AXI enter shutdown = 1, the VSM needs to ignore this
  -- If in_shutdown = 0 and cp_error = 1, the VSM needs to enter shutdown
  --
  -- The first line represents the case where AXI could mask the VSM, but the end result
  -- is acceptable.  We enter shutdown.
  --
  --      

  p_shutdown_bit : process (clk)
  begin
    if rising_edge(clk) then
      if reset = C_RESET_ACTIVE_LEVEL then
        shutdown_bit <= conv_bool_to_sl (C_START_IN_SHUTDOWN >0);
      else
        --  IF cmd = PC_SHUTDOWN_CMD            and in_shutdown = 0 -> Set shutdown_bit = 1         
        --  IF cmd = PC_RESTART_NO_STATUS_CMD   and in_shutdown = 1 -> Set shutdown_bit = 0
        --  IF cmd = PC_RESTART_WITH_STATUS_CMD and in_shutdown = 1 -> Set shutdown_bit = 0

        if    transfer_ctrl_chan_data = '1' and in_shutdown = '0' and s_axis_ctrl_cmd = PC_SHUTDOWN_CMD then            shutdown_bit <= '1';
        elsif transfer_ctrl_chan_data = '1' and in_shutdown = '1' and s_axis_ctrl_cmd = PC_RESTART_NO_STATUS_CMD   then shutdown_bit <= '0';
        elsif transfer_ctrl_chan_data = '1' and in_shutdown = '1' and s_axis_ctrl_cmd = PC_RESTART_WITH_STATUS_CMD then shutdown_bit <= '0';
        elsif transfer_ctrl_reg_data  = '1' and in_shutdown = '0' and ctrl_reg_cmd    = PC_SHUTDOWN_CMD            then shutdown_bit <= '1';
        elsif transfer_ctrl_reg_data  = '1' and in_shutdown = '1' and ctrl_reg_cmd    = PC_RESTART_NO_STATUS_CMD   then shutdown_bit <= '0';
        elsif transfer_ctrl_reg_data  = '1' and in_shutdown = '1' and ctrl_reg_cmd    = PC_RESTART_WITH_STATUS_CMD then shutdown_bit <= '0';
        elsif current_state = ST_WAIT_FOR_DONE and (cp_error = '1'              or fetch_error_flag = '1' or 
                                                    bad_config_error_flag = '1' or decompress_bad_format_error_flag = '1' or 
                                                     decompress_bad_size_error_flag = '1' ) and C_CAN_ENTER_SHUTDOWN_ON_ERROR = true then
          -- Enter shutdown if an error occurs.  
          shutdown_bit <= '1';
        end if;
      end if;
    end if;
  end process p_shutdown_bit;

  p_shutdown_axi_resp : process (clk)
  begin
    if rising_edge(clk) then
      if reset = C_RESET_ACTIVE_LEVEL then
        --s_axis_ctrl_tready_i <= '1';
      else
        reg_write_complete_ctrl_reg <= '0';

        -- AXI LITE interface has precedence to avoid returning multiple TREADY responses.
        if write_to_vsm_registers = '1' and to_integer(unsigned(reg_select_slice)) = PC_VSM_CTRL_REG_OFFSET
         -- and
           -- -- Don't let AXI Lite writes occur if I'm fetching the RM Info after a reset

           --current_state /= ST_START_FETCH_RM_INFO_AFTER_RESET and current_state /= ST_FETCH_RM_INFO_AFTER_RESET then 
        then
          reg_write_complete_ctrl_reg <= '1';
        end if;
      end if;
    end if;
  end process p_shutdown_axi_resp;

  s_axis_ctrl_tready_i <= '0' when write_to_vsm_registers = '1' and to_integer(unsigned(reg_select_slice)) = PC_VSM_CTRL_REG_OFFSET else
                          -- Don't let AXIS writes occur if I'm fetching the RM Info after a reset
                          --'0' when current_state = ST_START_FETCH_RM_INFO_AFTER_RESET or current_state = ST_FETCH_RM_INFO_AFTER_RESET else
                          '0' when current_state = ST_POR else
                          '1';



  s_axis_ctrl_tready   <= s_axis_ctrl_tready_i;

  s_axis_ctrl_cmd    <= s_axis_ctrl_tdata(PC_AXIS_CTRL_CMD_FIELD_MSB downto PC_AXIS_CTRL_CMD_FIELD_LSB);
  ctrl_reg_cmd       <= reg_wdata_i        (PC_AXIS_CTRL_CMD_FIELD_MSB downto PC_AXIS_CTRL_CMD_FIELD_LSB);

  transfer_ctrl_reg_data  <= write_to_ctrl_reg  and reg_write_complete_ctrl_reg;
  transfer_ctrl_chan_data <= s_axis_ctrl_tvalid and s_axis_ctrl_tready_i;



  -- We have to handle the case where an AXI access could mask a VSM access.  The VSM access
  -- cannot be stalled.  
  -- The VSM will only try and update this is it is not in shutdown and it needs to enter shutdown.
  -- Scenario 1: The AXI interfaces try to enter shutdown at the same time.  
  --             The AXI interfaces will win, but the end result is that we are in shutdown, so 
  --             that's ok
  -- Scenario 2: The AXI interfaces write a 0 to the shutdown bit when we're not in shutdown
  --             The AXI interfaces will win, and will prevent the VSM entering shutdown.
  --             The solution is to merge the VSM shutdown condition with the AXI data so that 


  -- Manage the RM_ID field.  This can be set by the CONTROL register, so I'm including it here.
  --
  p_rm_id : process (clk)
  begin
    if rising_edge(clk) then
      -- Do not reset the status registers.  I need to remember the
      -- state the fabric is in
      -- Protect rm_id

      -- As the RM_ID can be updated by AXI and the VSM, and it comes from the shutdown reg write, 
      -- or the axi stream control channel, it has to obey the priority and timing fo the shutdown bit.
      -- Basically, AXI Stream is highest priority, VSM is lowest
      --
      -- There's no chance of collision though between the AXI and VSM.  The VSM will ony update
      -- this field when in_shutdown = 0, and AXI can only update it when in_shutdown = 1

      if    transfer_ctrl_chan_data = '1' and in_shutdown = '1' and s_axis_ctrl_cmd = PC_RESTART_WITH_STATUS_CMD then 

        rm_id <= s_axis_ctrl_tdata(C_RM_ID_WIDTH+PC_AXIS_CTRL_HALFWORD_INFO_LSB-1 downto PC_AXIS_CTRL_HALFWORD_INFO_LSB);

      elsif transfer_ctrl_reg_data  = '1' and in_shutdown = '1' and ctrl_reg_cmd    = PC_RESTART_WITH_STATUS_CMD then 

        rm_id <= reg_wdata_i(C_RM_ID_WIDTH+PC_CTRL_REG_HALFWORD_INFO_LSB-1 downto PC_CTRL_REG_HALFWORD_INFO_LSB);

      elsif rm_id_valid_m1 = '1' then
         -- The entry condition to this branch should always match the entry contition in p_rm_id_valid
         -- that sets rm_id_valid = '1'.  I've kept the seperate because it gets reset, but rm_id 
         -- doesn't
         --
         rm_id <= rm_id_from_mem_del;
      end if;
    end if;
  end process p_rm_id;


  shutdown_register(0) <= in_shutdown;
  
  -- The STATUS register
  -- ----------------------
                                       
  -- This register can only be written to by the VSM
  -- Writes to the SHUTDOWN register may be reflected here
  --
  -- Build up the status register that's used for a read
  --

  status (PC_STATUS_ENCODED_MSB downto PC_STATUS_ENCODED_LSB) <= status_encoded_field;
  status (PC_STATUS_ERROR_MSB   downto PC_STATUS_ERROR_LSB  ) <= status_error_field;

  status_register(PC_STATUS_MSB                downto PC_STATUS_LSB ) <= status;
  status_register(PC_RM_ID_LSB+C_RM_ID_WIDTH-1 downto PC_RM_ID_LSB  ) <= rm_id;
  status_register(PC_BS_ID_LSB+C_BS_ID_WIDTH-1 downto PC_BS_ID_LSB  ) <= bs_id;
  
  m_axis_status_tvalid <= '1';
  m_axis_status_tdata  <= status_register;
  
  reg_read_complete_status_reg <=  '1' when read_from_vsm_registers = '1' and to_integer(unsigned(reg_select_slice)) = PC_VSM_STATUS_REG_OFFSET 
                                   else '0';
                          
  -- The status field of the status register can only be written to by the VSM
  --

  p_status : process (clk)
        variable v_cp_error      : std_logic := '0';
        variable v_cp_lost_error : std_logic := '0';
  begin
    if rising_edge(clk) then
      -- Do not reset the status registers.  I need to remember the
      -- state the fabric is in

      -- Manage the ERROR bits
      --

      v_cp_error      := cp_error_flag      or cp_error;
      v_cp_lost_error := cp_lost_error_flag or cp_lost_error;
        
      -- Error status

      -- | bad_config_error_flag | cp_error_flag | cp_lost_error or   | fetch_error_flag | decompress | decompress |                     
      -- |                       |  or cp_error  | cp_lost_error_flag |                  | bad format | bad size   |              
      -- +-----------------------+---------------+--------------------+------------------+------------+------------+-----------------------------------
      -- |           0           |      -        |         -          |       -          |     1      |     0      |    8 : DECOMPRESS_BAD_FORMAT
      -- +-----------------------+---------------+--------------------+------------------+------------+------------+-----------------------------------
      -- |           0           |      -        |         -          |       -          |     0      |     1      |    7 : DECOMPRESS_BAD_SIZE
      -- +-----------------------+---------------+--------------------+------------------+------------+------------+-----------------------------------
      -- |           0           |      1        |         1          |       1          |     0      |     0      |    6 : CP_LOST_ERROR + FETCH_ERROR
      -- +-----------------------+---------------+--------------------+------------------+------------+------------+-----------------------------------
      -- |           0           |      1        |         0          |       1          |     0      |     0      |    5 : BS_ERROR + FETCH_ERROR
      -- +-----------------------+---------------+--------------------+------------------+------------+------------+-----------------------------------
      -- |           0           |      0        |         0          |       1          |     0      |     0      |    4 : FETCH_ERROR
      -- +-----------------------+---------------+--------------------+------------------+------------+------------+-----------------------------------
      -- |           0           |      1        |         1          |       0          |     0      |     0      |    3 : CP_LOST error
      -- +-----------------------+---------------+--------------------+------------------+------------+------------+-----------------------------------
      -- |           0           |      1        |         0          |       0          |     0      |     0      |    2 : BS_ERROR
      -- +-----------------------+---------------+--------------------+------------------+------------+------------+----------------------------------- 
      -- |           1           |      0        |         0          |       0          |     0      |     0      |    1 : Bad Config Error
      -- +-----------------------+---------------+--------------------+------------------+------------+------------+-----------------------------------
      -- |           0           |      0        |         0          |       0          |     0      |     0      |    0 : No Error
      -- +-----------------------+---------------+--------------------+------------------+------------+------------+-----------------------------------



      if     decompress_bad_size_error_flag = '1' then 
        status_error_field <= PC_STATUS_DECOMPRESS_BAD_SIZE_ERROR;

      elsif decompress_bad_format_error_flag = '1' then 
        status_error_field <= PC_STATUS_DECOMPRESS_BAD_FORMAT_ERROR;

      elsif bad_config_error_flag = '0' and v_cp_error = '1'  and v_cp_lost_error = '1'  and fetch_error_flag = '1' then 
        status_error_field <= PC_STATUS_FETCH_AND_CP_LOST_ERROR;

      elsif bad_config_error_flag = '0' and v_cp_error = '1' and v_cp_lost_error = '0'  and fetch_error_flag = '1' then 
        status_error_field <=  PC_STATUS_FETCH_AND_BS_ERROR;     

      elsif bad_config_error_flag = '0' and v_cp_error = '0'  and v_cp_lost_error = '0' and fetch_error_flag = '1' then 
        status_error_field <=  PC_STATUS_FETCH_ERROR;

      elsif bad_config_error_flag = '0' and v_cp_error = '1' and v_cp_lost_error = '1'  and fetch_error_flag = '0' then 
        status_error_field <=  PC_STATUS_CP_LOST_ERROR;

      elsif bad_config_error_flag = '0' and v_cp_error = '1' and v_cp_lost_error = '0'  and fetch_error_flag = '0' then 
        status_error_field <=  PC_STATUS_BS_ERROR;

      elsif bad_config_error_flag = '1' and v_cp_error = '0' and v_cp_lost_error = '0'  and fetch_error_flag = '0' then 
        status_error_field <=  PC_STATUS_BAD_CONFIG_ERROR;

      elsif bad_config_error_flag = '0' and v_cp_error = '0' and v_cp_lost_error = '0'  and fetch_error_flag = '0' then 
        status_error_field <=  PC_STATUS_NO_ERROR;       

        -- coverage off
      else
        status_error_field <=  PC_STATUS_UNKNOWN_ERROR;
        report "Unknown error for VSM 0 Status" severity failure;
        -- coverage on
      end if;


      if in_shutdown = '1' then 
        status(PC_SHUTDOWN_BIT) <= '1';
        if rm_shutdown_ack = '0' then
          status_encoded_field <= PC_STATUS_RM_SHUTDOWN_ACK_0;
        else
          status_encoded_field <= PC_STATUS_RM_SHUTDOWN_ACK_1;
        end if;

      else
        status(PC_SHUTDOWN_BIT) <= '0';

        -- The status bits have a different meaning when the VSM is operating
        --
        if current_state = ST_SHUTDOWN_HW then
          status_encoded_field <= PC_STATUS_HW_SHUTDOWN;
        elsif current_state = ST_SHUTDOWN_SW then
          status_encoded_field <= PC_STATUS_SW_SHUTDOWN;

        elsif (current_state = ST_START_FETCH_RM_INFO or current_state = ST_FETCH_RM_INFO or current_state = ST_WAIT_FOR_DONE) and load_flag = '0' then

          status_encoded_field <= PC_STATUS_RM_UNLOAD;
        elsif (current_state = ST_START_FETCH_RM_INFO or current_state = ST_FETCH_RM_INFO or current_state = ST_FETCH_RM_INFO or current_state = ST_WAIT_FOR_DONE) and load_flag = '1' then

          status_encoded_field <= PC_STATUS_RM_LOAD;
        elsif current_state = ST_STARTUP_SW then
          status_encoded_field <= PC_STATUS_SW_STARTUP;
        elsif current_state = ST_PRE_RESET_RM then
          status_encoded_field <= PC_STATUS_RM_RESET;
        elsif full_flag = '1' then
          status_encoded_field <= PC_STATUS_FULL;
        else
          status_encoded_field <= PC_STATUS_EMPTY;
        end if;
      end if;
    end if;
  end process p_status;

  
  -- Handle the PROCEED command
  -- ----------------------
  -- It can take a number of clock cycles for the AXI Reg transfer with this command to complete.
  -- In that time, the VSM can exit ST_STARTUP_SW, ST_WAIT_FOR_TRIGGER and enter ST_SHUTDOWN_SW,
  -- where it can pick up the lingering ok to proceed command.
  -- To get round this, I edge detect the command and issue a single cycle sw_ok_to_proceed pulse
  -- 
  p_sw_ok_to_proceed :  process (clk)
  begin
    if rising_edge(clk) then
      if reset = C_RESET_ACTIVE_LEVEL then
        sw_ok_to_proceed_d0 <= '0';
        sw_ok_to_proceed_d1 <= '0';
      else
        sw_ok_to_proceed_d1 <= sw_ok_to_proceed_d0;

        if (transfer_ctrl_chan_data = '1' and s_axis_ctrl_cmd = PC_OK_TO_PROCEED_CMD) or 
           (transfer_ctrl_reg_data  = '1' and ctrl_reg_cmd    = PC_OK_TO_PROCEED_CMD) then
          sw_ok_to_proceed_d0 <= '1';
          else
          sw_ok_to_proceed_d0 <= '0';
        end if;     
      end if;     
    end if;     
  end process p_sw_ok_to_proceed;
  sw_ok_to_proceed <= '1' when sw_ok_to_proceed_d0 = '1' and sw_ok_to_proceed_d1 = '0' else '0';

  -- -----------------------------------------------------------------------------------------
  -- The General VSM Registers :END
  -- -----------------------------------------------------------------------------------------

  -- -----------------------------------------------------------------------------------------
  -- Event Signals
  -- -----------------------------------------------------------------------------------------
  -- 
  -- Issue a single pulse when and error occurs.  This needs to be aligned with the status register
  -- shutdown bit (if we're entering shutdown on error) which is why I delay it by 3 cycles here.  

  event_error_i <= '1' when (current_state = ST_WAIT_FOR_DONE and cp_done = '1' and (cp_error_flag = '1' or cp_error = '1' or fetch_error_flag = '1' or decompress_bad_format_error_flag = '1' or decompress_bad_size_error_flag = '1'))
                       or   (current_state = ST_WAIT_FOR_DONE and bad_config_error_flag = '1') else
                   '0';

    b_event_error_i_del : block
    signal event_error_i_vec  : std_logic_vector(1-1 downto 0);
    signal event_error_vec : std_logic_vector(1-1 downto 0);
  begin
    event_error_i_vec(0) <= event_error_i;
    event_error <= event_error_vec(0);
    i_event_error_i_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => 3)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => event_error_i_vec,
                          q   => event_error_vec
                         );
  end block;


  -- -----------------------------------------------------------------------------------------
  -- Event Signals : END
  -- -----------------------------------------------------------------------------------------

  -- -----------------------------------------------------------------------------------------
  -- The Trigger-to-RM Lookup table
  -- -----------------------------------------------------------------------------------------
  -- This converts trigger_id into rm_id.  
  b_trigger_table : block
    signal access_address: natural := 0;
    signal access_address_del: natural := 0;
    signal axi_write_complete: std_logic := '0';  
    signal axi_read_enable   : std_logic:= '0';  
    signal start_axi_read    : std_logic := '0';  
    signal in_shutdown_del   : std_logic:= '0';  


--I need to make sure the LUTRAMS are inferred even when they are roms, and the workaround to do this
--it to keep a benign write interface that's dont_touched


  begin
    -- Signals to the RAM:

    -- Fetch the data from memory.
    -- I can use the hw_trigger_id as the address only if hw_trigger_valid is asserted.  If it's not, then
    -- I have to use the captured trigger value

    -- access_address: This is the address to access.  Driven from either hw_trigger_* when we're doing
    --                 internal accesses or reg_addr if we're doing an AXI access 

    -- For internal reads, access_address is only valid on the cycle when we are in ST_START_FETCH_RM_INFO.
    -- It is then registered (if TRIGGER_TABLE_REGISTER_ADDR == 1) for a clock cycle.  The output of the table (rm_id)
    -- is registered on the following cycle using rm_id_valid_m1
    --
    access_address <= to_integer(unsigned(sw_trigger_id       )) when current_state = ST_START_FETCH_RM_INFO and sw_trigger_pending = '1' else
                      to_integer(unsigned(hw_trigger_id       )) when current_state = ST_START_FETCH_RM_INFO and sw_trigger_pending = '0' else
                      to_integer(unsigned(trigger_reg_address )) when write_to_trigger_registers  = '1' and in_shutdown = '1' else 
                      to_integer(unsigned(trigger_reg_address )) when read_from_trigger_registers = '1' and in_shutdown = '1' else
                      0;

    bad_trigger_addr <= '1' when trigger_reg_address_unused_bits /= (trigger_reg_address_unused_bits'range => '0') else '0';



  b_read_from_trigger_registers_edge : block
    signal d1  : std_logic := '0';
  begin
   process (clk)
   begin
     if rising_edge(clk) then
       if reset = C_RESET_ACTIVE_LEVEL then
         d1 <= '0';
       else
         d1 <= read_from_trigger_registers;
         if d1 = '0' and read_from_trigger_registers = '1' then
           start_axi_read <= '1';
         else 
           start_axi_read <= '0';
         end if;
       end if;
     end if;
   end process;
  end block;

-- As I'm registering the start signal to generate the pulse, I can reduce this delay by 1
  b_start_axi_read_del : block
    signal start_axi_read_vec  : std_logic_vector(1-1 downto 0);
    signal reg_read_complete_trigger_table_vec : std_logic_vector(1-1 downto 0);
  begin
    start_axi_read_vec(0) <= start_axi_read;
    reg_read_complete_trigger_table <= reg_read_complete_trigger_table_vec(0);
    i_start_axi_read_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => TRIGGER_TABLE_REGISTER_ADDR + TRIGGER_TABLE_REGISTER_DATA - 1)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => start_axi_read_vec,
                          q   => reg_read_complete_trigger_table_vec
                         );
  end block;


  b_write_to_trigger_registers_edge : block
    signal d1  : std_logic := '0';
  begin
   process (clk)
   begin
     if rising_edge(clk) then
       if reset = C_RESET_ACTIVE_LEVEL then
         d1 <= '0';
       else
         d1 <= write_to_trigger_registers;
         if d1 = '0' and write_to_trigger_registers = '1' then
           axi_write_complete <= '1';
         else 
           axi_write_complete <= '0';
         end if;
       end if;
     end if;
   end process;
  end block;


    gen_address_reg: if TRIGGER_TABLE_REGISTER_ADDR = 1 generate
      process (clk)
      begin
        if rising_edge(clk) then
          access_address_del <= access_address;
        end if;
      end process;
    end generate gen_address_reg;

    gen_no_address_reg: if TRIGGER_TABLE_REGISTER_ADDR = 0 generate
      access_address_del <= access_address;
    end generate gen_no_address_reg;

  b_read_from_trigger_registers_del : block
    signal read_from_trigger_registers_vec  : std_logic_vector(1-1 downto 0);
    signal axi_read_enable_vec : std_logic_vector(1-1 downto 0);
  begin
    read_from_trigger_registers_vec(0) <= read_from_trigger_registers;
    axi_read_enable <= axi_read_enable_vec(0);
    i_read_from_trigger_registers_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => TRIGGER_TABLE_REGISTER_ADDR + TRIGGER_TABLE_REGISTER_DATA-1)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => read_from_trigger_registers_vec,
                          q   => axi_read_enable_vec
                         );
  end block;

  b_in_shutdown_del : block
    signal in_shutdown_vec  : std_logic_vector(1-1 downto 0);
    signal in_shutdown_del_vec : std_logic_vector(1-1 downto 0);
  begin
    in_shutdown_vec(0) <= in_shutdown;
    in_shutdown_del <= in_shutdown_del_vec(0);
    i_in_shutdown_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => TRIGGER_TABLE_REGISTER_ADDR + TRIGGER_TABLE_REGISTER_DATA-1)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => in_shutdown_vec,
                          q   => in_shutdown_del_vec
                         );
  end block;


    process (clk)
    begin
      if rising_edge(clk) then
        -- RM_ID is updated in p_rm_id because it can be set by AXIS and AXI-LITE as well
        -- All I need to do here is make sure I don't try and access the table at the same time.
        -- Reads are blocked as the generation of read_from_trigger_registers includes 
        --  "accessing_tables = '0' "
        -- Writes are blocked because in_shutdown has to be 1, which means we can't be doing internal writes
        -- 
        if axi_read_enable = '1' then
          -- I can only read the table if in_shutdown = 1 and in_shutdown_d1 = 1.  
          -- Otherwise, the address_del might be invalid.  In all other read cases, 
          -- I want to return 0
          if in_shutdown = '1' and in_shutdown_del = '1' then
            -- rm_id_from_mem is accessed using access_address_del which is a registered version of 
            -- access_address.  access_address is selected using in_shutdown.  This can change 
            -- between the cycle where access_address was selected and access_address_del was used.
            -- If I dont use in_shutdown_d1 in the condition, I can end up with the case where 
            -- in_shutdown = 1 now, but was 0 when access_address was selected, which means I'd read
            -- from the incorrect address
            --
            reg_rdata_trigger_table(C_AXI_REG_DATA_WIDTH-1 downto C_RM_ID_WIDTH) <= (others => '0');
            reg_rdata_trigger_table(C_RM_ID_WIDTH       -1 downto               0) <= rm_id_from_mem_del;
          else
            reg_rdata_trigger_table <= (others => '0');
          end if;

        elsif axi_write_complete = '1' and in_shutdown = '1' and in_shutdown_d1 = '1' then
           -- access_address_del is a registered version of access_address.  access_address is 
           -- selected using in_shutdown.  This can change between the cycle where access_address 
           -- was selected and access_address_del was used.
           -- If I dont use in_shutdown_d1 in the condition, I can end up with the case where 
           -- in_shutdown = 1 now, but was 0 when access_address was selected, which means I'd 
           -- write to the incorrect address

          if bad_trigger_addr = '0' then 
            trigger2rm_table(access_address_del) <=reg_wdata_i(C_RM_ID_WIDTH-1 downto 0);
          end if;
        end if;
      end if;
    end process;
    
    -- Signal write completion at the earliest opportunity.   
    reg_write_complete_trigger_table <= '1' when axi_write_complete = '1'               
                                 else '0';

    -- Fetch the data from memory.
    rm_id_from_mem <= trigger2rm_table(access_address_del);
  b_rm_id_from_mem_del : block
    signal rm_id_from_mem_vec  : std_logic_vector(C_RM_ID_WIDTH-1 downto 0);
    signal rm_id_from_mem_del_vec : std_logic_vector(C_RM_ID_WIDTH-1 downto 0);
  begin
    rm_id_from_mem_vec <= rm_id_from_mem;
    rm_id_from_mem_del <= rm_id_from_mem_del_vec;
    i_rm_id_from_mem_del : entity prc_v1_2_1.delay
             generic map (WIDTH => C_RM_ID_WIDTH, SCLR_ON => false, FAST_INPUT => TRUE,
                         LENGTH => TRIGGER_TABLE_REGISTER_DATA - 1)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => rm_id_from_mem_vec,
                          q   => rm_id_from_mem_del_vec
                         );
  end block;


  end block b_trigger_table;

  
  -- -----------------------------------------------------------------------------------------
  -- The Trigger-to-RM Lookup table :END
  -- -----------------------------------------------------------------------------------------
  
  -- -----------------------------------------------------------------------------------------
  -- The RM Information Table
  -- -----------------------------------------------------------------------------------------
  --
  b_rm_info : block
    -- Signals to hold the value straight from the LUTRAM
    signal bs_addresses_from_mem : std_logic_vector((C_BS_ADDR_WIDTH + (C_BS_ADDR_WIDTH * C_REQUIRES_CLEAR_BITSTREAM)) -1 downto 0) := (others => '0');
    signal ctrl_from_mem      : std_logic_vector(PC_RM_CTRL_REG_WIDTH -1 downto 0) := (others => '0');

    signal bs_addresses_from_mem_del : std_logic_vector((C_BS_ADDR_WIDTH + (C_BS_ADDR_WIDTH * C_REQUIRES_CLEAR_BITSTREAM)) -1 downto 0) := (others => '0');
    signal ctrl_from_mem_del      : std_logic_vector(PC_RM_CTRL_REG_WIDTH -1 downto 0) := (others => '0');


    signal access_address    : natural := 0;
    signal access_address_del: natural := 0;
    signal axi_write_complete: std_logic := '0';  
    signal vsm_read_enable   : std_logic;  
    signal axi_read_enable   : std_logic:= '0';  
    signal start_axi_read    : std_logic:= '0';  
    signal in_shutdown_del   : std_logic:= '0';  
--I need to make sure the LUTRAMS are inferred even when they are roms, and the workaround to do this
--it to keep a benign write interface that's dont_touched

  begin
    -- Signals to the RAM:
    -- access_address: This is the address to access.  Driven from either rm_id when we're doing
    --                 internal accesses or reg_addr if we're doing an AXI access 
    
    access_address <= to_integer(unsigned(rm_id))               when in_shutdown = '0' else
                      --to_integer(unsigned(rm_id))               when in_shutdown = '1' and current_state = ST_FETCH_RM_INFO_AFTER_RESET else
                      to_integer(unsigned(rm_info_reg_address)) when write_to_rm_info_registers = '1'  else
                      to_integer(unsigned(rm_info_reg_address)) when read_from_rm_info_registers = '1' else
                      0;

    bad_rm_info_addr <= '1' when rm_info_reg_address_unused_bits /= (rm_info_reg_address_unused_bits'range => '0') else '0';

  -- vsm_read_enable is a pulse that registers the outputs from the memory, which might have already 
  -- been through a delay line
  b_rm_id_valid_del : block
    signal rm_id_valid_vec  : std_logic_vector(1-1 downto 0);
    signal vsm_read_enable_vec : std_logic_vector(1-1 downto 0);
  begin
    rm_id_valid_vec(0) <= rm_id_valid;
    vsm_read_enable <= vsm_read_enable_vec(0);
    i_rm_id_valid_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => RM_INFO_TABLE_REGISTER_ADDR + RM_INFO_TABLE_REGISTER_DATA-1)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => rm_id_valid_vec,
                          q   => vsm_read_enable_vec
                         );
  end block;


  b_read_from_rm_info_registers_edge : block
    signal d1  : std_logic := '0';
  begin
   process (clk)
   begin
     if rising_edge(clk) then
       if reset = C_RESET_ACTIVE_LEVEL then
         d1 <= '0';
       else
         d1 <= read_from_rm_info_registers;
         if d1 = '0' and read_from_rm_info_registers = '1' then
           start_axi_read <= '1';
         else 
           start_axi_read <= '0';
         end if;
       end if;
     end if;
   end process;
  end block;

-- As I'm registering the start signal to generate the pulse, I can reduce this delay by 1
  b_start_axi_read_del : block
    signal start_axi_read_vec  : std_logic_vector(1-1 downto 0);
    signal reg_read_complete_rm_table_vec : std_logic_vector(1-1 downto 0);
  begin
    start_axi_read_vec(0) <= start_axi_read;
    reg_read_complete_rm_table <= reg_read_complete_rm_table_vec(0);
    i_start_axi_read_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => RM_INFO_TABLE_REGISTER_ADDR + RM_INFO_TABLE_REGISTER_DATA - 1)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => start_axi_read_vec,
                          q   => reg_read_complete_rm_table_vec
                         );
  end block;



  b_write_to_rm_info_registers_edge : block
    signal d1  : std_logic := '0';
  begin
   process (clk)
   begin
     if rising_edge(clk) then
       if reset = C_RESET_ACTIVE_LEVEL then
         d1 <= '0';
       else
         d1 <= write_to_rm_info_registers;
         if d1 = '0' and write_to_rm_info_registers = '1' then
           axi_write_complete <= '1';
         else 
           axi_write_complete <= '0';
         end if;
       end if;
     end if;
   end process;
  end block;


    gen_address_reg: if RM_INFO_TABLE_REGISTER_ADDR = 1 generate
      process (clk)
      begin
        if rising_edge(clk) then
          access_address_del <= access_address;
          --axi_read_enable    <= read_from_rm_info_registers;
        end if;
      end process;
    end generate gen_address_reg;

    gen_no_address_reg: if RM_INFO_TABLE_REGISTER_ADDR = 0 generate
      access_address_del <= access_address;
      --axi_read_enable    <= read_from_rm_info_registers;
    end generate gen_no_address_reg;

     -- -1 because this includes the register that is loaded by this signal
  b_read_from_rm_info_registers_del : block
    signal read_from_rm_info_registers_vec  : std_logic_vector(1-1 downto 0);
    signal axi_read_enable_vec : std_logic_vector(1-1 downto 0);
  begin
    read_from_rm_info_registers_vec(0) <= read_from_rm_info_registers;
    axi_read_enable <= axi_read_enable_vec(0);
    i_read_from_rm_info_registers_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => RM_INFO_TABLE_REGISTER_ADDR + RM_INFO_TABLE_REGISTER_DATA-1)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => read_from_rm_info_registers_vec,
                          q   => axi_read_enable_vec
                         );
  end block;

  b_in_shutdown_del : block
    signal in_shutdown_vec  : std_logic_vector(1-1 downto 0);
    signal in_shutdown_del_vec : std_logic_vector(1-1 downto 0);
  begin
    in_shutdown_vec(0) <= in_shutdown;
    in_shutdown_del <= in_shutdown_del_vec(0);
    i_in_shutdown_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => RM_INFO_TABLE_REGISTER_ADDR + RM_INFO_TABLE_REGISTER_DATA-1)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => in_shutdown_vec,
                          q   => in_shutdown_del_vec
                         );
  end block;



    -- Signal write completion at the earliest opportunity.   
    reg_write_complete_rm_table <= '1' when axi_write_complete = '1'               
                                 else '0';

    process (clk)
    begin
      if rising_edge(clk) then
        if vsm_read_enable = '1' then
          -- We're doing an internal read from both RM INFO TABLE lutrams.
          -- 

          if C_REQUIRES_CLEAR_BITSTREAM = 0 then
            bs_addr           <= bs_addresses_from_mem_del;
          else
            if load_flag = '0' then
              bs_addr         <= bs_addresses_from_mem_del((C_BS_ADDR_WIDTH*2)-1 downto C_BS_ADDR_WIDTH);
            else
              bs_addr         <= bs_addresses_from_mem_del( C_BS_ADDR_WIDTH   -1 downto 0);
            end if;
          end if;

          shutdown_required <= shutdown_required_cmb;
          startup_required  <= startup_required_cmb ;
          reset_required    <= reset_required_cmb   ;
            
          -- In addition to the read, set a flag saying the read is complete,
          -- and register the rm_id onto the output
            
        elsif axi_read_enable = '1' then
          -- I can only read the table if in_shutdown = 1 and in_shutdown_d1 = 1.  
          -- Otherwise, the address_del might be invalid.  In all other read cases, 
          -- I want to return 0

          --if in_shutdown = '1' and in_shutdown_d1 = '1' then
          if in_shutdown = '1' and in_shutdown_del = '1' then
            -- bs_addresses_from_mem and ctrl_from_mem are accessed using access_address_del which 
            -- is a registered version of access_address.  access_address is selected using 
            -- in_shutdown.  This can change between the cycle where access_address was selected 
            -- and access_address_del was used.  If I dont use in_shutdown_d1 in the condition, I 
            -- can end up with the case where in_shutdown = 1 now, but was 0 when access_address 
            -- was selected, which means I'd read from the incorrect address
            --
            if (reg_select_slice(0) = '0') then
              -- Read from the Address Registers
              -- -------------------------------
              
              if C_REQUIRES_CLEAR_BITSTREAM = 0 then
                reg_rdata_rm_table_address(C_AXI_REG_DATA_WIDTH-1 downto C_BS_ADDR_WIDTH) <= (others => '0');
                reg_rdata_rm_table_address(C_BS_ADDR_WIDTH     -1 downto               0) <= bs_addresses_from_mem_del;
              else 
                reg_rdata_rm_table_address <= (others => '0');
                reg_rdata_rm_table_address(C_BS_ADDR_WIDTH -1 downto 0) 
                                                         <= bs_addresses_from_mem_del(C_BS_ADDR_WIDTH -1 downto 0);
                
                reg_rdata_rm_table_address((C_AXI_REG_DATA_WIDTH/2)+ C_BS_ADDR_WIDTH -1 downto (C_AXI_REG_DATA_WIDTH/2)) 
                                                       <= bs_addresses_from_mem_del((C_BS_ADDR_WIDTH*2) -1 downto C_BS_ADDR_WIDTH);
              end if;
            else
              -- Read from the Control Registers
              -- -------------------------------
                
              reg_rdata_rm_table_ctrl <= rm_ctrl_reg_reg2bus (reg_value   => ctrl_from_mem_del,
                                                              reg_width   => PC_RM_CTRL_REG_WIDTH,
                                                              bus_width   => C_AXI_REG_DATA_WIDTH);
            end if;
          else 
            reg_rdata_rm_table_address <= (others => '0');
            reg_rdata_rm_table_ctrl    <= (others => '0');
          end if;
        elsif axi_write_complete = '1' and in_shutdown = '1' and in_shutdown_d1 = '1' then
          -- access_address_del is a registered version of access_address.  access_address is 
          -- selected using in_shutdown.  This can change between the cycle where access_address 
          -- was selected and access_address_del was used.
          -- If I dont use in_shutdown_d1 in the condition, I can end up with the case where 
          -- in_shutdown = 1 now, but was 0 when access_address was selected, which means I'd 
          -- write to the incorrect address

          if bad_rm_info_addr = '0' then 
            if (reg_select_slice(0) = '0') then
              -- Write to the Address Registers
              -- -------------------------------
              --
              if C_REQUIRES_CLEAR_BITSTREAM = 0 then
                rm_address_table(access_address_del) <= reg_wdata_i(rm_address_table(0)'RANGE );
              else
                rm_address_table(access_address_del)((C_BS_ADDR_WIDTH*2)-1 downto C_BS_ADDR_WIDTH) <= reg_wdata_i((C_AXI_REG_DATA_WIDTH/2) + C_BS_ADDR_WIDTH-1 downto C_AXI_REG_DATA_WIDTH/2);
                rm_address_table(access_address_del)((C_BS_ADDR_WIDTH  )-1 downto               0) <= reg_wdata_i(C_BS_ADDR_WIDTH   -1 downto 0);
              end if;
            else
              -- Write to the Control Registers
              -- -------------------------------
              rm_ctrl_reg_table(access_address_del) <=
                rm_ctrl_reg_bus2reg (bus_value   => reg_wdata_i,
                                     reg_width   => PC_RM_CTRL_REG_WIDTH);
            end if;
          end if;
        end if;
    end if;
  end process;


  -- Fetch the data from memory.
  bs_addresses_from_mem <= rm_address_table(access_address_del);
  ctrl_from_mem         <= rm_ctrl_reg_table(access_address_del);
  
  b_bs_addresses_from_mem_del : block
    signal bs_addresses_from_mem_vec  : std_logic_vector((C_BS_ADDR_WIDTH + (C_BS_ADDR_WIDTH * C_REQUIRES_CLEAR_BITSTREAM))-1 downto 0);
    signal bs_addresses_from_mem_del_vec : std_logic_vector((C_BS_ADDR_WIDTH + (C_BS_ADDR_WIDTH * C_REQUIRES_CLEAR_BITSTREAM))-1 downto 0);
  begin
    bs_addresses_from_mem_vec <= bs_addresses_from_mem;
    bs_addresses_from_mem_del <= bs_addresses_from_mem_del_vec;
    i_bs_addresses_from_mem_del : entity prc_v1_2_1.delay
             generic map (WIDTH => (C_BS_ADDR_WIDTH + (C_BS_ADDR_WIDTH * C_REQUIRES_CLEAR_BITSTREAM)), SCLR_ON => false, FAST_INPUT => TRUE,
                         LENGTH => RM_INFO_TABLE_REGISTER_DATA-1)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => bs_addresses_from_mem_vec,
                          q   => bs_addresses_from_mem_del_vec
                         );
  end block;

  b_ctrl_from_mem_del : block
    signal ctrl_from_mem_vec  : std_logic_vector(PC_RM_CTRL_REG_WIDTH-1 downto 0);
    signal ctrl_from_mem_del_vec : std_logic_vector(PC_RM_CTRL_REG_WIDTH-1 downto 0);
  begin
    ctrl_from_mem_vec <= ctrl_from_mem;
    ctrl_from_mem_del <= ctrl_from_mem_del_vec;
    i_ctrl_from_mem_del : entity prc_v1_2_1.delay
             generic map (WIDTH => PC_RM_CTRL_REG_WIDTH, SCLR_ON => false, FAST_INPUT => TRUE,
                         LENGTH => RM_INFO_TABLE_REGISTER_DATA-1)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => ctrl_from_mem_vec,
                          q   => ctrl_from_mem_del_vec
                         );
  end block;


  rm_ctrl_reg_unpack (data           => ctrl_from_mem_del,
                      shutdown       => shutdown_required_cmb,
                      startup        => startup_required_cmb,
                      reset          => reset_required_cmb,
                      reset_duration => reset_duration_cmb    
                      );

--  rm_ctrl_reg_unpack (data           => ctrl_from_mem,
--                      shutdown       => shutdown_required_cmb,
--                      startup        => startup_required_cmb,
--                      reset          => reset_required_cmb,
--                      reset_duration => reset_duration_cmb    
--                      );


end block b_rm_info;

  -- -----------------------------------------------------------------------------------------
  -- The RM Information Table :END
  -- -----------------------------------------------------------------------------------------
 
  
  -- -----------------------------------------------------------------------------------------
  -- The BS Information Table
  -- -----------------------------------------------------------------------------------------
  --
  b_bs_info : block
    -- Signals to hold the value straight from the LUTRAM
    signal address_from_mem : std_logic_vector(C_AXI_REG_DATA_WIDTH -1 downto 0) := (others => '0');
    signal size_from_mem      : std_logic_vector(PC_MAX_BS_SIZE_WIDTH -1 downto 0) := (others => '0');
    signal id_from_mem        : std_logic_vector(C_BS_ID_WIDTH        -1 downto 0) := (others => '0');


    signal address_from_mem_del : std_logic_vector(C_AXI_REG_DATA_WIDTH -1 downto 0) := (others => '0');
    signal size_from_mem_del      : std_logic_vector(PC_MAX_BS_SIZE_WIDTH -1 downto 0) := (others => '0');
    signal id_from_mem_del        : std_logic_vector(C_BS_ID_WIDTH        -1 downto 0) := (others => '0');

    signal access_address    : natural := 0;
    signal access_address_del: natural := 0;
    signal axi_write_complete: std_logic:= '0';  
    signal vsm_read_enable   : std_logic;  
    signal axi_read_enable   : std_logic := '0';  
    signal start_axi_read    : std_logic := '0';  
    signal in_shutdown_del   : std_logic:= '0';  

--I need to make sure the LUTRAMS are inferred even when they are roms, and the workaround to do this
--it to keep a benign write interface that's dont_touched


  begin
    -- Signals to the RAM:
    -- access_address: This is the address to access.  Driven from either bs_addr when we're doing
    --                 internal accesses or reg_addr if we're doing an AXI access
    access_address <= to_integer(unsigned(bs_addr))             when in_shutdown = '0' else
                      --to_integer(unsigned(bs_addr))               when in_shutdown = '1' and current_state = ST_FETCH_RM_INFO_AFTER_RESET else
                      to_integer(unsigned(bs_info_reg_address)) when write_to_bs_info_registers = '1'  else
                      to_integer(unsigned(bs_info_reg_address)) when read_from_bs_info_registers = '1' else
                      0;

    bad_bs_info_addr <= '1' when bs_info_reg_address_unused_bits /= (bs_info_reg_address_unused_bits'range => '0') or
                                 reg_select_slice(1 downto 0) = "11"
                                 else '0';

    
  -- vsm_read_enable is a pulse that registers the outputs from the memory, which might have already 
  -- been through a delay line
  b_rm_info_valid_del : block
    signal rm_info_valid_vec  : std_logic_vector(1-1 downto 0);
    signal vsm_read_enable_vec : std_logic_vector(1-1 downto 0);
  begin
    rm_info_valid_vec(0) <= rm_info_valid;
    vsm_read_enable <= vsm_read_enable_vec(0);
    i_rm_info_valid_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => BS_INFO_TABLE_REGISTER_ADDR + BS_INFO_TABLE_REGISTER_DATA-1)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => rm_info_valid_vec,
                          q   => vsm_read_enable_vec
                         );
  end block;


  b_read_from_bs_info_registers_edge : block
    signal d1  : std_logic := '0';
  begin
   process (clk)
   begin
     if rising_edge(clk) then
       if reset = C_RESET_ACTIVE_LEVEL then
         d1 <= '0';
       else
         d1 <= read_from_bs_info_registers;
         if d1 = '0' and read_from_bs_info_registers = '1' then
           start_axi_read <= '1';
         else 
           start_axi_read <= '0';
         end if;
       end if;
     end if;
   end process;
  end block;

-- As I'm registering the start signal to generate the pulse, I can reduce this delay by 1
  b_start_axi_read_del : block
    signal start_axi_read_vec  : std_logic_vector(1-1 downto 0);
    signal reg_read_complete_bs_table_vec : std_logic_vector(1-1 downto 0);
  begin
    start_axi_read_vec(0) <= start_axi_read;
    reg_read_complete_bs_table <= reg_read_complete_bs_table_vec(0);
    i_start_axi_read_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => BS_INFO_TABLE_REGISTER_ADDR + BS_INFO_TABLE_REGISTER_DATA - 1)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => start_axi_read_vec,
                          q   => reg_read_complete_bs_table_vec
                         );
  end block;



  b_write_to_bs_info_registers_edge : block
    signal d1  : std_logic := '0';
  begin
   process (clk)
   begin
     if rising_edge(clk) then
       if reset = C_RESET_ACTIVE_LEVEL then
         d1 <= '0';
       else
         d1 <= write_to_bs_info_registers;
         if d1 = '0' and write_to_bs_info_registers = '1' then
           axi_write_complete <= '1';
         else 
           axi_write_complete <= '0';
         end if;
       end if;
     end if;
   end process;
  end block;

    gen_address_reg: if BS_INFO_TABLE_REGISTER_ADDR = 1 generate
      process (clk)
      begin
        if rising_edge(clk) then
          access_address_del <= access_address;
          --axi_read_enable    <= read_from_bs_info_registers;
        end if;
      end process;
    end generate gen_address_reg;

    gen_no_address_reg: if BS_INFO_TABLE_REGISTER_ADDR = 0 generate
      access_address_del <= access_address;
      --axi_read_enable    <= read_from_bs_info_registers;
    end generate gen_no_address_reg;

     -- -1 because this includes the register that is loaded by this signal
  b_read_from_bs_info_registers_del : block
    signal read_from_bs_info_registers_vec  : std_logic_vector(1-1 downto 0);
    signal axi_read_enable_vec : std_logic_vector(1-1 downto 0);
  begin
    read_from_bs_info_registers_vec(0) <= read_from_bs_info_registers;
    axi_read_enable <= axi_read_enable_vec(0);
    i_read_from_bs_info_registers_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => BS_INFO_TABLE_REGISTER_ADDR + BS_INFO_TABLE_REGISTER_DATA-1)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => read_from_bs_info_registers_vec,
                          q   => axi_read_enable_vec
                         );
  end block;

  b_in_shutdown_del : block
    signal in_shutdown_vec  : std_logic_vector(1-1 downto 0);
    signal in_shutdown_del_vec : std_logic_vector(1-1 downto 0);
  begin
    in_shutdown_vec(0) <= in_shutdown;
    in_shutdown_del <= in_shutdown_del_vec(0);
    i_in_shutdown_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => BS_INFO_TABLE_REGISTER_ADDR + BS_INFO_TABLE_REGISTER_DATA-1)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => in_shutdown_vec,
                          q   => in_shutdown_del_vec
                         );
  end block;



    -- Signal write completion at the earliest opportunity.   
    reg_write_complete_bs_table <= '1' when axi_write_complete = '1'
                                   else '0';

    process (clk)
    begin
      if rising_edge(clk) then
        if vsm_read_enable = '1' then
          -- We're doing an internal read from both BS INFO TABLE lutrams.
          --

          fetch_addr(C_AXI_REG_DATA_WIDTH-1 downto 0) <= address_from_mem_del;
          fetch_size(PC_MAX_BS_SIZE_WIDTH-1 downto 0) <= size_from_mem_del;

          bs_id <= id_from_mem_del;
        elsif axi_read_enable = '1' then
          -- I can only read the table if in_shutdown = 1 and in_shutdown_d1 = 1.  
          -- Otherwise, the address_del might be invalid.  In all other read cases, 
          -- I want to return 0

          --if in_shutdown = '1' and in_shutdown_d1 = '1' then
          if in_shutdown = '1' and in_shutdown_del = '1' then
            -- address_from_mem and ctrl_from_mem are accessed using access_address_del which 
            -- is a registered version of access_address.  access_address is selected using 
            -- in_shutdown.  This can change between the cycle where access_address was selected 
            -- and access_address_del was used.  If I dont use in_shutdown_d1 in the condition, I 
            -- can end up with the case where in_shutdown = 1 now, but was 0 when access_address 
            -- was selected, which means I'd read from the incorrect address
            --
            case reg_select_slice(1 downto 0) is
              when "00" =>
                          -- Read from the ID Registers
                          -- -------------------------------
                          reg_rdata_bs_table_id(C_AXI_REG_DATA_WIDTH-1 downto C_BS_ID_WIDTH) <= (others => '0');
                          reg_rdata_bs_table_id(C_BS_ID_WIDTH-1 downto                    0) <= id_from_mem_del;  
              when "01" =>                
                          -- Read from the Address Registers
                          -- -------------------------------
                          reg_rdata_bs_table_address <= address_from_mem_del;

              when "10" =>
                          -- Read from the size Registers
                          -- -------------------------------
                          reg_rdata_bs_table_size(C_AXI_REG_DATA_WIDTH-1 downto PC_MAX_BS_SIZE_WIDTH) <= (others => '0');
                          reg_rdata_bs_table_size(PC_MAX_BS_SIZE_WIDTH-1 downto                    0) <= size_from_mem_del;
            
              -- coverage off
              when others =>
              -- coverage on
            end case;

          else            
            if C_REQUIRES_CLEAR_BITSTREAM = 0 then
              reg_rdata_bs_table_id      <= (others => '0');
            end if;
            reg_rdata_bs_table_address <= (others => '0');
            reg_rdata_bs_table_size    <= (others => '0');
          end if;          
        elsif axi_write_complete = '1' and in_shutdown = '1' and in_shutdown_d1 = '1' then
          -- access_address_del is a registered version of access_address.  access_address is 
          -- selected using in_shutdown.  This can change between the cycle where access_address 
          -- was selected and access_address_del was used.
          -- If I dont use in_shutdown_d1 in the condition, I can end up with the case where 
          -- in_shutdown = 1 now, but was 0 when access_address was selected, which means I'd 
          -- write to the incorrect address

          if bad_bs_info_addr = '0' then 
            case reg_select_slice(1 downto 0) is
              when "00" =>
                            -- Write to the ID registers
                            -- -------------------------------
                            if C_REQUIRES_CLEAR_BITSTREAM = 1 then
                              bs_id_table(access_address_del) <= reg_wdata_i(bs_id_table(0)'RANGE );
                            end if;
              when "01" =>                
                            -- Write to the Address Registers
                            -- -------------------------------
                            --
                            bs_address_table(access_address_del) <= reg_wdata_i;
                
              when "10" =>
                            -- Write to the Size registers
                            -- -------------------------------
                            bs_size_table(access_address_del) <= reg_wdata_i(bs_size_table(0)'RANGE );
            
              -- coverage off
              when others =>
              -- coverage on
            end case;
          end if;
        end if;
      end if;
    end process;

    
    -- Fetch the data from memory.
    address_from_mem <= bs_address_table(access_address_del);
    size_from_mem    <= bs_size_table   (access_address_del);

  b_address_from_mem_del : block
    signal address_from_mem_vec  : std_logic_vector(C_AXI_REG_DATA_WIDTH-1 downto 0);
    signal address_from_mem_del_vec : std_logic_vector(C_AXI_REG_DATA_WIDTH-1 downto 0);
  begin
    address_from_mem_vec <= address_from_mem;
    address_from_mem_del <= address_from_mem_del_vec;
    i_address_from_mem_del : entity prc_v1_2_1.delay
             generic map (WIDTH => C_AXI_REG_DATA_WIDTH, SCLR_ON => false, FAST_INPUT => TRUE,
                         LENGTH => BS_INFO_TABLE_REGISTER_DATA-1)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => address_from_mem_vec,
                          q   => address_from_mem_del_vec
                         );
  end block;

  b_size_from_mem_del : block
    signal size_from_mem_vec  : std_logic_vector(PC_MAX_BS_SIZE_WIDTH-1 downto 0);
    signal size_from_mem_del_vec : std_logic_vector(PC_MAX_BS_SIZE_WIDTH-1 downto 0);
  begin
    size_from_mem_vec <= size_from_mem;
    size_from_mem_del <= size_from_mem_del_vec;
    i_size_from_mem_del : entity prc_v1_2_1.delay
             generic map (WIDTH => PC_MAX_BS_SIZE_WIDTH, SCLR_ON => false, FAST_INPUT => TRUE,
                         LENGTH => BS_INFO_TABLE_REGISTER_DATA-1)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => size_from_mem_vec,
                          q   => size_from_mem_del_vec
                         );
  end block;


    gen_id_from_mem: if C_REQUIRES_CLEAR_BITSTREAM = 1 generate
      id_from_mem    <= bs_id_table     (access_address_del);
        b_id_from_mem_del : block
    signal id_from_mem_vec  : std_logic_vector(C_BS_ID_WIDTH-1 downto 0);
    signal id_from_mem_del_vec : std_logic_vector(C_BS_ID_WIDTH-1 downto 0);
  begin
    id_from_mem_vec <= id_from_mem;
    id_from_mem_del <= id_from_mem_del_vec;
    i_id_from_mem_del : entity prc_v1_2_1.delay
             generic map (WIDTH => C_BS_ID_WIDTH, SCLR_ON => false, FAST_INPUT => TRUE,
                         LENGTH => BS_INFO_TABLE_REGISTER_DATA-1)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => id_from_mem_vec,
                          q   => id_from_mem_del_vec
                         );
  end block;

    end generate gen_id_from_mem;
  end block b_bs_info;

  -- -----------------------------------------------------------------------------------------
  -- The BS Information Table :END
  -- -----------------------------------------------------------------------------------------

  -- Manage the "load" flag which is required in UltraScale
  gen_load_flag_no_clear: if C_REQUIRES_CLEAR_BITSTREAM = 0 generate
    load_flag <= '1';
  end generate gen_load_flag_no_clear;

  gen_load_flag_clear: if C_REQUIRES_CLEAR_BITSTREAM /= 0 generate
    p_load_flag :  process (clk)
    begin
      if rising_edge(clk) then
        if current_state = ST_WAIT_FOR_TRIGGER and full_flag = '1'   -- When the trigger arrives I need to unload the RM
                                                                     -- so clear the flag to allow the clear bitstream to be fetched
           then
          load_flag <= '0';
        elsif
              (current_state = ST_WAIT_FOR_TRIGGER and full_flag = '0') or  -- When the trigger arrives I don't need to unload an RM
                                                                            -- so set the flag to skip the clear bitstream
              (current_state = ST_WAIT_FOR_DONE    and cp_done   = '1') or  -- When I see the first done, I don't need the load flag anymore.
                                                                            -- If I get a bad_config error on the clear bitstream, and I 
                                                                            -- continue with the next BS, I need to change the load flag
              (current_state = ST_WAIT_FOR_DONE and bad_config_error_flag = '1' and C_CAN_ENTER_SHUTDOWN_ON_ERROR = false and load_flag = '0') 
          then

          load_flag <= '1';
        end if; 
    
      end if;     
    end process p_load_flag;
  end generate gen_load_flag_clear;
 
  -- -----------------------------------------------------------------------------------------
  -- The Trigger Manager. Converts triggers into a single Trigger ID.
  -- -----------------------------------------------------------------------------------------
  i_trigger_manager: entity prc_v1_2_1.trigger_manager
    generic map (
      C_XDEVICEFAMILY      => C_XDEVICEFAMILY,
      C_RESET_ACTIVE_LEVEL => C_RESET_ACTIVE_LEVEL,
      C_NUM_TRIGGERS       => C_NUM_HW_TRIGGERS,
      C_TRIGGER_ID_WIDTH   => C_HW_TRIGGER_ID_WIDTH)
    port map (
      clk                 => clk,
      reset               => reset,
      hw_triggers         => hw_triggers,
      hw_triggers_pending => hw_triggers_pending,
      vsm_ready_for_trigger  => ready_for_hw_trigger,
      trigger_id          => hw_trigger_id,          
      trigger_valid       => hw_trigger_valid);



  -- -----------------------------------------------------------------------------------------
  -- Generate the valid signals for the table accesses
  -- -----------------------------------------------------------------------------------------
  -- Table accesses are pipelined, so this code generates appropriately latency balanced
  -- control signals for the rest of the VSM

  -- Fetch all fields when we start loading the "load" bitstream
  -- Fetch all fields except RM_ID when we restart after shutdown and we are full, 
  --                                    or we are fetching information about a clear bitsream

  start_fetching_all              <= '1' when current_state = ST_START_FETCH_RM_INFO AND load_flag = '1'  else '0';
  start_fetching_all_except_rm_id <= '1' when (current_state = ST_START_FETCH_RM_INFO_AFTER_SHUTDOWN) or
                                              (current_state = ST_START_FETCH_RM_INFO_AFTER_RESET) or
                                              (current_state = ST_START_FETCH_RM_INFO AND load_flag = '0')
                                              else '0';

    -- This is the delay when doing a fetch after a trigger 
    -- m1 is "minus 1" and it comes a cycle early to alloy rm_id itself to be registered.
    --
  b_start_fetching_all_del : block
    signal start_fetching_all_vec  : std_logic_vector(1-1 downto 0);
    signal rm_id_valid_m1_vec : std_logic_vector(1-1 downto 0);
  begin
    start_fetching_all_vec(0) <= start_fetching_all;
    rm_id_valid_m1 <= rm_id_valid_m1_vec(0);
    i_start_fetching_all_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => TRIGGER_TABLE_REGISTER_ADDR + TRIGGER_TABLE_REGISTER_DATA - 1)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => start_fetching_all_vec,
                          q   => rm_id_valid_m1_vec
                         );
  end block;


    -- This is the rm_id that is needed after a trigger is processed
  b_rm_id_valid_m1_del : block
    signal rm_id_valid_m1_vec  : std_logic_vector(1-1 downto 0);
    signal rm_id_valid_new_after_trigger_vec : std_logic_vector(1-1 downto 0);
  begin
    rm_id_valid_m1_vec(0) <= rm_id_valid_m1;
    rm_id_valid_new_after_trigger <= rm_id_valid_new_after_trigger_vec(0);
    i_rm_id_valid_m1_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => 1)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => rm_id_valid_m1_vec,
                          q   => rm_id_valid_new_after_trigger_vec
                         );
  end block;


  b_start_fetching_all_except_rm_id_del : block
    signal start_fetching_all_except_rm_id_vec  : std_logic_vector(1-1 downto 0);
    signal rm_id_valid_new_after_shutdown_vec : std_logic_vector(1-1 downto 0);
  begin
    start_fetching_all_except_rm_id_vec(0) <= start_fetching_all_except_rm_id;
    rm_id_valid_new_after_shutdown <= rm_id_valid_new_after_shutdown_vec(0);
    i_start_fetching_all_except_rm_id_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => 1)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => start_fetching_all_except_rm_id_vec,
                          q   => rm_id_valid_new_after_shutdown_vec
                         );
  end block;


    -- This flag marks when the RM_ID is valid *when accessed by the VSM*.
    -- The RM_ID can also be set by the AXI interfaces, but we don't need to
    -- know that

    rm_id_valid <= rm_id_valid_new_after_trigger  when (current_state = ST_FETCH_RM_INFO and load_flag = '1') else
                   rm_id_valid_new_after_shutdown when (current_state = ST_FETCH_RM_INFO and load_flag = '0') else
                   rm_id_valid_new_after_shutdown when current_state = ST_FETCH_RM_INFO_AFTER_SHUTDOWN else
                   rm_id_valid_new_after_shutdown when current_state = ST_FETCH_RM_INFO_AFTER_RESET else
                   '0';


  b_rm_id_valid_del : block
    signal rm_id_valid_vec  : std_logic_vector(1-1 downto 0);
    signal rm_info_valid_vec : std_logic_vector(1-1 downto 0);
  begin
    rm_id_valid_vec(0) <= rm_id_valid;
    rm_info_valid <= rm_info_valid_vec(0);
    i_rm_id_valid_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => RM_INFO_TABLE_REGISTER_ADDR + RM_INFO_TABLE_REGISTER_DATA)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => rm_id_valid_vec,
                          q   => rm_info_valid_vec
                         );
  end block;

  b_rm_info_valid_del : block
    signal rm_info_valid_vec  : std_logic_vector(1-1 downto 0);
    signal bs_info_valid_vec : std_logic_vector(1-1 downto 0);
  begin
    rm_info_valid_vec(0) <= rm_info_valid;
    bs_info_valid <= bs_info_valid_vec(0);
    i_rm_info_valid_del : entity prc_v1_2_1.delay
             generic map (WIDTH => 1, SCLR_ON => TRUE, FAST_INPUT => TRUE,
                         LENGTH => BS_INFO_TABLE_REGISTER_ADDR + BS_INFO_TABLE_REGISTER_DATA)
             port    map (clk => clk, ce  => '1', sclr => reset_ah,
                          d   => rm_info_valid_vec,
                          q   => bs_info_valid_vec
                         );
  end block;



  
end architecture synth;
