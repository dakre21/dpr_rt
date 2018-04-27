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

// IP VLNV: xilinx.com:ip:axi_emc:3.0
// IP Revision: 15

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
axi_em_ctrl your_instance_name (
  .s_axi_aclk(s_axi_aclk),                // input wire s_axi_aclk
  .s_axi_aresetn(s_axi_aresetn),          // input wire s_axi_aresetn
  .rdclk(rdclk),                          // input wire rdclk
  .s_axi_reg_awaddr(s_axi_reg_awaddr),    // input wire [4 : 0] s_axi_reg_awaddr
  .s_axi_reg_awvalid(s_axi_reg_awvalid),  // input wire s_axi_reg_awvalid
  .s_axi_reg_awready(s_axi_reg_awready),  // output wire s_axi_reg_awready
  .s_axi_reg_wdata(s_axi_reg_wdata),      // input wire [31 : 0] s_axi_reg_wdata
  .s_axi_reg_wstrb(s_axi_reg_wstrb),      // input wire [3 : 0] s_axi_reg_wstrb
  .s_axi_reg_wvalid(s_axi_reg_wvalid),    // input wire s_axi_reg_wvalid
  .s_axi_reg_wready(s_axi_reg_wready),    // output wire s_axi_reg_wready
  .s_axi_reg_bresp(s_axi_reg_bresp),      // output wire [1 : 0] s_axi_reg_bresp
  .s_axi_reg_bvalid(s_axi_reg_bvalid),    // output wire s_axi_reg_bvalid
  .s_axi_reg_bready(s_axi_reg_bready),    // input wire s_axi_reg_bready
  .s_axi_reg_araddr(s_axi_reg_araddr),    // input wire [4 : 0] s_axi_reg_araddr
  .s_axi_reg_arvalid(s_axi_reg_arvalid),  // input wire s_axi_reg_arvalid
  .s_axi_reg_arready(s_axi_reg_arready),  // output wire s_axi_reg_arready
  .s_axi_reg_rdata(s_axi_reg_rdata),      // output wire [31 : 0] s_axi_reg_rdata
  .s_axi_reg_rresp(s_axi_reg_rresp),      // output wire [1 : 0] s_axi_reg_rresp
  .s_axi_reg_rvalid(s_axi_reg_rvalid),    // output wire s_axi_reg_rvalid
  .s_axi_reg_rready(s_axi_reg_rready),    // input wire s_axi_reg_rready
  .s_axi_mem_awid(s_axi_mem_awid),        // input wire [3 : 0] s_axi_mem_awid
  .s_axi_mem_awaddr(s_axi_mem_awaddr),    // input wire [31 : 0] s_axi_mem_awaddr
  .s_axi_mem_awlen(s_axi_mem_awlen),      // input wire [7 : 0] s_axi_mem_awlen
  .s_axi_mem_awsize(s_axi_mem_awsize),    // input wire [2 : 0] s_axi_mem_awsize
  .s_axi_mem_awburst(s_axi_mem_awburst),  // input wire [1 : 0] s_axi_mem_awburst
  .s_axi_mem_awlock(s_axi_mem_awlock),    // input wire s_axi_mem_awlock
  .s_axi_mem_awcache(s_axi_mem_awcache),  // input wire [3 : 0] s_axi_mem_awcache
  .s_axi_mem_awprot(s_axi_mem_awprot),    // input wire [2 : 0] s_axi_mem_awprot
  .s_axi_mem_awvalid(s_axi_mem_awvalid),  // input wire s_axi_mem_awvalid
  .s_axi_mem_awready(s_axi_mem_awready),  // output wire s_axi_mem_awready
  .s_axi_mem_wdata(s_axi_mem_wdata),      // input wire [31 : 0] s_axi_mem_wdata
  .s_axi_mem_wstrb(s_axi_mem_wstrb),      // input wire [3 : 0] s_axi_mem_wstrb
  .s_axi_mem_wlast(s_axi_mem_wlast),      // input wire s_axi_mem_wlast
  .s_axi_mem_wvalid(s_axi_mem_wvalid),    // input wire s_axi_mem_wvalid
  .s_axi_mem_wready(s_axi_mem_wready),    // output wire s_axi_mem_wready
  .s_axi_mem_bid(s_axi_mem_bid),          // output wire [3 : 0] s_axi_mem_bid
  .s_axi_mem_bresp(s_axi_mem_bresp),      // output wire [1 : 0] s_axi_mem_bresp
  .s_axi_mem_bvalid(s_axi_mem_bvalid),    // output wire s_axi_mem_bvalid
  .s_axi_mem_bready(s_axi_mem_bready),    // input wire s_axi_mem_bready
  .s_axi_mem_arid(s_axi_mem_arid),        // input wire [3 : 0] s_axi_mem_arid
  .s_axi_mem_araddr(s_axi_mem_araddr),    // input wire [31 : 0] s_axi_mem_araddr
  .s_axi_mem_arlen(s_axi_mem_arlen),      // input wire [7 : 0] s_axi_mem_arlen
  .s_axi_mem_arsize(s_axi_mem_arsize),    // input wire [2 : 0] s_axi_mem_arsize
  .s_axi_mem_arburst(s_axi_mem_arburst),  // input wire [1 : 0] s_axi_mem_arburst
  .s_axi_mem_arlock(s_axi_mem_arlock),    // input wire s_axi_mem_arlock
  .s_axi_mem_arcache(s_axi_mem_arcache),  // input wire [3 : 0] s_axi_mem_arcache
  .s_axi_mem_arprot(s_axi_mem_arprot),    // input wire [2 : 0] s_axi_mem_arprot
  .s_axi_mem_arvalid(s_axi_mem_arvalid),  // input wire s_axi_mem_arvalid
  .s_axi_mem_arready(s_axi_mem_arready),  // output wire s_axi_mem_arready
  .s_axi_mem_rid(s_axi_mem_rid),          // output wire [3 : 0] s_axi_mem_rid
  .s_axi_mem_rdata(s_axi_mem_rdata),      // output wire [31 : 0] s_axi_mem_rdata
  .s_axi_mem_rresp(s_axi_mem_rresp),      // output wire [1 : 0] s_axi_mem_rresp
  .s_axi_mem_rlast(s_axi_mem_rlast),      // output wire s_axi_mem_rlast
  .s_axi_mem_rvalid(s_axi_mem_rvalid),    // output wire s_axi_mem_rvalid
  .s_axi_mem_rready(s_axi_mem_rready),    // input wire s_axi_mem_rready
  .mem_dq_i(mem_dq_i),                    // input wire [15 : 0] mem_dq_i
  .mem_dq_o(mem_dq_o),                    // output wire [15 : 0] mem_dq_o
  .mem_dq_t(mem_dq_t),                    // output wire [15 : 0] mem_dq_t
  .mem_a(mem_a),                          // output wire [31 : 0] mem_a
  .mem_ce(mem_ce),                        // output wire [0 : 0] mem_ce
  .mem_cen(mem_cen),                      // output wire [0 : 0] mem_cen
  .mem_oen(mem_oen),                      // output wire [0 : 0] mem_oen
  .mem_wen(mem_wen),                      // output wire mem_wen
  .mem_ben(mem_ben),                      // output wire [1 : 0] mem_ben
  .mem_qwen(mem_qwen),                    // output wire [1 : 0] mem_qwen
  .mem_rpn(mem_rpn),                      // output wire mem_rpn
  .mem_adv_ldn(mem_adv_ldn),              // output wire mem_adv_ldn
  .mem_lbon(mem_lbon),                    // output wire mem_lbon
  .mem_cken(mem_cken),                    // output wire mem_cken
  .mem_rnw(mem_rnw),                      // output wire mem_rnw
  .mem_cre(mem_cre),                      // output wire mem_cre
  .mem_wait(mem_wait)                    // input wire [0 : 0] mem_wait
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file axi_em_ctrl.v when simulating
// the core, axi_em_ctrl. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

