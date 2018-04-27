// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Thu Apr 26 21:09:56 2018
// Host        : dakre-VirtualBox running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pr_decoupler_0_stub.v
// Design      : pr_decoupler_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "prd_pr_decoupler_0,Vivado 2017.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_rm_add_TVALID, rp_rm_add_TVALID, 
  s_rm_add_TREADY, rp_rm_add_TREADY, s_rm_add_TDATA, rp_rm_add_TDATA, s_rm_add_TLAST, 
  rp_rm_add_TLAST, rm_add_ref_clk, rm_add_decouple_status, decouple, decouple_status, aclk, 
  s_axi_reg_awaddr, s_axi_reg_awvalid, s_axi_reg_awready, s_axi_reg_wdata, 
  s_axi_reg_wvalid, s_axi_reg_wready, s_axi_reg_bresp, s_axi_reg_bvalid, s_axi_reg_bready, 
  s_axi_reg_araddr, s_axi_reg_arvalid, s_axi_reg_arready, s_axi_reg_rdata, s_axi_reg_rresp, 
  s_axi_reg_rvalid, s_axi_reg_rready, s_axi_reg_aresetn, m_axis_status_tdata, 
  m_axis_status_tvalid, s_axis_ctrl_tdata, s_axis_ctrl_tvalid, s_axis_ctrl_tready, 
  s_axis_ctrl_aresetn)
/* synthesis syn_black_box black_box_pad_pin="s_rm_add_TVALID,rp_rm_add_TVALID,s_rm_add_TREADY,rp_rm_add_TREADY,s_rm_add_TDATA[31:0],rp_rm_add_TDATA[31:0],s_rm_add_TLAST,rp_rm_add_TLAST,rm_add_ref_clk,rm_add_decouple_status,decouple,decouple_status,aclk,s_axi_reg_awaddr[0:0],s_axi_reg_awvalid,s_axi_reg_awready,s_axi_reg_wdata[31:0],s_axi_reg_wvalid,s_axi_reg_wready,s_axi_reg_bresp[1:0],s_axi_reg_bvalid,s_axi_reg_bready,s_axi_reg_araddr[0:0],s_axi_reg_arvalid,s_axi_reg_arready,s_axi_reg_rdata[31:0],s_axi_reg_rresp[1:0],s_axi_reg_rvalid,s_axi_reg_rready,s_axi_reg_aresetn,m_axis_status_tdata[31:0],m_axis_status_tvalid,s_axis_ctrl_tdata[31:0],s_axis_ctrl_tvalid,s_axis_ctrl_tready,s_axis_ctrl_aresetn" */;
  output s_rm_add_TVALID;
  input rp_rm_add_TVALID;
  input s_rm_add_TREADY;
  output rp_rm_add_TREADY;
  output [31:0]s_rm_add_TDATA;
  input [31:0]rp_rm_add_TDATA;
  output s_rm_add_TLAST;
  input rp_rm_add_TLAST;
  input rm_add_ref_clk;
  output rm_add_decouple_status;
  input decouple;
  output decouple_status;
  input aclk;
  input [0:0]s_axi_reg_awaddr;
  input s_axi_reg_awvalid;
  output s_axi_reg_awready;
  input [31:0]s_axi_reg_wdata;
  input s_axi_reg_wvalid;
  output s_axi_reg_wready;
  output [1:0]s_axi_reg_bresp;
  output s_axi_reg_bvalid;
  input s_axi_reg_bready;
  input [0:0]s_axi_reg_araddr;
  input s_axi_reg_arvalid;
  output s_axi_reg_arready;
  output [31:0]s_axi_reg_rdata;
  output [1:0]s_axi_reg_rresp;
  output s_axi_reg_rvalid;
  input s_axi_reg_rready;
  input s_axi_reg_aresetn;
  output [31:0]m_axis_status_tdata;
  output m_axis_status_tvalid;
  input [31:0]s_axis_ctrl_tdata;
  input s_axis_ctrl_tvalid;
  output s_axis_ctrl_tready;
  input s_axis_ctrl_aresetn;
endmodule
