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
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library prc_v1_2_1;
use prc_v1_2_1.prc_v1_2_1_pkg.all;

package prc_prc_table_pkg is
  function get_trigger_to_rm_table_entry (vs_id: integer; trigger_id: integer ) return natural;
  function get_rm_table_load_addr        (vs_id: integer; rm_id     : integer ) return natural;
  function get_rm_table_clear_addr       (vs_id: integer; rm_id     : integer ) return natural;
  
  function get_rm_table_shutdown_required   (vs_id: integer; rm_id: integer) return std_logic_vector;
  function get_rm_table_startup_required    (vs_id: integer; rm_id: integer) return std_logic_vector;
  function get_rm_table_reset_required      (vs_id: integer; rm_id: integer) return std_logic_vector;
  function get_rm_table_reset_duration      (vs_id: integer; rm_id: integer) return std_logic_vector;

  -- Bitstream table functions
  function get_bs_table_id      (vs_id: integer; addr: integer) return std_logic_vector;
  function get_bs_table_mem_addr(vs_id: integer; addr: integer) return std_logic_vector;
  function get_bs_table_size    (vs_id: integer; addr: integer) return std_logic_vector;
end package;

package body prc_prc_table_pkg is
  function get_trigger_to_rm_table_entry (vs_id     : integer;
                                          trigger_id: integer
                                          ) return natural is  
    
  begin
    if vs_id = 0 then
      if trigger_id = 0 then
        return 0;
      elsif trigger_id = 1 then
        return 1;
      elsif trigger_id = 2 then
        return 2;
      elsif trigger_id = 3 then
        return 3;
      elsif trigger_id = 4 then
        return 4;
      elsif trigger_id = 5 then
        return 5;
      elsif trigger_id = 6 then
        return 6;
      elsif trigger_id = 7 then
        return 7;
      elsif trigger_id = 8 then
        return 8;
      elsif trigger_id = 9 then
        return 9;
      elsif trigger_id = 10 then
        return 10;
      elsif trigger_id = 11 then
        return 11;
      elsif trigger_id = 12 then
        return 12;
      elsif trigger_id = 13 then
        return 0;
      elsif trigger_id = 14 then
        return 1;
      elsif trigger_id = 15 then
        return 2;
      elsif trigger_id = 16 then
        return 3;
      elsif trigger_id = 17 then
        return 4;
      elsif trigger_id = 18 then
        return 5;
      elsif trigger_id = 19 then
        return 6;
      elsif trigger_id = 20 then
        return 7;
      elsif trigger_id = 21 then
        return 8;
      elsif trigger_id = 22 then
        return 9;
      elsif trigger_id = 23 then
        return 10;
      elsif trigger_id = 24 then
        return 11;
      elsif trigger_id = 25 then
        return 12;
      elsif trigger_id = 26 then
        return 0;
      elsif trigger_id = 27 then
        return 1;
      elsif trigger_id = 28 then
        return 2;
      elsif trigger_id = 29 then
        return 3;
      elsif trigger_id = 30 then
        return 4;
      elsif trigger_id = 31 then
        return 5;
      else
        report "get_trigger_to_rm_table_entry does not support VS_ID = " & integer'image(vs_id) & " Trigger ID = " & integer'image(trigger_id) severity FAILURE;
      end if;     
    else
      report  "get_trigger_to_rm_table_entry does not support VS_ID = " & integer'image(vs_id) severity FAILURE;
    end if;
    return 0; 
  end;                                                                                         
  

  -- Return an integer instead of a std_logic_vector because we don't know how big the
  -- vector should be.  It's sized appropriately in each VSM to access the actual BS INFO
  -- table
  function get_rm_table_load_addr (vs_id: integer; rm_id: integer ) return natural is
  begin
    -- In 7 series there's 1 bitstream per RM so the load address can be the RM_ID.
    -- In UltraScale there are 2 bitstreams per RM:
    --   If BS ID 0 is the partial, addr = ($rm_id * 2)+0
    --   If BS ID 1 is the partial, addr = ($rm_id * 2)+1
    if vs_id = 0 then
      if rm_id = 0 then
        return 0;
      elsif rm_id = 1 then
        return 1;
      elsif rm_id = 2 then
        return 2;
      elsif rm_id = 3 then
        return 3;
      elsif rm_id = 4 then
        return 4;
      elsif rm_id = 5 then
        return 5;
      elsif rm_id = 6 then
        return 6;
      elsif rm_id = 7 then
        return 7;
      elsif rm_id = 8 then
        return 8;
      elsif rm_id = 9 then
        return 9;
      elsif rm_id = 10 then
        return 10;
      elsif rm_id = 11 then
        return 11;
      elsif rm_id = 12 then
        return 12;
      else
        -- We can pre-allocate RMs in the table which means there will be more entries than RMs.
        -- Don't issue an error; just return 0
        return 0;
      end if;     
    else
      report  "get_rm_table_load_addr does not support VS_ID = " & integer'image(vs_id) severity FAILURE;
    end if;
    return 0; 
 end;                                                                                         
  



  -- Return an integer instead of a std_logic_vector because we don't know how big the
  -- vector should be.  It's sized appropriately in each VSM to access the actual BS INFO
  -- table
  function get_rm_table_clear_addr (vs_id: integer; rm_id: integer ) return natural is
  begin
  -- For now assume each rm only has one bitstream, so the clear address is the rm_id
  --
    -- In UltraScale there are 2 bitstreams per RM:
    --   If BS ID 0 is the clear, addr = ($rm_id * 2)+0
    --   If BS ID 1 is the clear, addr = ($rm_id * 2)+1

    if vs_id = 0 then
      if rm_id = 0 then
        return 0;
      elsif rm_id = 1 then
        return 1;
      elsif rm_id = 2 then
        return 2;
      elsif rm_id = 3 then
        return 3;
      elsif rm_id = 4 then
        return 4;
      elsif rm_id = 5 then
        return 5;
      elsif rm_id = 6 then
        return 6;
      elsif rm_id = 7 then
        return 7;
      elsif rm_id = 8 then
        return 8;
      elsif rm_id = 9 then
        return 9;
      elsif rm_id = 10 then
        return 10;
      elsif rm_id = 11 then
        return 11;
      elsif rm_id = 12 then
        return 12;
      else
        -- We can pre-allocate RMs in the table which means there will be more entries than RMs.
        -- Don't issue an error; just return 0
        return 0;
      end if;     
    else
      report  "get_rm_table_clear_addr does not support VS_ID = " & integer'image(vs_id) severity FAILURE;
    end if;
    return 0; 
 end;                                                                                         
  

 
  function get_rm_table_shutdown_required (vs_id: integer; rm_id: integer ) return std_logic_vector is
  begin
    if vs_id = 0 then
      if rm_id = 0 then
        return PC_RM_NO_SHUTDOWN_REQUIRED;
      elsif rm_id = 1 then
        return PC_RM_NO_SHUTDOWN_REQUIRED;
      elsif rm_id = 2 then
        return PC_RM_NO_SHUTDOWN_REQUIRED;
      elsif rm_id = 3 then
        return PC_RM_NO_SHUTDOWN_REQUIRED;
      elsif rm_id = 4 then
        return PC_RM_NO_SHUTDOWN_REQUIRED;
      elsif rm_id = 5 then
        return PC_RM_NO_SHUTDOWN_REQUIRED;
      elsif rm_id = 6 then
        return PC_RM_NO_SHUTDOWN_REQUIRED;
      elsif rm_id = 7 then
        return PC_RM_NO_SHUTDOWN_REQUIRED;
      elsif rm_id = 8 then
        return PC_RM_NO_SHUTDOWN_REQUIRED;
      elsif rm_id = 9 then
        return PC_RM_NO_SHUTDOWN_REQUIRED;
      elsif rm_id = 10 then
        return PC_RM_NO_SHUTDOWN_REQUIRED;
      elsif rm_id = 11 then
        return PC_RM_NO_SHUTDOWN_REQUIRED;
      elsif rm_id = 12 then
        return PC_RM_NO_SHUTDOWN_REQUIRED;
      else
        --report "get_rm_table_shutdown_required does not support VS_ID = " & integer'image(vs_id) & " RM ID = " & integer'image(rm_id) severity FAILURE;
        -- We can pre-allocate RMs in the table which means there will be more entries than RMs.
        -- Don't issue an error; just return 0
        return PC_RM_NO_SHUTDOWN_REQUIRED;
      end if;     
    else
      report  "get_rm_table_shutdown_required does not support VS_ID = " & integer'image(vs_id) severity FAILURE;
    end if;
    return PC_RM_HW_SHUTDOWN_REQUIRED; 
  end;                             


  function get_rm_table_startup_required (vs_id: integer; rm_id: integer ) return std_logic_vector is
  begin
    if vs_id = 0 then
      if rm_id = 0 then
        return PC_RM_STARTUP_NOT_REQUIRED;
      elsif rm_id = 1 then
        return PC_RM_STARTUP_NOT_REQUIRED;
      elsif rm_id = 2 then
        return PC_RM_STARTUP_NOT_REQUIRED;
      elsif rm_id = 3 then
        return PC_RM_STARTUP_NOT_REQUIRED;
      elsif rm_id = 4 then
        return PC_RM_STARTUP_NOT_REQUIRED;
      elsif rm_id = 5 then
        return PC_RM_STARTUP_NOT_REQUIRED;
      elsif rm_id = 6 then
        return PC_RM_STARTUP_NOT_REQUIRED;
      elsif rm_id = 7 then
        return PC_RM_STARTUP_NOT_REQUIRED;
      elsif rm_id = 8 then
        return PC_RM_STARTUP_NOT_REQUIRED;
      elsif rm_id = 9 then
        return PC_RM_STARTUP_NOT_REQUIRED;
      elsif rm_id = 10 then
        return PC_RM_STARTUP_NOT_REQUIRED;
      elsif rm_id = 11 then
        return PC_RM_STARTUP_NOT_REQUIRED;
      elsif rm_id = 12 then
        return PC_RM_STARTUP_NOT_REQUIRED;
      else
        --report "get_rm_table_sw_startup_required does not support VS_ID = " & integer'image(vs_id) & " RM ID = " & integer'image(rm_id) severity FAILURE;
        -- We can pre-allocate RMs in the table which means there will be more entries than RMs.
        -- Don't issue an error; just return 0
        return PC_RM_STARTUP_NOT_REQUIRED;
      end if;     
    else
      report  "get_rm_table_sw_startup_required does not support VS_ID = " & integer'image(vs_id) severity FAILURE;
    end if;
    return PC_RM_STARTUP_NOT_REQUIRED; 
  end;                             

  
  function get_rm_table_reset_required      (vs_id: integer; rm_id: integer) return std_logic_vector is
  begin
    if vs_id = 0 then
      if rm_id = 0 then
        return PC_RM_HIGH_RESET_REQUIRED;
      elsif rm_id = 1 then
        return PC_RM_HIGH_RESET_REQUIRED;
      elsif rm_id = 2 then
        return PC_RM_HIGH_RESET_REQUIRED;
      elsif rm_id = 3 then
        return PC_RM_HIGH_RESET_REQUIRED;
      elsif rm_id = 4 then
        return PC_RM_HIGH_RESET_REQUIRED;
      elsif rm_id = 5 then
        return PC_RM_HIGH_RESET_REQUIRED;
      elsif rm_id = 6 then
        return PC_RM_HIGH_RESET_REQUIRED;
      elsif rm_id = 7 then
        return PC_RM_HIGH_RESET_REQUIRED;
      elsif rm_id = 8 then
        return PC_RM_HIGH_RESET_REQUIRED;
      elsif rm_id = 9 then
        return PC_RM_HIGH_RESET_REQUIRED;
      elsif rm_id = 10 then
        return PC_RM_HIGH_RESET_REQUIRED;
      elsif rm_id = 11 then
        return PC_RM_HIGH_RESET_REQUIRED;
      elsif rm_id = 12 then
        return PC_RM_NO_RESET_REQUIRED;
      else
        --report "get_rm_table_reset_required does not support VS_ID = " & integer'image(vs_id) & " RM ID = " & integer'image(rm_id) severity FAILURE;
        -- We can pre-allocate RMs in the table which means there will be more entries than RMs.
        -- Don't issue an error; just return 0
        return PC_RM_NO_RESET_REQUIRED;
      end if;     
    else
      report  "get_rm_table_reset_required does not support VS_ID = " & integer'image(vs_id) severity FAILURE;
    end if;
    return PC_RM_NO_RESET_REQUIRED; 
  end;                             


  function get_rm_table_reset_duration (vs_id: integer; rm_id: integer) return std_logic_vector is
  begin
    if vs_id = 0 then
      if rm_id = 0 then
      -- Duration = 1
        return std_logic_vector(to_unsigned(0, PC_RM_RESET_DURATION_WIDTH));
      elsif rm_id = 1 then
      -- Duration = 1
        return std_logic_vector(to_unsigned(0, PC_RM_RESET_DURATION_WIDTH));
      elsif rm_id = 2 then
      -- Duration = 1
        return std_logic_vector(to_unsigned(0, PC_RM_RESET_DURATION_WIDTH));
      elsif rm_id = 3 then
      -- Duration = 1
        return std_logic_vector(to_unsigned(0, PC_RM_RESET_DURATION_WIDTH));
      elsif rm_id = 4 then
      -- Duration = 1
        return std_logic_vector(to_unsigned(0, PC_RM_RESET_DURATION_WIDTH));
      elsif rm_id = 5 then
      -- Duration = 1
        return std_logic_vector(to_unsigned(0, PC_RM_RESET_DURATION_WIDTH));
      elsif rm_id = 6 then
      -- Duration = 1
        return std_logic_vector(to_unsigned(0, PC_RM_RESET_DURATION_WIDTH));
      elsif rm_id = 7 then
      -- Duration = 1
        return std_logic_vector(to_unsigned(0, PC_RM_RESET_DURATION_WIDTH));
      elsif rm_id = 8 then
      -- Duration = 1
        return std_logic_vector(to_unsigned(0, PC_RM_RESET_DURATION_WIDTH));
      elsif rm_id = 9 then
      -- Duration = 1
        return std_logic_vector(to_unsigned(0, PC_RM_RESET_DURATION_WIDTH));
      elsif rm_id = 10 then
      -- Duration = 1
        return std_logic_vector(to_unsigned(0, PC_RM_RESET_DURATION_WIDTH));
      elsif rm_id = 11 then
      -- Duration = 1
        return std_logic_vector(to_unsigned(0, PC_RM_RESET_DURATION_WIDTH));
      elsif rm_id = 12 then
      -- Duration = 1
        return std_logic_vector(to_unsigned(0, PC_RM_RESET_DURATION_WIDTH));
      else
        --report "get_rm_table_reset_duration does not support VS_ID = " & integer'image(vs_id) & " RM ID = " & integer'image(rm_id) severity FAILURE;
        -- We can pre-allocate RMs in the table which means there will be more entries than RMs.
        -- Don't issue an error; just return 0
        return std_logic_vector(to_unsigned(0, PC_RM_RESET_DURATION_WIDTH));
      end if;     
    else
      report  "get_rm_table_reset_duration does not support VS_ID = " & integer'image(vs_id) severity FAILURE;
    end if;
    return std_logic_vector(to_unsigned(0, PC_RM_RESET_DURATION_WIDTH));
  end;                             



  -- Bitstream table functions

  function get_bs_table_id    (vs_id: integer; addr: integer) return std_logic_vector is
    variable ret: std_logic_vector(PC_MAX_BS_ID_WIDTH-1 downto 0) := (others => '0');
  begin
    if vs_id = 0 then
      if addr = 0 then
        ret := "00000000";
      elsif addr = 1 then
        ret := "00000000";
      elsif addr = 2 then
        ret := "00000000";
      elsif addr = 3 then
        ret := "00000000";
      elsif addr = 4 then
        ret := "00000000";
      elsif addr = 5 then
        ret := "00000000";
      elsif addr = 6 then
        ret := "00000000";
      elsif addr = 7 then
        ret := "00000000";
      elsif addr = 8 then
        ret := "00000000";
      elsif addr = 9 then
        ret := "00000000";
      elsif addr = 10 then
        ret := "00000000";
      elsif addr = 11 then
        ret := "00000000";
      elsif addr = 12 then
        ret := "00000000";
      else
        return std_logic_vector(to_unsigned(0, PC_MAX_BS_ID_WIDTH));
      end if;     
    else
      report  "get_bs_table_id does not support VS_ID = " & integer'image(vs_id) severity FAILURE;
    end if;
    return ret;
  end;  

  function get_bs_table_mem_addr(vs_id: integer; addr: integer) return std_logic_vector is
    begin
    if vs_id = 0 then
      if addr = 0 then
        return "00000001000000000000000000000000";
      elsif addr = 1 then
        return "00010010000000000000000000000000";
      elsif addr = 2 then
        return "00010110000000000000000000000000";
      elsif addr = 3 then
        return "00011000000000000000000000000000";
      elsif addr = 4 then
        return "00100001000000000000000000000000";
      elsif addr = 5 then
        return "00100011000000000000000000000000";
      elsif addr = 6 then
        return "00100110000000000000000000000000";
      elsif addr = 7 then
        return "00101001000000000000000000000000";
      elsif addr = 8 then
        return "00110010000000000000000000000000";
      elsif addr = 9 then
        return "00110110000000000000000000000000";
      elsif addr = 10 then
        return "01000000000000000000000000000000";
      elsif addr = 11 then
        return "01000100000000000000000000000000";
      elsif addr = 12 then
        return "00000000000000000000000000000000";
      else
        return std_logic_vector(to_unsigned(0, PC_AXI_DATA_WIDTH));
      end if;     
    else
      report  "get_bs_table_mem_addr does not support VS_ID = " & integer'image(vs_id) severity FAILURE;
    end if;
    return std_logic_vector(to_unsigned(0, PC_MAX_BS_SIZE_WIDTH));
  end;  
  
  function get_bs_table_size    (vs_id: integer; addr: integer) return std_logic_vector is
  begin
    if vs_id = 0 then
      if addr = 0 then
        return "00000000000000100101000000101100";
      elsif addr = 1 then
        return "00000000000001001011000110010100";
      elsif addr = 2 then
        return "00000000000000110001101000101100";
      elsif addr = 3 then
        return "00000000000000100101000000101100";
      elsif addr = 4 then
        return "00000000000000100101000000101100";
      elsif addr = 5 then
        return "00000000000000110011001101101100";
      elsif addr = 6 then
        return "00000000000000110011001101101100";
      elsif addr = 7 then
        return "00000000000000111100111001010100";
      elsif addr = 8 then
        return "00000000000001001011000110010100";
      elsif addr = 9 then
        return "00000000001101111101000001001000";
      elsif addr = 10 then
        return "00000000000001001110000010101100";
      elsif addr = 11 then
        return "00000000000001011001100000111100";
      elsif addr = 12 then
        return "00000000000000000000000000000000";
      else
        return std_logic_vector(to_unsigned(0, PC_MAX_BS_SIZE_WIDTH));
      end if;     
    else
      report  "get_bs_table_size does not support VS_ID = " & integer'image(vs_id) severity FAILURE;
    end if;
    return std_logic_vector(to_unsigned(0, PC_MAX_BS_SIZE_WIDTH));
  end;  
end package body prc_prc_table_pkg;
