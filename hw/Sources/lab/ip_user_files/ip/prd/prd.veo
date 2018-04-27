// (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.com:ip:pr_decoupler:1.0
// IP Revision: 5

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
prd your_instance_name (
  .s_rp_add_TVALID(s_rp_add_TVALID),                  // output wire s_rp_add_TVALID
  .rp_rp_add_TVALID(rp_rp_add_TVALID),                // input wire rp_rp_add_TVALID
  .s_rp_add_TREADY(s_rp_add_TREADY),                  // input wire s_rp_add_TREADY
  .rp_rp_add_TREADY(rp_rp_add_TREADY),                // output wire rp_rp_add_TREADY
  .s_rp_add_TDATA(s_rp_add_TDATA),                    // output wire [31 : 0] s_rp_add_TDATA
  .rp_rp_add_TDATA(rp_rp_add_TDATA),                  // input wire [31 : 0] rp_rp_add_TDATA
  .s_rp_add_TLAST(s_rp_add_TLAST),                    // output wire s_rp_add_TLAST
  .rp_rp_add_TLAST(rp_rp_add_TLAST),                  // input wire rp_rp_add_TLAST
  .rp_add_ref_clk(rp_add_ref_clk),                    // input wire rp_add_ref_clk
  .rp_add_decouple_status(rp_add_decouple_status),    // output wire rp_add_decouple_status
  .s_rp_comp_TVALID(s_rp_comp_TVALID),                // output wire s_rp_comp_TVALID
  .rp_rp_comp_TVALID(rp_rp_comp_TVALID),              // input wire rp_rp_comp_TVALID
  .s_rp_comp_TREADY(s_rp_comp_TREADY),                // input wire s_rp_comp_TREADY
  .rp_rp_comp_TREADY(rp_rp_comp_TREADY),              // output wire rp_rp_comp_TREADY
  .s_rp_comp_TDATA(s_rp_comp_TDATA),                  // output wire [31 : 0] s_rp_comp_TDATA
  .rp_rp_comp_TDATA(rp_rp_comp_TDATA),                // input wire [31 : 0] rp_rp_comp_TDATA
  .s_rp_comp_TLAST(s_rp_comp_TLAST),                  // output wire s_rp_comp_TLAST
  .rp_rp_comp_TLAST(rp_rp_comp_TLAST),                // input wire rp_rp_comp_TLAST
  .rp_comp_ref_clk(rp_comp_ref_clk),                  // input wire rp_comp_ref_clk
  .rp_comp_decouple_status(rp_comp_decouple_status),  // output wire rp_comp_decouple_status
  .s_rp_dec_TVALID(s_rp_dec_TVALID),                  // output wire s_rp_dec_TVALID
  .rp_rp_dec_TVALID(rp_rp_dec_TVALID),                // input wire rp_rp_dec_TVALID
  .s_rp_dec_TREADY(s_rp_dec_TREADY),                  // input wire s_rp_dec_TREADY
  .rp_rp_dec_TREADY(rp_rp_dec_TREADY),                // output wire rp_rp_dec_TREADY
  .s_rp_dec_TDATA(s_rp_dec_TDATA),                    // output wire [31 : 0] s_rp_dec_TDATA
  .rp_rp_dec_TDATA(rp_rp_dec_TDATA),                  // input wire [31 : 0] rp_rp_dec_TDATA
  .s_rp_dec_TLAST(s_rp_dec_TLAST),                    // output wire s_rp_dec_TLAST
  .rp_rp_dec_TLAST(rp_rp_dec_TLAST),                  // input wire rp_rp_dec_TLAST
  .rp_dec_ref_clk(rp_dec_ref_clk),                    // input wire rp_dec_ref_clk
  .rp_dec_decouple_status(rp_dec_decouple_status),    // output wire rp_dec_decouple_status
  .s_rp_div_TVALID(s_rp_div_TVALID),                  // output wire s_rp_div_TVALID
  .rp_rp_div_TVALID(rp_rp_div_TVALID),                // input wire rp_rp_div_TVALID
  .s_rp_div_TREADY(s_rp_div_TREADY),                  // input wire s_rp_div_TREADY
  .rp_rp_div_TREADY(rp_rp_div_TREADY),                // output wire rp_rp_div_TREADY
  .s_rp_div_TDATA(s_rp_div_TDATA),                    // output wire [31 : 0] s_rp_div_TDATA
  .rp_rp_div_TDATA(rp_rp_div_TDATA),                  // input wire [31 : 0] rp_rp_div_TDATA
  .s_rp_div_TLAST(s_rp_div_TLAST),                    // output wire s_rp_div_TLAST
  .rp_rp_div_TLAST(rp_rp_div_TLAST),                  // input wire rp_rp_div_TLAST
  .rp_div_ref_clk(rp_div_ref_clk),                    // input wire rp_div_ref_clk
  .rp_div_decouple_status(rp_div_decouple_status),    // output wire rp_div_decouple_status
  .s_rp_inc_TVALID(s_rp_inc_TVALID),                  // output wire s_rp_inc_TVALID
  .rp_rp_inc_TVALID(rp_rp_inc_TVALID),                // input wire rp_rp_inc_TVALID
  .s_rp_inc_TREADY(s_rp_inc_TREADY),                  // input wire s_rp_inc_TREADY
  .rp_rp_inc_TREADY(rp_rp_inc_TREADY),                // output wire rp_rp_inc_TREADY
  .s_rp_inc_TDATA(s_rp_inc_TDATA),                    // output wire [31 : 0] s_rp_inc_TDATA
  .rp_rp_inc_TDATA(rp_rp_inc_TDATA),                  // input wire [31 : 0] rp_rp_inc_TDATA
  .s_rp_inc_TLAST(s_rp_inc_TLAST),                    // output wire s_rp_inc_TLAST
  .rp_rp_inc_TLAST(rp_rp_inc_TLAST),                  // input wire rp_rp_inc_TLAST
  .rp_inc_ref_clk(rp_inc_ref_clk),                    // input wire rp_inc_ref_clk
  .rp_inc_decouple_status(rp_inc_decouple_status),    // output wire rp_inc_decouple_status
  .s_rp_mod_TVALID(s_rp_mod_TVALID),                  // output wire s_rp_mod_TVALID
  .rp_rp_mod_TVALID(rp_rp_mod_TVALID),                // input wire rp_rp_mod_TVALID
  .s_rp_mod_TREADY(s_rp_mod_TREADY),                  // input wire s_rp_mod_TREADY
  .rp_rp_mod_TREADY(rp_rp_mod_TREADY),                // output wire rp_rp_mod_TREADY
  .s_rp_mod_TDATA(s_rp_mod_TDATA),                    // output wire [31 : 0] s_rp_mod_TDATA
  .rp_rp_mod_TDATA(rp_rp_mod_TDATA),                  // input wire [31 : 0] rp_rp_mod_TDATA
  .s_rp_mod_TLAST(s_rp_mod_TLAST),                    // output wire s_rp_mod_TLAST
  .rp_rp_mod_TLAST(rp_rp_mod_TLAST),                  // input wire rp_rp_mod_TLAST
  .rp_mod_ref_clk(rp_mod_ref_clk),                    // input wire rp_mod_ref_clk
  .rp_mod_decouple_status(rp_mod_decouple_status),    // output wire rp_mod_decouple_status
  .s_rp_mul_TVALID(s_rp_mul_TVALID),                  // output wire s_rp_mul_TVALID
  .rp_rp_mul_TVALID(rp_rp_mul_TVALID),                // input wire rp_rp_mul_TVALID
  .s_rp_mul_TREADY(s_rp_mul_TREADY),                  // input wire s_rp_mul_TREADY
  .rp_rp_mul_TREADY(rp_rp_mul_TREADY),                // output wire rp_rp_mul_TREADY
  .s_rp_mul_TDATA(s_rp_mul_TDATA),                    // output wire [31 : 0] s_rp_mul_TDATA
  .rp_rp_mul_TDATA(rp_rp_mul_TDATA),                  // input wire [31 : 0] rp_rp_mul_TDATA
  .s_rp_mul_TLAST(s_rp_mul_TLAST),                    // output wire s_rp_mul_TLAST
  .rp_rp_mul_TLAST(rp_rp_mul_TLAST),                  // input wire rp_rp_mul_TLAST
  .rp_mul_ref_clk(rp_mul_ref_clk),                    // input wire rp_mul_ref_clk
  .rp_mul_decouple_status(rp_mul_decouple_status),    // output wire rp_mul_decouple_status
  .s_rp_mux_TVALID(s_rp_mux_TVALID),                  // output wire s_rp_mux_TVALID
  .rp_rp_mux_TVALID(rp_rp_mux_TVALID),                // input wire rp_rp_mux_TVALID
  .s_rp_mux_TREADY(s_rp_mux_TREADY),                  // input wire s_rp_mux_TREADY
  .rp_rp_mux_TREADY(rp_rp_mux_TREADY),                // output wire rp_rp_mux_TREADY
  .s_rp_mux_TDATA(s_rp_mux_TDATA),                    // output wire [31 : 0] s_rp_mux_TDATA
  .rp_rp_mux_TDATA(rp_rp_mux_TDATA),                  // input wire [31 : 0] rp_rp_mux_TDATA
  .s_rp_mux_TLAST(s_rp_mux_TLAST),                    // output wire s_rp_mux_TLAST
  .rp_rp_mux_TLAST(rp_rp_mux_TLAST),                  // input wire rp_rp_mux_TLAST
  .rp_mux_ref_clk(rp_mux_ref_clk),                    // input wire rp_mux_ref_clk
  .rp_mux_decouple_status(rp_mux_decouple_status),    // output wire rp_mux_decouple_status
  .s_rp_reg_TVALID(s_rp_reg_TVALID),                  // output wire s_rp_reg_TVALID
  .rp_rp_reg_TVALID(rp_rp_reg_TVALID),                // input wire rp_rp_reg_TVALID
  .s_rp_reg_TREADY(s_rp_reg_TREADY),                  // input wire s_rp_reg_TREADY
  .rp_rp_reg_TREADY(rp_rp_reg_TREADY),                // output wire rp_rp_reg_TREADY
  .s_rp_reg_TDATA(s_rp_reg_TDATA),                    // output wire [31 : 0] s_rp_reg_TDATA
  .rp_rp_reg_TDATA(rp_rp_reg_TDATA),                  // input wire [31 : 0] rp_rp_reg_TDATA
  .s_rp_reg_TLAST(s_rp_reg_TLAST),                    // output wire s_rp_reg_TLAST
  .rp_rp_reg_TLAST(rp_rp_reg_TLAST),                  // input wire rp_rp_reg_TLAST
  .rp_reg_ref_clk(rp_reg_ref_clk),                    // input wire rp_reg_ref_clk
  .rp_reg_decouple_status(rp_reg_decouple_status),    // output wire rp_reg_decouple_status
  .s_rp_shl_TVALID(s_rp_shl_TVALID),                  // output wire s_rp_shl_TVALID
  .rp_rp_shl_TVALID(rp_rp_shl_TVALID),                // input wire rp_rp_shl_TVALID
  .s_rp_shl_TREADY(s_rp_shl_TREADY),                  // input wire s_rp_shl_TREADY
  .rp_rp_shl_TREADY(rp_rp_shl_TREADY),                // output wire rp_rp_shl_TREADY
  .s_rp_shl_TDATA(s_rp_shl_TDATA),                    // output wire [31 : 0] s_rp_shl_TDATA
  .rp_rp_shl_TDATA(rp_rp_shl_TDATA),                  // input wire [31 : 0] rp_rp_shl_TDATA
  .s_rp_shl_TLAST(s_rp_shl_TLAST),                    // output wire s_rp_shl_TLAST
  .rp_rp_shl_TLAST(rp_rp_shl_TLAST),                  // input wire rp_rp_shl_TLAST
  .rp_shl_ref_clk(rp_shl_ref_clk),                    // input wire rp_shl_ref_clk
  .rp_shl_decouple_status(rp_shl_decouple_status),    // output wire rp_shl_decouple_status
  .s_rp_shr_TVALID(s_rp_shr_TVALID),                  // output wire s_rp_shr_TVALID
  .rp_rp_shr_TVALID(rp_rp_shr_TVALID),                // input wire rp_rp_shr_TVALID
  .s_rp_shr_TREADY(s_rp_shr_TREADY),                  // input wire s_rp_shr_TREADY
  .rp_rp_shr_TREADY(rp_rp_shr_TREADY),                // output wire rp_rp_shr_TREADY
  .s_rp_shr_TDATA(s_rp_shr_TDATA),                    // output wire [31 : 0] s_rp_shr_TDATA
  .rp_rp_shr_TDATA(rp_rp_shr_TDATA),                  // input wire [31 : 0] rp_rp_shr_TDATA
  .s_rp_shr_TLAST(s_rp_shr_TLAST),                    // output wire s_rp_shr_TLAST
  .rp_rp_shr_TLAST(rp_rp_shr_TLAST),                  // input wire rp_rp_shr_TLAST
  .rp_shr_ref_clk(rp_shr_ref_clk),                    // input wire rp_shr_ref_clk
  .rp_shr_decouple_status(rp_shr_decouple_status),    // output wire rp_shr_decouple_status
  .s_rp_sub_TVALID(s_rp_sub_TVALID),                  // output wire s_rp_sub_TVALID
  .rp_rp_sub_TVALID(rp_rp_sub_TVALID),                // input wire rp_rp_sub_TVALID
  .s_rp_sub_TREADY(s_rp_sub_TREADY),                  // input wire s_rp_sub_TREADY
  .rp_rp_sub_TREADY(rp_rp_sub_TREADY),                // output wire rp_rp_sub_TREADY
  .s_rp_sub_TDATA(s_rp_sub_TDATA),                    // output wire [31 : 0] s_rp_sub_TDATA
  .rp_rp_sub_TDATA(rp_rp_sub_TDATA),                  // input wire [31 : 0] rp_rp_sub_TDATA
  .s_rp_sub_TLAST(s_rp_sub_TLAST),                    // output wire s_rp_sub_TLAST
  .rp_rp_sub_TLAST(rp_rp_sub_TLAST),                  // input wire rp_rp_sub_TLAST
  .rp_sub_ref_clk(rp_sub_ref_clk),                    // input wire rp_sub_ref_clk
  .rp_sub_decouple_status(rp_sub_decouple_status),    // output wire rp_sub_decouple_status
  .decouple(decouple),                                // input wire decouple
  .decouple_status(decouple_status),                  // output wire decouple_status
  .aclk(aclk),                                        // input wire aclk
  .s_axi_reg_awaddr(s_axi_reg_awaddr),                // input wire [0 : 0] s_axi_reg_awaddr
  .s_axi_reg_awvalid(s_axi_reg_awvalid),              // input wire s_axi_reg_awvalid
  .s_axi_reg_awready(s_axi_reg_awready),              // output wire s_axi_reg_awready
  .s_axi_reg_wdata(s_axi_reg_wdata),                  // input wire [31 : 0] s_axi_reg_wdata
  .s_axi_reg_wvalid(s_axi_reg_wvalid),                // input wire s_axi_reg_wvalid
  .s_axi_reg_wready(s_axi_reg_wready),                // output wire s_axi_reg_wready
  .s_axi_reg_bresp(s_axi_reg_bresp),                  // output wire [1 : 0] s_axi_reg_bresp
  .s_axi_reg_bvalid(s_axi_reg_bvalid),                // output wire s_axi_reg_bvalid
  .s_axi_reg_bready(s_axi_reg_bready),                // input wire s_axi_reg_bready
  .s_axi_reg_araddr(s_axi_reg_araddr),                // input wire [0 : 0] s_axi_reg_araddr
  .s_axi_reg_arvalid(s_axi_reg_arvalid),              // input wire s_axi_reg_arvalid
  .s_axi_reg_arready(s_axi_reg_arready),              // output wire s_axi_reg_arready
  .s_axi_reg_rdata(s_axi_reg_rdata),                  // output wire [31 : 0] s_axi_reg_rdata
  .s_axi_reg_rresp(s_axi_reg_rresp),                  // output wire [1 : 0] s_axi_reg_rresp
  .s_axi_reg_rvalid(s_axi_reg_rvalid),                // output wire s_axi_reg_rvalid
  .s_axi_reg_rready(s_axi_reg_rready),                // input wire s_axi_reg_rready
  .s_axi_reg_aresetn(s_axi_reg_aresetn),              // input wire s_axi_reg_aresetn
  .m_axis_status_tdata(m_axis_status_tdata),          // output wire [31 : 0] m_axis_status_tdata
  .m_axis_status_tvalid(m_axis_status_tvalid),        // output wire m_axis_status_tvalid
  .s_axis_ctrl_tdata(s_axis_ctrl_tdata),              // input wire [31 : 0] s_axis_ctrl_tdata
  .s_axis_ctrl_tvalid(s_axis_ctrl_tvalid),            // input wire s_axis_ctrl_tvalid
  .s_axis_ctrl_tready(s_axis_ctrl_tready),            // output wire s_axis_ctrl_tready
  .s_axis_ctrl_aresetn(s_axis_ctrl_aresetn)          // input wire s_axis_ctrl_aresetn
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file prd.v when simulating
// the core, prd. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

