// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Thu Apr 26 21:30:11 2018
// Host        : dakre-VirtualBox running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ prd_stub.v
// Design      : prd
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "prd_prd,Vivado 2017.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_rp_add_TVALID, rp_rp_add_TVALID, 
  s_rp_add_TREADY, rp_rp_add_TREADY, s_rp_add_TDATA, rp_rp_add_TDATA, s_rp_add_TLAST, 
  rp_rp_add_TLAST, rp_add_ref_clk, rp_add_decouple_status, s_rp_comp_TVALID, 
  rp_rp_comp_TVALID, s_rp_comp_TREADY, rp_rp_comp_TREADY, s_rp_comp_TDATA, 
  rp_rp_comp_TDATA, s_rp_comp_TLAST, rp_rp_comp_TLAST, rp_comp_ref_clk, 
  rp_comp_decouple_status, s_rp_dec_TVALID, rp_rp_dec_TVALID, s_rp_dec_TREADY, 
  rp_rp_dec_TREADY, s_rp_dec_TDATA, rp_rp_dec_TDATA, s_rp_dec_TLAST, rp_rp_dec_TLAST, 
  rp_dec_ref_clk, rp_dec_decouple_status, s_rp_div_TVALID, rp_rp_div_TVALID, 
  s_rp_div_TREADY, rp_rp_div_TREADY, s_rp_div_TDATA, rp_rp_div_TDATA, s_rp_div_TLAST, 
  rp_rp_div_TLAST, rp_div_ref_clk, rp_div_decouple_status, s_rp_inc_TVALID, 
  rp_rp_inc_TVALID, s_rp_inc_TREADY, rp_rp_inc_TREADY, s_rp_inc_TDATA, rp_rp_inc_TDATA, 
  s_rp_inc_TLAST, rp_rp_inc_TLAST, rp_inc_ref_clk, rp_inc_decouple_status, s_rp_mod_TVALID, 
  rp_rp_mod_TVALID, s_rp_mod_TREADY, rp_rp_mod_TREADY, s_rp_mod_TDATA, rp_rp_mod_TDATA, 
  s_rp_mod_TLAST, rp_rp_mod_TLAST, rp_mod_ref_clk, rp_mod_decouple_status, s_rp_mul_TVALID, 
  rp_rp_mul_TVALID, s_rp_mul_TREADY, rp_rp_mul_TREADY, s_rp_mul_TDATA, rp_rp_mul_TDATA, 
  s_rp_mul_TLAST, rp_rp_mul_TLAST, rp_mul_ref_clk, rp_mul_decouple_status, s_rp_mux_TVALID, 
  rp_rp_mux_TVALID, s_rp_mux_TREADY, rp_rp_mux_TREADY, s_rp_mux_TDATA, rp_rp_mux_TDATA, 
  s_rp_mux_TLAST, rp_rp_mux_TLAST, rp_mux_ref_clk, rp_mux_decouple_status, s_rp_reg_TVALID, 
  rp_rp_reg_TVALID, s_rp_reg_TREADY, rp_rp_reg_TREADY, s_rp_reg_TDATA, rp_rp_reg_TDATA, 
  s_rp_reg_TLAST, rp_rp_reg_TLAST, rp_reg_ref_clk, rp_reg_decouple_status, s_rp_shl_TVALID, 
  rp_rp_shl_TVALID, s_rp_shl_TREADY, rp_rp_shl_TREADY, s_rp_shl_TDATA, rp_rp_shl_TDATA, 
  s_rp_shl_TLAST, rp_rp_shl_TLAST, rp_shl_ref_clk, rp_shl_decouple_status, s_rp_shr_TVALID, 
  rp_rp_shr_TVALID, s_rp_shr_TREADY, rp_rp_shr_TREADY, s_rp_shr_TDATA, rp_rp_shr_TDATA, 
  s_rp_shr_TLAST, rp_rp_shr_TLAST, rp_shr_ref_clk, rp_shr_decouple_status, s_rp_sub_TVALID, 
  rp_rp_sub_TVALID, s_rp_sub_TREADY, rp_rp_sub_TREADY, s_rp_sub_TDATA, rp_rp_sub_TDATA, 
  s_rp_sub_TLAST, rp_rp_sub_TLAST, rp_sub_ref_clk, rp_sub_decouple_status, decouple, 
  decouple_status, aclk, s_axi_reg_awaddr, s_axi_reg_awvalid, s_axi_reg_awready, 
  s_axi_reg_wdata, s_axi_reg_wvalid, s_axi_reg_wready, s_axi_reg_bresp, s_axi_reg_bvalid, 
  s_axi_reg_bready, s_axi_reg_araddr, s_axi_reg_arvalid, s_axi_reg_arready, 
  s_axi_reg_rdata, s_axi_reg_rresp, s_axi_reg_rvalid, s_axi_reg_rready, s_axi_reg_aresetn, 
  m_axis_status_tdata, m_axis_status_tvalid, s_axis_ctrl_tdata, s_axis_ctrl_tvalid, 
  s_axis_ctrl_tready, s_axis_ctrl_aresetn)
