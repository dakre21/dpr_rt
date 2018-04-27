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

-- IP VLNV: xilinx.com:ip:axi_emc:3.0
-- IP Revision: 15

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT axi_em_ctrl
  PORT (
    s_axi_aclk : IN STD_LOGIC;
    s_axi_aresetn : IN STD_LOGIC;
    rdclk : IN STD_LOGIC;
    s_axi_reg_awaddr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    s_axi_reg_awvalid : IN STD_LOGIC;
    s_axi_reg_awready : OUT STD_LOGIC;
    s_axi_reg_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_reg_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_reg_wvalid : IN STD_LOGIC;
    s_axi_reg_wready : OUT STD_LOGIC;
    s_axi_reg_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_reg_bvalid : OUT STD_LOGIC;
    s_axi_reg_bready : IN STD_LOGIC;
    s_axi_reg_araddr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    s_axi_reg_arvalid : IN STD_LOGIC;
    s_axi_reg_arready : OUT STD_LOGIC;
    s_axi_reg_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_reg_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_reg_rvalid : OUT STD_LOGIC;
    s_axi_reg_rready : IN STD_LOGIC;
    s_axi_mem_awid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_mem_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_mem_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axi_mem_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_mem_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_mem_awlock : IN STD_LOGIC;
    s_axi_mem_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_mem_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_mem_awvalid : IN STD_LOGIC;
    s_axi_mem_awready : OUT STD_LOGIC;
    s_axi_mem_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_mem_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_mem_wlast : IN STD_LOGIC;
    s_axi_mem_wvalid : IN STD_LOGIC;
    s_axi_mem_wready : OUT STD_LOGIC;
    s_axi_mem_bid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_mem_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_mem_bvalid : OUT STD_LOGIC;
    s_axi_mem_bready : IN STD_LOGIC;
    s_axi_mem_arid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_mem_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_mem_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axi_mem_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_mem_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_mem_arlock : IN STD_LOGIC;
    s_axi_mem_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_mem_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_mem_arvalid : IN STD_LOGIC;
    s_axi_mem_arready : OUT STD_LOGIC;
    s_axi_mem_rid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_mem_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_mem_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_mem_rlast : OUT STD_LOGIC;
    s_axi_mem_rvalid : OUT STD_LOGIC;
    s_axi_mem_rready : IN STD_LOGIC;
    mem_dq_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    mem_dq_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    mem_dq_t : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    mem_a : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    mem_ce : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    mem_cen : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    mem_oen : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    mem_wen : OUT STD_LOGIC;
    mem_ben : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    mem_qwen : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    mem_rpn : OUT STD_LOGIC;
    mem_adv_ldn : OUT STD_LOGIC;
    mem_lbon : OUT STD_LOGIC;
    mem_cken : OUT STD_LOGIC;
    mem_rnw : OUT STD_LOGIC;
    mem_cre : OUT STD_LOGIC;
    mem_wait : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : axi_em_ctrl
  PORT MAP (
    s_axi_aclk => s_axi_aclk,
    s_axi_aresetn => s_axi_aresetn,
    rdclk => rdclk,
    s_axi_reg_awaddr => s_axi_reg_awaddr,
    s_axi_reg_awvalid => s_axi_reg_awvalid,
    s_axi_reg_awready => s_axi_reg_awready,
    s_axi_reg_wdata => s_axi_reg_wdata,
    s_axi_reg_wstrb => s_axi_reg_wstrb,
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
    s_axi_mem_awid => s_axi_mem_awid,
    s_axi_mem_awaddr => s_axi_mem_awaddr,
    s_axi_mem_awlen => s_axi_mem_awlen,
    s_axi_mem_awsize => s_axi_mem_awsize,
    s_axi_mem_awburst => s_axi_mem_awburst,
    s_axi_mem_awlock => s_axi_mem_awlock,
    s_axi_mem_awcache => s_axi_mem_awcache,
    s_axi_mem_awprot => s_axi_mem_awprot,
    s_axi_mem_awvalid => s_axi_mem_awvalid,
    s_axi_mem_awready => s_axi_mem_awready,
    s_axi_mem_wdata => s_axi_mem_wdata,
    s_axi_mem_wstrb => s_axi_mem_wstrb,
    s_axi_mem_wlast => s_axi_mem_wlast,
    s_axi_mem_wvalid => s_axi_mem_wvalid,
    s_axi_mem_wready => s_axi_mem_wready,
    s_axi_mem_bid => s_axi_mem_bid,
    s_axi_mem_bresp => s_axi_mem_bresp,
    s_axi_mem_bvalid => s_axi_mem_bvalid,
    s_axi_mem_bready => s_axi_mem_bready,
    s_axi_mem_arid => s_axi_mem_arid,
    s_axi_mem_araddr => s_axi_mem_araddr,
    s_axi_mem_arlen => s_axi_mem_arlen,
    s_axi_mem_arsize => s_axi_mem_arsize,
    s_axi_mem_arburst => s_axi_mem_arburst,
    s_axi_mem_arlock => s_axi_mem_arlock,
    s_axi_mem_arcache => s_axi_mem_arcache,
    s_axi_mem_arprot => s_axi_mem_arprot,
    s_axi_mem_arvalid => s_axi_mem_arvalid,
    s_axi_mem_arready => s_axi_mem_arready,
    s_axi_mem_rid => s_axi_mem_rid,
    s_axi_mem_rdata => s_axi_mem_rdata,
    s_axi_mem_rresp => s_axi_mem_rresp,
    s_axi_mem_rlast => s_axi_mem_rlast,
    s_axi_mem_rvalid => s_axi_mem_rvalid,
    s_axi_mem_rready => s_axi_mem_rready,
    mem_dq_i => mem_dq_i,
    mem_dq_o => mem_dq_o,
    mem_dq_t => mem_dq_t,
    mem_a => mem_a,
    mem_ce => mem_ce,
    mem_cen => mem_cen,
    mem_oen => mem_oen,
    mem_wen => mem_wen,
    mem_ben => mem_ben,
    mem_qwen => mem_qwen,
    mem_rpn => mem_rpn,
    mem_adv_ldn => mem_adv_ldn,
    mem_lbon => mem_lbon,
    mem_cken => mem_cken,
    mem_rnw => mem_rnw,
    mem_cre => mem_cre,
    mem_wait => mem_wait
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file axi_em_ctrl.vhd when simulating
-- the core, axi_em_ctrl. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.

