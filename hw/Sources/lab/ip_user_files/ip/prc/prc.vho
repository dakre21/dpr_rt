-- (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
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
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:prc:1.2
-- IP Revision: 1

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT prc
  PORT (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    icap_clk : IN STD_LOGIC;
    icap_reset : IN STD_LOGIC;
    icap_csib : OUT STD_LOGIC;
    icap_rdwrb : OUT STD_LOGIC;
    icap_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    icap_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    vsm_vs_main_hw_triggers : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    vsm_vs_main_rm_shutdown_req : OUT STD_LOGIC;
    vsm_vs_main_rm_shutdown_ack : IN STD_LOGIC;
    vsm_vs_main_rm_decouple : OUT STD_LOGIC;
    vsm_vs_main_rm_reset : OUT STD_LOGIC;
    vsm_vs_main_event_error : OUT STD_LOGIC;
    vsm_vs_main_sw_shutdown_req : OUT STD_LOGIC;
    vsm_vs_main_sw_startup_req : OUT STD_LOGIC;
    vsm_vs_main_m_axis_status_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    vsm_vs_main_m_axis_status_tvalid : OUT STD_LOGIC;
    cap_req : OUT STD_LOGIC;
    cap_gnt : IN STD_LOGIC;
    cap_rel : IN STD_LOGIC;
    s_axi_reg_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_reg_awvalid : IN STD_LOGIC;
    s_axi_reg_awready : OUT STD_LOGIC;
    s_axi_reg_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_reg_wvalid : IN STD_LOGIC;
    s_axi_reg_wready : OUT STD_LOGIC;
    s_axi_reg_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_reg_bvalid : OUT STD_LOGIC;
    s_axi_reg_bready : IN STD_LOGIC;
    s_axi_reg_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_reg_arvalid : IN STD_LOGIC;
    s_axi_reg_arready : OUT STD_LOGIC;
    s_axi_reg_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_reg_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_reg_rvalid : OUT STD_LOGIC;
    s_axi_reg_rready : IN STD_LOGIC;
    m_axi_mem_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_mem_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_mem_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_mem_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_mem_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_mem_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_mem_aruser : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_mem_arvalid : OUT STD_LOGIC;
    m_axi_mem_arready : IN STD_LOGIC;
    m_axi_mem_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_mem_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_mem_rlast : IN STD_LOGIC;
    m_axi_mem_rvalid : IN STD_LOGIC;
    m_axi_mem_rready : OUT STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : prc
  PORT MAP (
    clk => clk,
    reset => reset,
    icap_clk => icap_clk,
    icap_reset => icap_reset,
    icap_csib => icap_csib,
    icap_rdwrb => icap_rdwrb,
    icap_i => icap_i,
    icap_o => icap_o,
    vsm_vs_main_hw_triggers => vsm_vs_main_hw_triggers,
    vsm_vs_main_rm_shutdown_req => vsm_vs_main_rm_shutdown_req,
    vsm_vs_main_rm_shutdown_ack => vsm_vs_main_rm_shutdown_ack,
    vsm_vs_main_rm_decouple => vsm_vs_main_rm_decouple,
    vsm_vs_main_rm_reset => vsm_vs_main_rm_reset,
    vsm_vs_main_event_error => vsm_vs_main_event_error,
    vsm_vs_main_sw_shutdown_req => vsm_vs_main_sw_shutdown_req,
    vsm_vs_main_sw_startup_req => vsm_vs_main_sw_startup_req,
    vsm_vs_main_m_axis_status_tdata => vsm_vs_main_m_axis_status_tdata,
    vsm_vs_main_m_axis_status_tvalid => vsm_vs_main_m_axis_status_tvalid,
    cap_req => cap_req,
    cap_gnt => cap_gnt,
    cap_rel => cap_rel,
    s_axi_reg_awaddr => s_axi_reg_awaddr,
    s_axi_reg_awvalid => s_axi_reg_awvalid,
    s_axi_reg_awready => s_axi_reg_awready,
    s_axi_reg_wdata => s_axi_reg_wdata,
    s_axi_reg_wvalid => s_axi_reg_wvalid,
    s_axi_reg_wready => s_axi_reg_wready,
    s_axi_reg_bresp => s_axi_reg_bresp,
    s_axi_reg_bvalid => s_axi_reg_bvalid,
    s_axi_reg_bready => s_axi_reg_bready,
    s_axi_reg_araddr => s_axi_reg_araddr,
    s_axi_reg_arvalid => s_axi_reg_arvalid,
    s_axi_reg_arready => s_axi_reg_arready,
    s_axi_reg_rdata => s_axi_reg_rdata,
    s_axi_reg_rresp => s_axi_reg_rresp,
    s_axi_reg_rvalid => s_axi_reg_rvalid,
    s_axi_reg_rready => s_axi_reg_rready,
    m_axi_mem_araddr => m_axi_mem_araddr,
    m_axi_mem_arlen => m_axi_mem_arlen,
    m_axi_mem_arsize => m_axi_mem_arsize,
    m_axi_mem_arburst => m_axi_mem_arburst,
    m_axi_mem_arprot => m_axi_mem_arprot,
    m_axi_mem_arcache => m_axi_mem_arcache,
    m_axi_mem_aruser => m_axi_mem_aruser,
    m_axi_mem_arvalid => m_axi_mem_arvalid,
    m_axi_mem_arready => m_axi_mem_arready,
    m_axi_mem_rdata => m_axi_mem_rdata,
    m_axi_mem_rresp => m_axi_mem_rresp,
    m_axi_mem_rlast => m_axi_mem_rlast,
    m_axi_mem_rvalid => m_axi_mem_rvalid,
    m_axi_mem_rready => m_axi_mem_rready
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file prc.vhd when simulating
-- the core, prc. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.