/* synthesis syn_black_box black_box_pad_pin="s_rp_add_TVALID,rp_rp_add_TVALID,s_rp_add_TREADY,rp_rp_add_TREADY,s_rp_add_TDATA[31:0],rp_rp_add_TDATA[31:0],s_rp_add_TLAST,rp_rp_add_TLAST,rp_add_ref_clk,rp_add_decouple_status,s_rp_comp_TVALID,rp_rp_comp_TVALID,s_rp_comp_TREADY,rp_rp_comp_TREADY,s_rp_comp_TDATA[31:0],rp_rp_comp_TDATA[31:0],s_rp_comp_TLAST,rp_rp_comp_TLAST,rp_comp_ref_clk,rp_comp_decouple_status,s_rp_dec_TVALID,rp_rp_dec_TVALID,s_rp_dec_TREADY,rp_rp_dec_TREADY,s_rp_dec_TDATA[31:0],rp_rp_dec_TDATA[31:0],s_rp_dec_TLAST,rp_rp_dec_TLAST,rp_dec_ref_clk,rp_dec_decouple_status,s_rp_div_TVALID,rp_rp_div_TVALID,s_rp_div_TREADY,rp_rp_div_TREADY,s_rp_div_TDATA[31:0],rp_rp_div_TDATA[31:0],s_rp_div_TLAST,rp_rp_div_TLAST,rp_div_ref_clk,rp_div_decouple_status,s_rp_inc_TVALID,rp_rp_inc_TVALID,s_rp_inc_TREADY,rp_rp_inc_TREADY,s_rp_inc_TDATA[31:0],rp_rp_inc_TDATA[31:0],s_rp_inc_TLAST,rp_rp_inc_TLAST,rp_inc_ref_clk,rp_inc_decouple_status,s_rp_mod_TVALID,rp_rp_mod_TVALID,s_rp_mod_TREADY,rp_rp_mod_TREADY,s_rp_mod_TDATA[31:0],rp_rp_mod_TDATA[31:0],s_rp_mod_TLAST,rp_rp_mod_TLAST,rp_mod_ref_clk,rp_mod_decouple_status,s_rp_mul_TVALID,rp_rp_mul_TVALID,s_rp_mul_TREADY,rp_rp_mul_TREADY,s_rp_mul_TDATA[31:0],rp_rp_mul_TDATA[31:0],s_rp_mul_TLAST,rp_rp_mul_TLAST,rp_mul_ref_clk,rp_mul_decouple_status,s_rp_mux_TVALID,rp_rp_mux_TVALID,s_rp_mux_TREADY,rp_rp_mux_TREADY,s_rp_mux_TDATA[31:0],rp_rp_mux_TDATA[31:0],s_rp_mux_TLAST,rp_rp_mux_TLAST,rp_mux_ref_clk,rp_mux_decouple_status,s_rp_reg_TVALID,rp_rp_reg_TVALID,s_rp_reg_TREADY,rp_rp_reg_TREADY,s_rp_reg_TDATA[31:0],rp_rp_reg_TDATA[31:0],s_rp_reg_TLAST,rp_rp_reg_TLAST,rp_reg_ref_clk,rp_reg_decouple_status,s_rp_shl_TVALID,rp_rp_shl_TVALID,s_rp_shl_TREADY,rp_rp_shl_TREADY,s_rp_shl_TDATA[31:0],rp_rp_shl_TDATA[31:0],s_rp_shl_TLAST,rp_rp_shl_TLAST,rp_shl_ref_clk,rp_shl_decouple_status,s_rp_shr_TVALID,rp_rp_shr_TVALID,s_rp_shr_TREADY,rp_rp_shr_TREADY,s_rp_shr_TDATA[31:0],rp_rp_shr_TDATA[31:0],s_rp_shr_TLAST,rp_rp_shr_TLAST,rp_shr_ref_clk,rp_shr_decouple_status,s_rp_sub_TVALID,rp_rp_sub_TVALID,s_rp_sub_TREADY,rp_rp_sub_TREADY,s_rp_sub_TDATA[31:0],rp_rp_sub_TDATA[31:0],s_rp_sub_TLAST,rp_rp_sub_TLAST,rp_sub_ref_clk,rp_sub_decouple_status,decouple,decouple_status,aclk,s_axi_reg_awaddr[0:0],s_axi_reg_awvalid,s_axi_reg_awready,s_axi_reg_wdata[31:0],s_axi_reg_wvalid,s_axi_reg_wready,s_axi_reg_bresp[1:0],s_axi_reg_bvalid,s_axi_reg_bready,s_axi_reg_araddr[0:0],s_axi_reg_arvalid,s_axi_reg_arready,s_axi_reg_rdata[31:0],s_axi_reg_rresp[1:0],s_axi_reg_rvalid,s_axi_reg_rready,s_axi_reg_aresetn,m_axis_status_tdata[31:0],m_axis_status_tvalid,s_axis_ctrl_tdata[31:0],s_axis_ctrl_tvalid,s_axis_ctrl_tready,s_axis_ctrl_aresetn" */;
  output s_rp_add_TVALID;
  input rp_rp_add_TVALID;
  input s_rp_add_TREADY;
  output rp_rp_add_TREADY;
  output [31:0]s_rp_add_TDATA;
  input [31:0]rp_rp_add_TDATA;
  output s_rp_add_TLAST;
  input rp_rp_add_TLAST;
  input rp_add_ref_clk;
  output rp_add_decouple_status;
  output s_rp_comp_TVALID;
  input rp_rp_comp_TVALID;
  input s_rp_comp_TREADY;
  output rp_rp_comp_TREADY;
  output [31:0]s_rp_comp_TDATA;
  input [31:0]rp_rp_comp_TDATA;
  output s_rp_comp_TLAST;
  input rp_rp_comp_TLAST;
  input rp_comp_ref_clk;
  output rp_comp_decouple_status;
  output s_rp_dec_TVALID;
  input rp_rp_dec_TVALID;
  input s_rp_dec_TREADY;
  output rp_rp_dec_TREADY;
  output [31:0]s_rp_dec_TDATA;
  input [31:0]rp_rp_dec_TDATA;
  output s_rp_dec_TLAST;
  input rp_rp_dec_TLAST;
  input rp_dec_ref_clk;
  output rp_dec_decouple_status;
  output s_rp_div_TVALID;
  input rp_rp_div_TVALID;
  input s_rp_div_TREADY;
  output rp_rp_div_TREADY;
  output [31:0]s_rp_div_TDATA;
  input [31:0]rp_rp_div_TDATA;
  output s_rp_div_TLAST;
  input rp_rp_div_TLAST;
  input rp_div_ref_clk;
  output rp_div_decouple_status;
  output s_rp_inc_TVALID;
  input rp_rp_inc_TVALID;
  input s_rp_inc_TREADY;
  output rp_rp_inc_TREADY;
  output [31:0]s_rp_inc_TDATA;
  input [31:0]rp_rp_inc_TDATA;
  output s_rp_inc_TLAST;
  input rp_rp_inc_TLAST;
  input rp_inc_ref_clk;
  output rp_inc_decouple_status;
  output s_rp_mod_TVALID;
  input rp_rp_mod_TVALID;
  input s_rp_mod_TREADY;
  output rp_rp_mod_TREADY;
  output [31:0]s_rp_mod_TDATA;
  input [31:0]rp_rp_mod_TDATA;
  output s_rp_mod_TLAST;
  input rp_rp_mod_TLAST;
  input rp_mod_ref_clk;
  output rp_mod_decouple_status;
  output s_rp_mul_TVALID;
  input rp_rp_mul_TVALID;
  input s_rp_mul_TREADY;
  output rp_rp_mul_TREADY;
  output [31:0]s_rp_mul_TDATA;
  input [31:0]rp_rp_mul_TDATA;
  output s_rp_mul_TLAST;
  input rp_rp_mul_TLAST;
  input rp_mul_ref_clk;
  output rp_mul_decouple_status;
  output s_rp_mux_TVALID;
  input rp_rp_mux_TVALID;
  input s_rp_mux_TREADY;
  output rp_rp_mux_TREADY;
  output [31:0]s_rp_mux_TDATA;
  input [31:0]rp_rp_mux_TDATA;
  output s_rp_mux_TLAST;
  input rp_rp_mux_TLAST;
  input rp_mux_ref_clk;
  output rp_mux_decouple_status;
  output s_rp_reg_TVALID;
  input rp_rp_reg_TVALID;
  input s_rp_reg_TREADY;
  output rp_rp_reg_TREADY;
  output [31:0]s_rp_reg_TDATA;
  input [31:0]rp_rp_reg_TDATA;
  output s_rp_reg_TLAST;
  input rp_rp_reg_TLAST;
  input rp_reg_ref_clk;
  output rp_reg_decouple_status;
  output s_rp_shl_TVALID;
  input rp_rp_shl_TVALID;
  input s_rp_shl_TREADY;
  output rp_rp_shl_TREADY;
  output [31:0]s_rp_shl_TDATA;
  input [31:0]rp_rp_shl_TDATA;
  output s_rp_shl_TLAST;
  input rp_rp_shl_TLAST;
  input rp_shl_ref_clk;
  output rp_shl_decouple_status;
  output s_rp_shr_TVALID;
  input rp_rp_shr_TVALID;
  input s_rp_shr_TREADY;
  output rp_rp_shr_TREADY;
  output [31:0]s_rp_shr_TDATA;
  input [31:0]rp_rp_shr_TDATA;
  output s_rp_shr_TLAST;
  input rp_rp_shr_TLAST;
  input rp_shr_ref_clk;
  output rp_shr_decouple_status;
  output s_rp_sub_TVALID;
  input rp_rp_sub_TVALID;
  input s_rp_sub_TREADY;
  output rp_rp_sub_TREADY;
  output [31:0]s_rp_sub_TDATA;
  input [31:0]rp_rp_sub_TDATA;
  output s_rp_sub_TLAST;
  input rp_rp_sub_TLAST;
  input rp_sub_ref_clk;
  output rp_sub_decouple_status;
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
