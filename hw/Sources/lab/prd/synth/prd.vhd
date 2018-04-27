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

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY prd IS
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
END prd;

ARCHITECTURE prd_arch OF prd IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF prd_arch: ARCHITECTURE IS "yes";
  COMPONENT prd_prd IS
    GENERIC (
      C_XDEVICEFAMILY : STRING
    );
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
  END COMPONENT prd_prd;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF prd_arch: ARCHITECTURE IS "prd_prd,Vivado 2017.4";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF prd_arch : ARCHITECTURE IS "prd,prd_prd,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF prd_arch: ARCHITECTURE IS "prd,prd_prd,{x_ipProduct=Vivado 2017.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=pr_decoupler,x_ipVersion=1.0,x_ipCoreRevision=5,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_XDEVICEFAMILY=zynq}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_ctrl_aresetn: SIGNAL IS "XIL_INTERFACENAME AXIS_CONTROL_RESET, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_ctrl_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 AXIS_CONTROL_RESET RST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_ctrl_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_ctrl TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_ctrl_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_ctrl TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_ctrl_tdata: SIGNAL IS "XIL_INTERFACENAME s_axis_ctrl, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_ctrl_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_ctrl TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_status_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_status TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axis_status_tdata: SIGNAL IS "XIL_INTERFACENAME m_axis_status, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_status_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_status TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_reg_aresetn: SIGNAL IS "XIL_INTERFACENAME AXI_RESET, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 AXI_RESET RST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg AWVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_reg_awaddr: SIGNAL IS "XIL_INTERFACENAME s_axi_reg, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 1, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aclk: SIGNAL IS "XIL_INTERFACENAME aclk_CLOCK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_BUSIF s_axi_reg:m_axis_status:s_axis_ctrl";
  ATTRIBUTE X_INTERFACE_INFO OF aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 aclk_CLOCK CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rp_sub_ref_clk: SIGNAL IS "XIL_INTERFACENAME rp_sub_ref_clk_CLOCK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_BUSIF s_rp_sub:rp_rp_sub";
  ATTRIBUTE X_INTERFACE_INFO OF rp_sub_ref_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 rp_sub_ref_clk_CLOCK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_sub_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_sub TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_sub_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_sub TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_sub_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_sub TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_sub_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_sub TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_sub_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_sub TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_sub_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_sub TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rp_rp_sub_TVALID: SIGNAL IS "XIL_INTERFACENAME rp_rp_sub, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_sub_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_sub TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_rp_sub_TVALID: SIGNAL IS "XIL_INTERFACENAME s_rp_sub, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_sub_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_sub TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rp_shr_ref_clk: SIGNAL IS "XIL_INTERFACENAME rp_shr_ref_clk_CLOCK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_BUSIF s_rp_shr:rp_rp_shr";
  ATTRIBUTE X_INTERFACE_INFO OF rp_shr_ref_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 rp_shr_ref_clk_CLOCK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_shr_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_shr TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_shr_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_shr TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_shr_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_shr TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_shr_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_shr TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_shr_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_shr TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_shr_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_shr TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rp_rp_shr_TVALID: SIGNAL IS "XIL_INTERFACENAME rp_rp_shr, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_shr_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_shr TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_rp_shr_TVALID: SIGNAL IS "XIL_INTERFACENAME s_rp_shr, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_shr_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_shr TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rp_shl_ref_clk: SIGNAL IS "XIL_INTERFACENAME rp_shl_ref_clk_CLOCK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_BUSIF s_rp_shl:rp_rp_shl";
  ATTRIBUTE X_INTERFACE_INFO OF rp_shl_ref_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 rp_shl_ref_clk_CLOCK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_shl_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_shl TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_shl_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_shl TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_shl_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_shl TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_shl_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_shl TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_shl_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_shl TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_shl_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_shl TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rp_rp_shl_TVALID: SIGNAL IS "XIL_INTERFACENAME rp_rp_shl, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_shl_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_shl TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_rp_shl_TVALID: SIGNAL IS "XIL_INTERFACENAME s_rp_shl, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_shl_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_shl TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rp_reg_ref_clk: SIGNAL IS "XIL_INTERFACENAME rp_reg_ref_clk_CLOCK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_BUSIF s_rp_reg:rp_rp_reg";
  ATTRIBUTE X_INTERFACE_INFO OF rp_reg_ref_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 rp_reg_ref_clk_CLOCK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_reg_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_reg TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_reg_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_reg TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_reg_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_reg TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_reg_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_reg TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_reg_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_reg TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_reg_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_reg TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rp_rp_reg_TVALID: SIGNAL IS "XIL_INTERFACENAME rp_rp_reg, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_reg_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_reg TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_rp_reg_TVALID: SIGNAL IS "XIL_INTERFACENAME s_rp_reg, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_reg_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_reg TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rp_mux_ref_clk: SIGNAL IS "XIL_INTERFACENAME rp_mux_ref_clk_CLOCK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_BUSIF s_rp_mux:rp_rp_mux";
  ATTRIBUTE X_INTERFACE_INFO OF rp_mux_ref_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 rp_mux_ref_clk_CLOCK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_mux_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_mux TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_mux_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_mux TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_mux_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_mux TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_mux_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_mux TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_mux_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_mux TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_mux_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_mux TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rp_rp_mux_TVALID: SIGNAL IS "XIL_INTERFACENAME rp_rp_mux, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_mux_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_mux TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_rp_mux_TVALID: SIGNAL IS "XIL_INTERFACENAME s_rp_mux, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_mux_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_mux TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rp_mul_ref_clk: SIGNAL IS "XIL_INTERFACENAME rp_mul_ref_clk_CLOCK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_BUSIF s_rp_mul:rp_rp_mul";
  ATTRIBUTE X_INTERFACE_INFO OF rp_mul_ref_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 rp_mul_ref_clk_CLOCK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_mul_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_mul TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_mul_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_mul TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_mul_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_mul TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_mul_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_mul TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_mul_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_mul TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_mul_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_mul TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rp_rp_mul_TVALID: SIGNAL IS "XIL_INTERFACENAME rp_rp_mul, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_mul_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_mul TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_rp_mul_TVALID: SIGNAL IS "XIL_INTERFACENAME s_rp_mul, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_mul_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_mul TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rp_mod_ref_clk: SIGNAL IS "XIL_INTERFACENAME rp_mod_ref_clk_CLOCK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_BUSIF s_rp_mod:rp_rp_mod";
  ATTRIBUTE X_INTERFACE_INFO OF rp_mod_ref_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 rp_mod_ref_clk_CLOCK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_mod_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_mod TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_mod_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_mod TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_mod_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_mod TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_mod_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_mod TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_mod_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_mod TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_mod_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_mod TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rp_rp_mod_TVALID: SIGNAL IS "XIL_INTERFACENAME rp_rp_mod, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_mod_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_mod TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_rp_mod_TVALID: SIGNAL IS "XIL_INTERFACENAME s_rp_mod, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_mod_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_mod TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rp_inc_ref_clk: SIGNAL IS "XIL_INTERFACENAME rp_inc_ref_clk_CLOCK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_BUSIF s_rp_inc:rp_rp_inc";
  ATTRIBUTE X_INTERFACE_INFO OF rp_inc_ref_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 rp_inc_ref_clk_CLOCK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_inc_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_inc TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_inc_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_inc TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_inc_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_inc TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_inc_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_inc TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_inc_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_inc TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_inc_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_inc TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rp_rp_inc_TVALID: SIGNAL IS "XIL_INTERFACENAME rp_rp_inc, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_inc_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_inc TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_rp_inc_TVALID: SIGNAL IS "XIL_INTERFACENAME s_rp_inc, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_inc_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_inc TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rp_div_ref_clk: SIGNAL IS "XIL_INTERFACENAME rp_div_ref_clk_CLOCK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_BUSIF s_rp_div:rp_rp_div";
  ATTRIBUTE X_INTERFACE_INFO OF rp_div_ref_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 rp_div_ref_clk_CLOCK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_div_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_div TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_div_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_div TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_div_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_div TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_div_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_div TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_div_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_div TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_div_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_div TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rp_rp_div_TVALID: SIGNAL IS "XIL_INTERFACENAME rp_rp_div, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_div_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_div TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_rp_div_TVALID: SIGNAL IS "XIL_INTERFACENAME s_rp_div, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_div_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_div TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rp_dec_ref_clk: SIGNAL IS "XIL_INTERFACENAME rp_dec_ref_clk_CLOCK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_BUSIF s_rp_dec:rp_rp_dec";
  ATTRIBUTE X_INTERFACE_INFO OF rp_dec_ref_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 rp_dec_ref_clk_CLOCK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_dec_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_dec TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_dec_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_dec TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_dec_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_dec TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_dec_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_dec TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_dec_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_dec TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_dec_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_dec TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rp_rp_dec_TVALID: SIGNAL IS "XIL_INTERFACENAME rp_rp_dec, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_dec_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_dec TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_rp_dec_TVALID: SIGNAL IS "XIL_INTERFACENAME s_rp_dec, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_dec_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_dec TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rp_comp_ref_clk: SIGNAL IS "XIL_INTERFACENAME rp_comp_ref_clk_CLOCK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_BUSIF s_rp_comp:rp_rp_comp";
  ATTRIBUTE X_INTERFACE_INFO OF rp_comp_ref_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 rp_comp_ref_clk_CLOCK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_comp_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_comp TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_comp_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_comp TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_comp_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_comp TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_comp_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_comp TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_comp_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_comp TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_comp_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_comp TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rp_rp_comp_TVALID: SIGNAL IS "XIL_INTERFACENAME rp_rp_comp, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_comp_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_comp TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_rp_comp_TVALID: SIGNAL IS "XIL_INTERFACENAME s_rp_comp, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_comp_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_comp TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rp_add_ref_clk: SIGNAL IS "XIL_INTERFACENAME rp_add_ref_clk_CLOCK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_BUSIF s_rp_add:rp_rp_add";
  ATTRIBUTE X_INTERFACE_INFO OF rp_add_ref_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 rp_add_ref_clk_CLOCK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_add_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_add TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_add_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_add TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_add_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_add TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_add_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_add TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_add_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_add TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_add_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_add TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rp_rp_add_TVALID: SIGNAL IS "XIL_INTERFACENAME rp_rp_add, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF rp_rp_add_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_rp_add TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_rp_add_TVALID: SIGNAL IS "XIL_INTERFACENAME s_rp_add, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF s_rp_add_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 s_rp_add TVALID";
BEGIN
  U0 : prd_prd
    GENERIC MAP (
      C_XDEVICEFAMILY => "zynq"
    )
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
END prd_arch;
