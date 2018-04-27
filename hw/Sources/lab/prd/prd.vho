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

-- IP VLNV: xilinx.com:ip:pr_decoupler:1.0
-- IP Revision: 5

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT prd
  PORT (
    s_rp_add_TVALID : OUT STD_LOGIC;
    rp_rp_add_TVALID : IN STD_LOGIC;
    s_rp_add_TREADY : IN STD_LOGIC;
    rp_rp_add_TREADY : OUT STD_LOGIC;
    s_rp_add_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    rp_rp_add_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_rp_add_TLAST : OUT STD_LOGIC;
    rp_rp_add_TLAST : IN STD_LOGIC;
    rp_add_ref_clk : IN STD_LOGIC;
    rp_add_decouple_status : OUT STD_LOGIC;
    s_rp_comp_TVALID : OUT STD_LOGIC;
    rp_rp_comp_TVALID : IN STD_LOGIC;
    s_rp_comp_TREADY : IN STD_LOGIC;
    rp_rp_comp_TREADY : OUT STD_LOGIC;
    s_rp_comp_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    rp_rp_comp_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_rp_comp_TLAST : OUT STD_LOGIC;
    rp_rp_comp_TLAST : IN STD_LOGIC;
    rp_comp_ref_clk : IN STD_LOGIC;
    rp_comp_decouple_status : OUT STD_LOGIC;
    s_rp_dec_TVALID : OUT STD_LOGIC;
    rp_rp_dec_TVALID : IN STD_LOGIC;
    s_rp_dec_TREADY : IN STD_LOGIC;
    rp_rp_dec_TREADY : OUT STD_LOGIC;
    s_rp_dec_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    rp_rp_dec_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_rp_dec_TLAST : OUT STD_LOGIC;
    rp_rp_dec_TLAST : IN STD_LOGIC;
    rp_dec_ref_clk : IN STD_LOGIC;
    rp_dec_decouple_status : OUT STD_LOGIC;
    s_rp_div_TVALID : OUT STD_LOGIC;
    rp_rp_div_TVALID : IN STD_LOGIC;
    s_rp_div_TREADY : IN STD_LOGIC;
    rp_rp_div_TREADY : OUT STD_LOGIC;
    s_rp_div_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    rp_rp_div_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_rp_div_TLAST : OUT STD_LOGIC;
    rp_rp_div_TLAST : IN STD_LOGIC;
    rp_div_ref_clk : IN STD_LOGIC;
    rp_div_decouple_status : OUT STD_LOGIC;
    s_rp_inc_TVALID : OUT STD_LOGIC;
    rp_rp_inc_TVALID : IN STD_LOGIC;
    s_rp_inc_TREADY : IN STD_LOGIC;
    rp_rp_inc_TREADY : OUT STD_LOGIC;
    s_rp_inc_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    rp_rp_inc_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_rp_inc_TLAST : OUT STD_LOGIC;
    rp_rp_inc_TLAST : IN STD_LOGIC;
    rp_inc_ref_clk : IN STD_LOGIC;
    rp_inc_decouple_status : OUT STD_LOGIC;
    s_rp_mod_TVALID : OUT STD_LOGIC;
    rp_rp_mod_TVALID : IN STD_LOGIC;
    s_rp_mod_TREADY : IN STD_LOGIC;
    rp_rp_mod_TREADY : OUT STD_LOGIC;
    s_rp_mod_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    rp_rp_mod_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_rp_mod_TLAST : OUT STD_LOGIC;
    rp_rp_mod_TLAST : IN STD_LOGIC;
    rp_mod_ref_clk : IN STD_LOGIC;
    rp_mod_decouple_status : OUT STD_LOGIC;
    s_rp_mul_TVALID : OUT STD_LOGIC;
    rp_rp_mul_TVALID : IN STD_LOGIC;
    s_rp_mul_TREADY : IN STD_LOGIC;
    rp_rp_mul_TREADY : OUT STD_LOGIC;
    s_rp_mul_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    rp_rp_mul_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_rp_mul_TLAST : OUT STD_LOGIC;
    rp_rp_mul_TLAST : IN STD_LOGIC;
    rp_mul_ref_clk : IN STD_LOGIC;
    rp_mul_decouple_status : OUT STD_LOGIC;
    s_rp_mux_TVALID : OUT STD_LOGIC;
    rp_rp_mux_TVALID : IN STD_LOGIC;
    s_rp_mux_TREADY : IN STD_LOGIC;
    rp_rp_mux_TREADY : OUT STD_LOGIC;
    s_rp_mux_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    rp_rp_mux_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_rp_mux_TLAST : OUT STD_LOGIC;
    rp_rp_mux_TLAST : IN STD_LOGIC;
    rp_mux_ref_clk : IN STD_LOGIC;
    rp_mux_decouple_status : OUT STD_LOGIC;
    s_rp_reg_TVALID : OUT STD_LOGIC;
    rp_rp_reg_TVALID : IN STD_LOGIC;
    s_rp_reg_TREADY : IN STD_LOGIC;
    rp_rp_reg_TREADY : OUT STD_LOGIC;
    s_rp_reg_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    rp_rp_reg_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_rp_reg_TLAST : OUT STD_LOGIC;
    rp_rp_reg_TLAST : IN STD_LOGIC;
    rp_reg_ref_clk : IN STD_LOGIC;
    rp_reg_decouple_status : OUT STD_LOGIC;
    s_rp_shl_TVALID : OUT STD_LOGIC;
    rp_rp_shl_TVALID : IN STD_LOGIC;
    s_rp_shl_TREADY : IN STD_LOGIC;
    rp_rp_shl_TREADY : OUT STD_LOGIC;
    s_rp_shl_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    rp_rp_shl_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_rp_shl_TLAST : OUT STD_LOGIC;
    rp_rp_shl_TLAST : IN STD_LOGIC;
    rp_shl_ref_clk : IN STD_LOGIC;
    rp_shl_decouple_status : OUT STD_LOGIC;
    s_rp_shr_TVALID : OUT STD_LOGIC;
    rp_rp_shr_TVALID : IN STD_LOGIC;
    s_rp_shr_TREADY : IN STD_LOGIC;
    rp_rp_shr_TREADY : OUT STD_LOGIC;
    s_rp_shr_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    rp_rp_shr_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_rp_shr_TLAST : OUT STD_LOGIC;
    rp_rp_shr_TLAST : IN STD_LOGIC;
    rp_shr_ref_clk : IN STD_LOGIC;
    rp_shr_decouple_status : OUT STD_LOGIC;
    s_rp_sub_TVALID : OUT STD_LOGIC;
    rp_rp_sub_TVALID : IN STD_LOGIC;
    s_rp_sub_TREADY : IN STD_LOGIC;
    rp_rp_sub_TREADY : OUT STD_LOGIC;
    s_rp_sub_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    rp_rp_sub_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_rp_sub_TLAST : OUT STD_LOGIC;
    rp_rp_sub_TLAST : IN STD_LOGIC;
    rp_sub_ref_clk : IN STD_LOGIC;
    rp_sub_decouple_status : OUT STD_LOGIC;
    decouple : IN STD_LOGIC;
    decouple_status : OUT STD_LOGIC;
    aclk : IN STD_LOGIC;
    s_axi_reg_awaddr : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_reg_awvalid : IN STD_LOGIC;
    s_axi_reg_awready : OUT STD_LOGIC;
    s_axi_reg_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_reg_wvalid : IN STD_LOGIC;
    s_axi_reg_wready : OUT STD_LOGIC;
    s_axi_reg_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_reg_bvalid : OUT STD_LOGIC;
    s_axi_reg_bready : IN STD_LOGIC;
    s_axi_reg_araddr : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_reg_arvalid : IN STD_LOGIC;
    s_axi_reg_arready : OUT STD_LOGIC;
    s_axi_reg_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_reg_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_reg_rvalid : OUT STD_LOGIC;
    s_axi_reg_rready : IN STD_LOGIC;
    s_axi_reg_aresetn : IN STD_LOGIC;
    m_axis_status_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axis_status_tvalid : OUT STD_LOGIC;
    s_axis_ctrl_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axis_ctrl_tvalid : IN STD_LOGIC;
    s_axis_ctrl_tready : OUT STD_LOGIC;
    s_axis_ctrl_aresetn : IN STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : prd
  PORT MAP (
    s_rp_add_TVALID => s_rp_add_TVALID,
    rp_rp_add_TVALID => rp_rp_add_TVALID,
    s_rp_add_TREADY => s_rp_add_TREADY,
    rp_rp_add_TREADY => rp_rp_add_TREADY,
    s_rp_add_TDATA => s_rp_add_TDATA,
    rp_rp_add_TDATA => rp_rp_add_TDATA,
    s_rp_add_TLAST => s_rp_add_TLAST,
    rp_rp_add_TLAST => rp_rp_add_TLAST,
    rp_add_ref_clk => rp_add_ref_clk,
    rp_add_decouple_status => rp_add_decouple_status,
    s_rp_comp_TVALID => s_rp_comp_TVALID,
    rp_rp_comp_TVALID => rp_rp_comp_TVALID,
    s_rp_comp_TREADY => s_rp_comp_TREADY,
    rp_rp_comp_TREADY => rp_rp_comp_TREADY,
    s_rp_comp_TDATA => s_rp_comp_TDATA,
    rp_rp_comp_TDATA => rp_rp_comp_TDATA,
    s_rp_comp_TLAST => s_rp_comp_TLAST,
    rp_rp_comp_TLAST => rp_rp_comp_TLAST,
    rp_comp_ref_clk => rp_comp_ref_clk,
    rp_comp_decouple_status => rp_comp_decouple_status,
    s_rp_dec_TVALID => s_rp_dec_TVALID,
    rp_rp_dec_TVALID => rp_rp_dec_TVALID,
    s_rp_dec_TREADY => s_rp_dec_TREADY,
    rp_rp_dec_TREADY => rp_rp_dec_TREADY,
    s_rp_dec_TDATA => s_rp_dec_TDATA,
    rp_rp_dec_TDATA => rp_rp_dec_TDATA,
    s_rp_dec_TLAST => s_rp_dec_TLAST,
    rp_rp_dec_TLAST => rp_rp_dec_TLAST,
    rp_dec_ref_clk => rp_dec_ref_clk,
    rp_dec_decouple_status => rp_dec_decouple_status,
    s_rp_div_TVALID => s_rp_div_TVALID,
    rp_rp_div_TVALID => rp_rp_div_TVALID,
    s_rp_div_TREADY => s_rp_div_TREADY,
    rp_rp_div_TREADY => rp_rp_div_TREADY,
    s_rp_div_TDATA => s_rp_div_TDATA,
    rp_rp_div_TDATA => rp_rp_div_TDATA,
    s_rp_div_TLAST => s_rp_div_TLAST,
    rp_rp_div_TLAST => rp_rp_div_TLAST,
    rp_div_ref_clk => rp_div_ref_clk,
    rp_div_decouple_status => rp_div_decouple_status,
    s_rp_inc_TVALID => s_rp_inc_TVALID,
    rp_rp_inc_TVALID => rp_rp_inc_TVALID,
    s_rp_inc_TREADY => s_rp_inc_TREADY,
    rp_rp_inc_TREADY => rp_rp_inc_TREADY,
    s_rp_inc_TDATA => s_rp_inc_TDATA,
    rp_rp_inc_TDATA => rp_rp_inc_TDATA,
    s_rp_inc_TLAST => s_rp_inc_TLAST,
    rp_rp_inc_TLAST => rp_rp_inc_TLAST,
    rp_inc_ref_clk => rp_inc_ref_clk,
    rp_inc_decouple_status => rp_inc_decouple_status,
    s_rp_mod_TVALID => s_rp_mod_TVALID,
    rp_rp_mod_TVALID => rp_rp_mod_TVALID,
    s_rp_mod_TREADY => s_rp_mod_TREADY,
    rp_rp_mod_TREADY => rp_rp_mod_TREADY,
    s_rp_mod_TDATA => s_rp_mod_TDATA,
    rp_rp_mod_TDATA => rp_rp_mod_TDATA,
    s_rp_mod_TLAST => s_rp_mod_TLAST,
    rp_rp_mod_TLAST => rp_rp_mod_TLAST,
    rp_mod_ref_clk => rp_mod_ref_clk,
    rp_mod_decouple_status => rp_mod_decouple_status,
    s_rp_mul_TVALID => s_rp_mul_TVALID,
    rp_rp_mul_TVALID => rp_rp_mul_TVALID,
    s_rp_mul_TREADY => s_rp_mul_TREADY,
    rp_rp_mul_TREADY => rp_rp_mul_TREADY,
    s_rp_mul_TDATA => s_rp_mul_TDATA,
    rp_rp_mul_TDATA => rp_rp_mul_TDATA,
    s_rp_mul_TLAST => s_rp_mul_TLAST,
    rp_rp_mul_TLAST => rp_rp_mul_TLAST,
    rp_mul_ref_clk => rp_mul_ref_clk,
    rp_mul_decouple_status => rp_mul_decouple_status,
    s_rp_mux_TVALID => s_rp_mux_TVALID,
    rp_rp_mux_TVALID => rp_rp_mux_TVALID,
    s_rp_mux_TREADY => s_rp_mux_TREADY,
    rp_rp_mux_TREADY => rp_rp_mux_TREADY,
    s_rp_mux_TDATA => s_rp_mux_TDATA,
    rp_rp_mux_TDATA => rp_rp_mux_TDATA,
    s_rp_mux_TLAST => s_rp_mux_TLAST,
    rp_rp_mux_TLAST => rp_rp_mux_TLAST,
    rp_mux_ref_clk => rp_mux_ref_clk,
    rp_mux_decouple_status => rp_mux_decouple_status,
    s_rp_reg_TVALID => s_rp_reg_TVALID,
    rp_rp_reg_TVALID => rp_rp_reg_TVALID,
    s_rp_reg_TREADY => s_rp_reg_TREADY,
    rp_rp_reg_TREADY => rp_rp_reg_TREADY,
    s_rp_reg_TDATA => s_rp_reg_TDATA,
    rp_rp_reg_TDATA => rp_rp_reg_TDATA,
    s_rp_reg_TLAST => s_rp_reg_TLAST,
    rp_rp_reg_TLAST => rp_rp_reg_TLAST,
    rp_reg_ref_clk => rp_reg_ref_clk,
    rp_reg_decouple_status => rp_reg_decouple_status,
    s_rp_shl_TVALID => s_rp_shl_TVALID,
    rp_rp_shl_TVALID => rp_rp_shl_TVALID,
    s_rp_shl_TREADY => s_rp_shl_TREADY,
    rp_rp_shl_TREADY => rp_rp_shl_TREADY,
    s_rp_shl_TDATA => s_rp_shl_TDATA,
    rp_rp_shl_TDATA => rp_rp_shl_TDATA,
    s_rp_shl_TLAST => s_rp_shl_TLAST,
    rp_rp_shl_TLAST => rp_rp_shl_TLAST,
    rp_shl_ref_clk => rp_shl_ref_clk,
    rp_shl_decouple_status => rp_shl_decouple_status,
    s_rp_shr_TVALID => s_rp_shr_TVALID,
    rp_rp_shr_TVALID => rp_rp_shr_TVALID,
    s_rp_shr_TREADY => s_rp_shr_TREADY,
    rp_rp_shr_TREADY => rp_rp_shr_TREADY,
    s_rp_shr_TDATA => s_rp_shr_TDATA,
    rp_rp_shr_TDATA => rp_rp_shr_TDATA,
    s_rp_shr_TLAST => s_rp_shr_TLAST,
    rp_rp_shr_TLAST => rp_rp_shr_TLAST,
    rp_shr_ref_clk => rp_shr_ref_clk,
    rp_shr_decouple_status => rp_shr_decouple_status,
    s_rp_sub_TVALID => s_rp_sub_TVALID,
    rp_rp_sub_TVALID => rp_rp_sub_TVALID,
    s_rp_sub_TREADY => s_rp_sub_TREADY,
    rp_rp_sub_TREADY => rp_rp_sub_TREADY,
    s_rp_sub_TDATA => s_rp_sub_TDATA,
    rp_rp_sub_TDATA => rp_rp_sub_TDATA,
    s_rp_sub_TLAST => s_rp_sub_TLAST,
    rp_rp_sub_TLAST => rp_rp_sub_TLAST,
    rp_sub_ref_clk => rp_sub_ref_clk,
    rp_sub_decouple_status => rp_sub_decouple_status,
    decouple => decouple,
    decouple_status => decouple_status,
    aclk => aclk,
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
    s_axi_reg_aresetn => s_axi_reg_aresetn,
    m_axis_status_tdata => m_axis_status_tdata,
    m_axis_status_tvalid => m_axis_status_tvalid,
    s_axis_ctrl_tdata => s_axis_ctrl_tdata,
    s_axis_ctrl_tvalid => s_axis_ctrl_tvalid,
    s_axis_ctrl_tready => s_axis_ctrl_tready,
    s_axis_ctrl_aresetn => s_axis_ctrl_aresetn
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file prd.vhd when simulating
-- the core, prd. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.

