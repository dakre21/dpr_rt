// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Thu Apr 26 21:09:56 2018
// Host        : dakre-VirtualBox running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pr_decoupler_0_sim_netlist.v
// Design      : pr_decoupler_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync
   (rp_rm_add_TREADY,
    rm_add_decouple_status,
    s_rm_add_TVALID,
    s_rm_add_TREADY,
    rp_rm_add_TVALID,
    rm_add_ref_clk,
    decouple_status,
    aclk);
  output rp_rm_add_TREADY;
  output rm_add_decouple_status;
  output s_rm_add_TVALID;
  input s_rm_add_TREADY;
  input rp_rm_add_TVALID;
  input rm_add_ref_clk;
  input decouple_status;
  input aclk;

  wire aclk;
  wire decouple_status;
  wire p_level_in_d1_cdc_from;
  wire rm_add_decouple_status;
  wire rm_add_ref_clk;
  wire rp_rm_add_TREADY;
  wire rp_rm_add_TVALID;
  wire s_level_out_d1_cdc_to;
  wire s_rm_add_TREADY;
  wire s_rm_add_TVALID;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(rm_add_ref_clk),
        .CE(1'b1),
        .D(p_level_in_d1_cdc_from),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(rm_add_ref_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(rm_add_decouple_status),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from 
       (.C(aclk),
        .CE(1'b1),
        .D(decouple_status),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    rp_rm_add_TREADY_INST_0
       (.I0(s_rm_add_TREADY),
        .I1(rm_add_decouple_status),
        .O(rp_rm_add_TREADY));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_rm_add_TVALID_INST_0
       (.I0(rp_rm_add_TVALID),
        .I1(rm_add_decouple_status),
        .O(s_rm_add_TVALID));
endmodule

(* CHECK_LICENSE_TYPE = "pr_decoupler_0,prd_pr_decoupler_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "prd_pr_decoupler_0,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_rm_add_TVALID,
    rp_rm_add_TVALID,
    s_rm_add_TREADY,
    rp_rm_add_TREADY,
    s_rm_add_TDATA,
    rp_rm_add_TDATA,
    s_rm_add_TLAST,
    rp_rm_add_TLAST,
    rm_add_ref_clk,
    rm_add_decouple_status,
    decouple,
    decouple_status,
    aclk,
    s_axi_reg_awaddr,
    s_axi_reg_awvalid,
    s_axi_reg_awready,
    s_axi_reg_wdata,
    s_axi_reg_wvalid,
    s_axi_reg_wready,
    s_axi_reg_bresp,
    s_axi_reg_bvalid,
    s_axi_reg_bready,
    s_axi_reg_araddr,
    s_axi_reg_arvalid,
    s_axi_reg_arready,
    s_axi_reg_rdata,
    s_axi_reg_rresp,
    s_axi_reg_rvalid,
    s_axi_reg_rready,
    s_axi_reg_aresetn,
    m_axis_status_tdata,
    m_axis_status_tvalid,
    s_axis_ctrl_tdata,
    s_axis_ctrl_tvalid,
    s_axis_ctrl_tready,
    s_axis_ctrl_aresetn);
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_rm_add TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_rm_add, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE" *) output s_rm_add_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 rp_rm_add TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME rp_rm_add, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE" *) input rp_rm_add_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_rm_add TREADY" *) input s_rm_add_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 rp_rm_add TREADY" *) output rp_rm_add_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_rm_add TDATA" *) output [31:0]s_rm_add_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 rp_rm_add TDATA" *) input [31:0]rp_rm_add_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_rm_add TLAST" *) output s_rm_add_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 rp_rm_add TLAST" *) input rp_rm_add_TLAST;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 rm_add_ref_clk_CLOCK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME rm_add_ref_clk_CLOCK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_BUSIF s_rm_add:rp_rm_add" *) input rm_add_ref_clk;
  output rm_add_decouple_status;
  input decouple;
  output decouple_status;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_CLOCK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_CLOCK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_BUSIF s_axi_reg:m_axis_status:s_axis_ctrl" *) input aclk;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_reg AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_reg, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 1, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input [0:0]s_axi_reg_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_reg AWVALID" *) input s_axi_reg_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_reg AWREADY" *) output s_axi_reg_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_reg WDATA" *) input [31:0]s_axi_reg_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_reg WVALID" *) input s_axi_reg_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_reg WREADY" *) output s_axi_reg_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_reg BRESP" *) output [1:0]s_axi_reg_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_reg BVALID" *) output s_axi_reg_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_reg BREADY" *) input s_axi_reg_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_reg ARADDR" *) input [0:0]s_axi_reg_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_reg ARVALID" *) input s_axi_reg_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_reg ARREADY" *) output s_axi_reg_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_reg RDATA" *) output [31:0]s_axi_reg_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_reg RRESP" *) output [1:0]s_axi_reg_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_reg RVALID" *) output s_axi_reg_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_reg RREADY" *) input s_axi_reg_rready;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 AXI_RESET RST" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_RESET, POLARITY ACTIVE_LOW" *) input s_axi_reg_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_status TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis_status, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef" *) output [31:0]m_axis_status_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_status TVALID" *) output m_axis_status_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis_ctrl TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis_ctrl, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef" *) input [31:0]s_axis_ctrl_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis_ctrl TVALID" *) input s_axis_ctrl_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis_ctrl TREADY" *) output s_axis_ctrl_tready;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 AXIS_CONTROL_RESET RST" *) (* x_interface_parameter = "XIL_INTERFACENAME AXIS_CONTROL_RESET, POLARITY ACTIVE_LOW" *) input s_axis_ctrl_aresetn;

  wire aclk;
  wire decouple;
  wire decouple_status;
  wire [31:0]m_axis_status_tdata;
  wire m_axis_status_tvalid;
  wire rm_add_decouple_status;
  wire rm_add_ref_clk;
  wire [31:0]rp_rm_add_TDATA;
  wire rp_rm_add_TLAST;
  wire rp_rm_add_TREADY;
  wire rp_rm_add_TVALID;
  wire [0:0]s_axi_reg_araddr;
  wire s_axi_reg_aresetn;
  wire s_axi_reg_arready;
  wire s_axi_reg_arvalid;
  wire [0:0]s_axi_reg_awaddr;
  wire s_axi_reg_awready;
  wire s_axi_reg_awvalid;
  wire s_axi_reg_bready;
  wire [1:0]s_axi_reg_bresp;
  wire s_axi_reg_bvalid;
  wire [31:0]s_axi_reg_rdata;
  wire s_axi_reg_rready;
  wire [1:0]s_axi_reg_rresp;
  wire s_axi_reg_rvalid;
  wire [31:0]s_axi_reg_wdata;
  wire s_axi_reg_wready;
  wire s_axi_reg_wvalid;
  wire s_axis_ctrl_aresetn;
  wire [31:0]s_axis_ctrl_tdata;
  wire s_axis_ctrl_tready;
  wire s_axis_ctrl_tvalid;
  wire [31:0]s_rm_add_TDATA;
  wire s_rm_add_TLAST;
  wire s_rm_add_TREADY;
  wire s_rm_add_TVALID;

  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_prd_pr_decoupler_0 U0
       (.aclk(aclk),
        .decouple(decouple),
        .decouple_status(decouple_status),
        .m_axis_status_tdata(m_axis_status_tdata),
        .m_axis_status_tvalid(m_axis_status_tvalid),
        .rm_add_decouple_status(rm_add_decouple_status),
        .rm_add_ref_clk(rm_add_ref_clk),
        .rp_rm_add_TDATA(rp_rm_add_TDATA),
        .rp_rm_add_TLAST(rp_rm_add_TLAST),
        .rp_rm_add_TREADY(rp_rm_add_TREADY),
        .rp_rm_add_TVALID(rp_rm_add_TVALID),
        .s_axi_reg_araddr(s_axi_reg_araddr),
        .s_axi_reg_aresetn(s_axi_reg_aresetn),
        .s_axi_reg_arready(s_axi_reg_arready),
        .s_axi_reg_arvalid(s_axi_reg_arvalid),
        .s_axi_reg_awaddr(s_axi_reg_awaddr),
        .s_axi_reg_awready(s_axi_reg_awready),
        .s_axi_reg_awvalid(s_axi_reg_awvalid),
        .s_axi_reg_bready(s_axi_reg_bready),
        .s_axi_reg_bresp(s_axi_reg_bresp),
        .s_axi_reg_bvalid(s_axi_reg_bvalid),
        .s_axi_reg_rdata(s_axi_reg_rdata),
        .s_axi_reg_rready(s_axi_reg_rready),
        .s_axi_reg_rresp(s_axi_reg_rresp),
        .s_axi_reg_rvalid(s_axi_reg_rvalid),
        .s_axi_reg_wdata(s_axi_reg_wdata),
        .s_axi_reg_wready(s_axi_reg_wready),
        .s_axi_reg_wvalid(s_axi_reg_wvalid),
        .s_axis_ctrl_aresetn(s_axis_ctrl_aresetn),
        .s_axis_ctrl_tdata(s_axis_ctrl_tdata),
        .s_axis_ctrl_tready(s_axis_ctrl_tready),
        .s_axis_ctrl_tvalid(s_axis_ctrl_tvalid),
        .s_rm_add_TDATA(s_rm_add_TDATA),
        .s_rm_add_TLAST(s_rm_add_TLAST),
        .s_rm_add_TREADY(s_rm_add_TREADY),
        .s_rm_add_TVALID(s_rm_add_TVALID));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_if
   (s_axi_reg_rdata,
    s_axi_reg_rresp,
    s_axi_reg_rvalid,
    decouple_status,
    s_axi_reg_bresp,
    s_axi_reg_bvalid,
    s_axi_reg_arready,
    aclk,
    axi_stream_decouple,
    decouple,
    s_axi_reg_wdata,
    s_axi_reg_awaddr,
    s_axi_reg_arvalid,
    s_axi_reg_rready,
    s_axi_reg_aresetn,
    s_axi_reg_araddr,
    s_axi_reg_bready,
    s_axi_reg_awvalid,
    s_axi_reg_wvalid);
  output [0:0]s_axi_reg_rdata;
  output [0:0]s_axi_reg_rresp;
  output s_axi_reg_rvalid;
  output decouple_status;
  output [0:0]s_axi_reg_bresp;
  output s_axi_reg_bvalid;
  output s_axi_reg_arready;
  input aclk;
  input axi_stream_decouple;
  input decouple;
  input [0:0]s_axi_reg_wdata;
  input [0:0]s_axi_reg_awaddr;
  input s_axi_reg_arvalid;
  input s_axi_reg_rready;
  input s_axi_reg_aresetn;
  input [0:0]s_axi_reg_araddr;
  input s_axi_reg_bready;
  input s_axi_reg_awvalid;
  input s_axi_reg_wvalid;

  wire \/i_/i__n_0 ;
  wire \FSM_sequential_current_state[0]_i_1_n_0 ;
  wire \FSM_sequential_current_state[1]_i_1_n_0 ;
  wire \FSM_sequential_current_state[1]_i_2_n_0 ;
  wire \FSM_sequential_current_state[1]_i_3_n_0 ;
  wire \FSM_sequential_current_state[2]_i_1_n_0 ;
  wire \FSM_sequential_current_state[2]_i_2_n_0 ;
  wire aclk;
  wire axi_lite_decouple;
  wire axi_stream_decouple;
  (* RTL_KEEP = "yes" *) wire [2:0]current_state;
  wire decouple;
  wire decouple_bit_i_i_1_n_0;
  wire decouple_status;
  wire \s_axi_rdata_i[0]_i_1_n_0 ;
  wire \s_axi_rdata_i[0]_i_2_n_0 ;
  wire [0:0]s_axi_reg_araddr;
  wire s_axi_reg_aresetn;
  wire s_axi_reg_arready;
  wire s_axi_reg_arvalid;
  wire [0:0]s_axi_reg_awaddr;
  wire s_axi_reg_awvalid;
  wire s_axi_reg_bready;
  wire [0:0]s_axi_reg_bresp;
  wire s_axi_reg_bvalid;
  wire [0:0]s_axi_reg_rdata;
  wire s_axi_reg_rready;
  wire [0:0]s_axi_reg_rresp;
  wire s_axi_reg_rvalid;
  wire [0:0]s_axi_reg_wdata;
  wire s_axi_reg_wvalid;
  wire \s_axi_rresp_i[1]_i_1_n_0 ;
  wire s_axi_rvalid_i_i_1_n_0;

  LUT5 #(
    .INIT(32'h00101110)) 
    \/i_/i_ 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(s_axi_reg_arvalid),
        .I3(current_state[0]),
        .I4(s_axi_reg_rready),
        .O(\/i_/i__n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(\/i_/i__n_0 ),
        .I1(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I2(current_state[2]),
        .I3(\FSM_sequential_current_state[2]_i_2_n_0 ),
        .I4(current_state[0]),
        .O(\FSM_sequential_current_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I2(current_state[2]),
        .I3(\FSM_sequential_current_state[2]_i_2_n_0 ),
        .I4(current_state[1]),
        .O(\FSM_sequential_current_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00011101)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(s_axi_reg_arvalid),
        .I3(current_state[0]),
        .I4(s_axi_reg_rready),
        .O(\FSM_sequential_current_state[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_sequential_current_state[1]_i_3 
       (.I0(s_axi_reg_bready),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .O(\FSM_sequential_current_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFD10FDFF00100000)) 
    \FSM_sequential_current_state[2]_i_1 
       (.I0(s_axi_reg_bready),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .I4(\FSM_sequential_current_state[2]_i_2_n_0 ),
        .I5(current_state[2]),
        .O(\FSM_sequential_current_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEA5555FFEA)) 
    \FSM_sequential_current_state[2]_i_2 
       (.I0(current_state[0]),
        .I1(s_axi_reg_awvalid),
        .I2(s_axi_reg_wvalid),
        .I3(s_axi_reg_arvalid),
        .I4(current_state[1]),
        .I5(s_axi_reg_rready),
        .O(\FSM_sequential_current_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "st_idle:000,st_read:001,st_write:010,st_read_resp:011,st_write_resp:100" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_current_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_current_state[0]_i_1_n_0 ),
        .Q(current_state[0]),
        .R(\s_axi_rdata_i[0]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "st_idle:000,st_read:001,st_write:010,st_read_resp:011,st_write_resp:100" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_current_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_current_state[1]_i_1_n_0 ),
        .Q(current_state[1]),
        .R(\s_axi_rdata_i[0]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "st_idle:000,st_read:001,st_write:010,st_read_resp:011,st_write_resp:100" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_current_state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_current_state[2]_i_1_n_0 ),
        .Q(current_state[2]),
        .R(\s_axi_rdata_i[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEB00000028)) 
    decouple_bit_i_i_1
       (.I0(s_axi_reg_wdata),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(s_axi_reg_awaddr),
        .I5(axi_lite_decouple),
        .O(decouple_bit_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    decouple_bit_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(decouple_bit_i_i_1_n_0),
        .Q(axi_lite_decouple),
        .R(\s_axi_rdata_i[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    decouple_status_INST_0
       (.I0(axi_stream_decouple),
        .I1(decouple),
        .I2(axi_lite_decouple),
        .O(decouple_status));
  LUT1 #(
    .INIT(2'h1)) 
    \s_axi_rdata_i[0]_i_1 
       (.I0(s_axi_reg_aresetn),
        .O(\s_axi_rdata_i[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD22222220)) 
    \s_axi_rdata_i[0]_i_2 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(axi_stream_decouple),
        .I3(decouple),
        .I4(axi_lite_decouple),
        .I5(s_axi_reg_rdata),
        .O(\s_axi_rdata_i[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_axi_rdata_i[0]_i_2_n_0 ),
        .Q(s_axi_reg_rdata),
        .R(\s_axi_rdata_i[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_reg_arready_INST_0
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .O(s_axi_reg_arready));
  LUT4 #(
    .INIT(16'h0600)) 
    \s_axi_reg_bresp[1]_INST_0 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(s_axi_reg_awaddr),
        .O(s_axi_reg_bresp));
  LUT3 #(
    .INIT(8'h14)) 
    s_axi_reg_bvalid_INST_0
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .O(s_axi_reg_bvalid));
  LUT5 #(
    .INIT(32'h8C888088)) 
    \s_axi_rresp_i[1]_i_1 
       (.I0(s_axi_reg_rresp),
        .I1(s_axi_reg_aresetn),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(s_axi_reg_araddr),
        .O(\s_axi_rresp_i[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rresp_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_axi_rresp_i[1]_i_1_n_0 ),
        .Q(s_axi_reg_rresp),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h4F44)) 
    s_axi_rvalid_i_i_1
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(s_axi_reg_rready),
        .I3(s_axi_reg_rvalid),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_reg_rvalid),
        .R(\s_axi_rdata_i[0]_i_1_n_0 ));
endmodule

(* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_prd_pr_decoupler_0
   (s_rm_add_TVALID,
    rp_rm_add_TVALID,
    s_rm_add_TREADY,
    rp_rm_add_TREADY,
    s_rm_add_TDATA,
    rp_rm_add_TDATA,
    s_rm_add_TLAST,
    rp_rm_add_TLAST,
    rm_add_ref_clk,
    rm_add_decouple_status,
    s_axi_reg_aresetn,
    s_axi_reg_awaddr,
    s_axi_reg_awvalid,
    s_axi_reg_awready,
    s_axi_reg_wdata,
    s_axi_reg_wvalid,
    s_axi_reg_wready,
    s_axi_reg_bresp,
    s_axi_reg_bvalid,
    s_axi_reg_bready,
    s_axi_reg_araddr,
    s_axi_reg_arvalid,
    s_axi_reg_arready,
    s_axi_reg_rdata,
    s_axi_reg_rresp,
    s_axi_reg_rvalid,
    s_axi_reg_rready,
    aclk,
    m_axis_status_tvalid,
    m_axis_status_tdata,
    s_axis_ctrl_aresetn,
    s_axis_ctrl_tvalid,
    s_axis_ctrl_tready,
    s_axis_ctrl_tdata,
    decouple,
    decouple_status);
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
  input s_axi_reg_aresetn;
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
  input aclk;
  output m_axis_status_tvalid;
  output [31:0]m_axis_status_tdata;
  input s_axis_ctrl_aresetn;
  input s_axis_ctrl_tvalid;
  output s_axis_ctrl_tready;
  input [31:0]s_axis_ctrl_tdata;
  input decouple;
  output decouple_status;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire axi_stream_decouple;
  wire axi_stream_decouple_i_1_n_0;
  wire decouple;
  wire decouple_status;
  wire rm_add_decouple_status;
  wire rm_add_ref_clk;
  wire [31:0]rp_rm_add_TDATA;
  wire rp_rm_add_TLAST;
  wire rp_rm_add_TREADY;
  wire rp_rm_add_TVALID;
  wire [0:0]s_axi_reg_araddr;
  wire s_axi_reg_aresetn;
  wire s_axi_reg_arready;
  wire s_axi_reg_arvalid;
  wire [0:0]s_axi_reg_awaddr;
  wire s_axi_reg_awvalid;
  wire s_axi_reg_bready;
  wire [1:1]\^s_axi_reg_bresp ;
  wire s_axi_reg_bvalid;
  wire [0:0]\^s_axi_reg_rdata ;
  wire s_axi_reg_rready;
  wire [1:1]\^s_axi_reg_rresp ;
  wire s_axi_reg_rvalid;
  wire [31:0]s_axi_reg_wdata;
  wire s_axi_reg_wvalid;
  wire s_axis_ctrl_aresetn;
  wire [31:0]s_axis_ctrl_tdata;
  wire s_axis_ctrl_tvalid;
  wire s_rm_add_TREADY;
  wire s_rm_add_TVALID;

  assign m_axis_status_tdata[31] = \<const0> ;
  assign m_axis_status_tdata[30] = \<const0> ;
  assign m_axis_status_tdata[29] = \<const0> ;
  assign m_axis_status_tdata[28] = \<const0> ;
  assign m_axis_status_tdata[27] = \<const0> ;
  assign m_axis_status_tdata[26] = \<const0> ;
  assign m_axis_status_tdata[25] = \<const0> ;
  assign m_axis_status_tdata[24] = \<const0> ;
  assign m_axis_status_tdata[23] = \<const0> ;
  assign m_axis_status_tdata[22] = \<const0> ;
  assign m_axis_status_tdata[21] = \<const0> ;
  assign m_axis_status_tdata[20] = \<const0> ;
  assign m_axis_status_tdata[19] = \<const0> ;
  assign m_axis_status_tdata[18] = \<const0> ;
  assign m_axis_status_tdata[17] = \<const0> ;
  assign m_axis_status_tdata[16] = \<const0> ;
  assign m_axis_status_tdata[15] = \<const0> ;
  assign m_axis_status_tdata[14] = \<const0> ;
  assign m_axis_status_tdata[13] = \<const0> ;
  assign m_axis_status_tdata[12] = \<const0> ;
  assign m_axis_status_tdata[11] = \<const0> ;
  assign m_axis_status_tdata[10] = \<const0> ;
  assign m_axis_status_tdata[9] = \<const0> ;
  assign m_axis_status_tdata[8] = \<const0> ;
  assign m_axis_status_tdata[7] = \<const0> ;
  assign m_axis_status_tdata[6] = \<const0> ;
  assign m_axis_status_tdata[5] = \<const0> ;
  assign m_axis_status_tdata[4] = \<const0> ;
  assign m_axis_status_tdata[3] = \<const0> ;
  assign m_axis_status_tdata[2] = \<const0> ;
  assign m_axis_status_tdata[1] = \<const0> ;
  assign m_axis_status_tdata[0] = decouple_status;
  assign m_axis_status_tvalid = \<const1> ;
  assign s_axi_reg_awready = s_axi_reg_bvalid;
  assign s_axi_reg_bresp[1] = \^s_axi_reg_bresp [1];
  assign s_axi_reg_bresp[0] = \<const0> ;
  assign s_axi_reg_rdata[31] = \<const0> ;
  assign s_axi_reg_rdata[30] = \<const0> ;
  assign s_axi_reg_rdata[29] = \<const0> ;
  assign s_axi_reg_rdata[28] = \<const0> ;
  assign s_axi_reg_rdata[27] = \<const0> ;
  assign s_axi_reg_rdata[26] = \<const0> ;
  assign s_axi_reg_rdata[25] = \<const0> ;
  assign s_axi_reg_rdata[24] = \<const0> ;
  assign s_axi_reg_rdata[23] = \<const0> ;
  assign s_axi_reg_rdata[22] = \<const0> ;
  assign s_axi_reg_rdata[21] = \<const0> ;
  assign s_axi_reg_rdata[20] = \<const0> ;
  assign s_axi_reg_rdata[19] = \<const0> ;
  assign s_axi_reg_rdata[18] = \<const0> ;
  assign s_axi_reg_rdata[17] = \<const0> ;
  assign s_axi_reg_rdata[16] = \<const0> ;
  assign s_axi_reg_rdata[15] = \<const0> ;
  assign s_axi_reg_rdata[14] = \<const0> ;
  assign s_axi_reg_rdata[13] = \<const0> ;
  assign s_axi_reg_rdata[12] = \<const0> ;
  assign s_axi_reg_rdata[11] = \<const0> ;
  assign s_axi_reg_rdata[10] = \<const0> ;
  assign s_axi_reg_rdata[9] = \<const0> ;
  assign s_axi_reg_rdata[8] = \<const0> ;
  assign s_axi_reg_rdata[7] = \<const0> ;
  assign s_axi_reg_rdata[6] = \<const0> ;
  assign s_axi_reg_rdata[5] = \<const0> ;
  assign s_axi_reg_rdata[4] = \<const0> ;
  assign s_axi_reg_rdata[3] = \<const0> ;
  assign s_axi_reg_rdata[2] = \<const0> ;
  assign s_axi_reg_rdata[1] = \<const0> ;
  assign s_axi_reg_rdata[0] = \^s_axi_reg_rdata [0];
  assign s_axi_reg_rresp[1] = \^s_axi_reg_rresp [1];
  assign s_axi_reg_rresp[0] = \<const0> ;
  assign s_axi_reg_wready = s_axi_reg_bvalid;
  assign s_axis_ctrl_tready = \<const1> ;
  assign s_rm_add_TDATA[31:0] = rp_rm_add_TDATA;
  assign s_rm_add_TLAST = rp_rm_add_TLAST;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'hA808)) 
    axi_stream_decouple_i_1
       (.I0(s_axis_ctrl_aresetn),
        .I1(axi_stream_decouple),
        .I2(s_axis_ctrl_tvalid),
        .I3(s_axis_ctrl_tdata[0]),
        .O(axi_stream_decouple_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_stream_decouple_reg
       (.C(aclk),
        .CE(1'b1),
        .D(axi_stream_decouple_i_1_n_0),
        .Q(axi_stream_decouple),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync \b_rm_add.i_cdc 
       (.aclk(aclk),
        .decouple_status(decouple_status),
        .rm_add_decouple_status(rm_add_decouple_status),
        .rm_add_ref_clk(rm_add_ref_clk),
        .rp_rm_add_TREADY(rp_rm_add_TREADY),
        .rp_rm_add_TVALID(rp_rm_add_TVALID),
        .s_rm_add_TREADY(s_rm_add_TREADY),
        .s_rm_add_TVALID(s_rm_add_TVALID));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_if i_axi_lite_if
       (.aclk(aclk),
        .axi_stream_decouple(axi_stream_decouple),
        .decouple(decouple),
        .decouple_status(decouple_status),
        .s_axi_reg_araddr(s_axi_reg_araddr),
        .s_axi_reg_aresetn(s_axi_reg_aresetn),
        .s_axi_reg_arready(s_axi_reg_arready),
        .s_axi_reg_arvalid(s_axi_reg_arvalid),
        .s_axi_reg_awaddr(s_axi_reg_awaddr),
        .s_axi_reg_awvalid(s_axi_reg_awvalid),
        .s_axi_reg_bready(s_axi_reg_bready),
        .s_axi_reg_bresp(\^s_axi_reg_bresp ),
        .s_axi_reg_bvalid(s_axi_reg_bvalid),
        .s_axi_reg_rdata(\^s_axi_reg_rdata ),
        .s_axi_reg_rready(s_axi_reg_rready),
        .s_axi_reg_rresp(\^s_axi_reg_rresp ),
        .s_axi_reg_rvalid(s_axi_reg_rvalid),
        .s_axi_reg_wdata(s_axi_reg_wdata[0]),
        .s_axi_reg_wvalid(s_axi_reg_wvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
