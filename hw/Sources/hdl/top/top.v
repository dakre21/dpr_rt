`timescale 1ns / 1ps

// Author: David Akre
// Title: DPR Top

module top (
  clk,
  rst,
  icap_i,
  icap_o,
  icap_reset,
  a,
  b,
  op_sel,
  mux_sel,
  comp_lt,
  comp_gt,
  comp_eq,
  out,
);
  // Initialize wires and assign them to inputs for
  // custom static logic and RMs
  parameter DATAWIDTH = 2;
  parameter STATICWIDTH = 32;
  input clk, rst, mux_sel;
  input [4:0] op_sel;
  input [DATAWIDTH-1:0] a, b;
  output comp_lt, comp_gt, comp_eq;
  output reg [DATAWIDTH-1:0] out;

  // Initialize IP inputs and outputs
  input [STATICWIDTH-1:0] icap_i;
  output [STATICWIDTH-1:0] icap_o;
  input icap_reset;

  // Setup static logic
  // PRC
  wire cap_gnt;
  wire cap_rel;
  wire cap_req;
  wire icap_clk;
  wire icap_csib;
  wire icap_rdwrb;
  wire [31:0]s_axi_mem_araddr;
  wire [1:0]s_axi_mem_arburst;
  wire [3:0]s_axi_mem_arcache;
  wire [7:0]s_axi_mem_arlen;
  wire [2:0]s_axi_mem_arprot;
  wire s_axi_mem_arready;
  wire [2:0]s_axi_mem_arsize;
  wire s_axi_mem_arvalid;
  wire [31:0]s_axi_mem_rdata;
  wire s_axi_mem_rlast;
  wire s_axi_mem_rready;
  wire [1:0]s_axi_mem_rresp;
  wire s_axi_mem_rvalid;
  wire [31:0]s_axi_reg_araddr;
  wire s_axi_reg_arready;
  wire s_axi_reg_arvalid;
  wire [31:0]s_axi_reg_awaddr;
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
  wire vsm_vs_main_event_error;
  wire [11:0]vsm_vs_main_hw_triggers;
  wire [31:0]vsm_vs_main_m_axis_status_tdata;
  wire vsm_vs_main_m_axis_status_tvalid;
  wire vsm_vs_main_rm_decouple;
  wire vsm_vs_main_rm_reset;
  wire vsm_vs_main_rm_shutdown_ack;
  wire vsm_vs_main_rm_shutdown_req;
  wire vsm_vs_main_sw_shutdown_req;
  wire vsm_vs_main_sw_startup_req;

  prc prc_1 (
        .cap_gnt(cap_gnt),
        .cap_rel(cap_rel),
        .cap_req(cap_req),
        .clk(clk),
        .icap_clk(icap_clk),
        .icap_csib(icap_csib),
        .icap_i(icap_i),
        .icap_o(icap_o),
        .icap_rdwrb(icap_rdwrb),
        .icap_reset(icap_reset),
        .m_axi_mem_araddr(s_axi_mem_araddr),
        .m_axi_mem_arburst(s_axi_mem_arburst),
        .m_axi_mem_arcache(s_axi_mem_arcache),
        .m_axi_mem_arlen(s_axi_mem_arlen),
        .m_axi_mem_arprot(s_axi_mem_arprot),
        .m_axi_mem_arready(s_axi_mem_arready),
        .m_axi_mem_arsize(s_axi_mem_arsize),
        .m_axi_mem_aruser(s_axi_mem_aruser),
        .m_axi_mem_arvalid(s_axi_mem_arvalid),
        .m_axi_mem_rdata(s_axi_mem_rdata),
        .m_axi_mem_rlast(s_axi_mem_rlast),
        .m_axi_mem_rready(s_axi_mem_rready),
        .m_axi_mem_rresp(s_axi_mem_rresp),
        .m_axi_mem_rvalid(s_axi_mem_rvalid),
        .reset(rst),
        .s_axi_reg_araddr(s_axi_reg_araddr),
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
        .vsm_vs_main_event_error(vsm_vs_main_event_error),
        .vsm_vs_main_hw_triggers(vsm_vs_main_hw_triggers),
        .vsm_vs_main_m_axis_status_tdata(vsm_vs_main_m_axis_status_tdata),
        .vsm_vs_main_m_axis_status_tvalid(vsm_vs_main_m_axis_status_tvalid),
        .vsm_vs_main_rm_decouple(vsm_vs_main_rm_decouple),
        .vsm_vs_main_rm_reset(vsm_vs_main_rm_reset),
        .vsm_vs_main_rm_shutdown_ack(vsm_vs_main_rm_shutdown_ack),
        .vsm_vs_main_rm_shutdown_req(vsm_vs_main_rm_shutdown_req),
        .vsm_vs_main_sw_shutdown_req(vsm_vs_main_sw_shutdown_req),
        .vsm_vs_main_sw_startup_req(vsm_vs_main_sw_startup_req)
  );

  // External Memory Controller
  wire [31:1]mem_a;
  wire [1:0]mem_ben;
  wire [0:0]mem_ce;
  wire [0:0]mem_cen;
  wire mem_cre;
  wire [15:0]mem_dq_i;
  wire [15:0]mem_dq_o;
  wire [15:0]mem_dq_t;
  wire [0:0]mem_oen;
  wire [1:0]mem_qwen;
  wire mem_rnw;
  wire mem_rpn;
  wire mem_wen;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) (* sigis = "Clk" *) wire rdclk;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) (* sigis = "Clk" *) wire s_axi_aclk;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) (* sigis = "Rst" *) wire s_axi_aresetn;
  wire [3:0]s_axi_mem_arid;
  wire [31:0]s_axi_mem_awaddr;
  wire [1:0]s_axi_mem_awburst;
  wire [3:0]s_axi_mem_awid;
  wire [7:0]s_axi_mem_awlen;
  wire s_axi_mem_awready;
  wire [2:0]s_axi_mem_awsize;
  wire s_axi_mem_awvalid;
  wire [3:0]s_axi_mem_bid;
  wire s_axi_mem_bready;
  wire [1:1]s_axi_mem_bresp;
  wire s_axi_mem_bvalid;
  wire [3:0]s_axi_mem_rid;
  wire [31:0]s_axi_mem_wdata;
  wire s_axi_mem_wlast;
  wire s_axi_mem_wready;
  wire [3:0]s_axi_mem_wstrb;
  wire s_axi_mem_wvalid;
  wire s_axi_reg_emc_awready;
  wire s_axi_reg_emc_bvalid;
  wire s_axi_reg_emc_rvalid;
  wire [31:0]s_axi_reg_emc_rdata;
  wire s_axi_reg_emc_arready;
  wire [31:0]s_axi_reg_emc_araddr;

  axi_em_ctrl axi_em_ctrl_1 (
        .mem_a(mem_a),
        .mem_ben(mem_ben),
        .mem_ce(mem_ce),
        .mem_cen(mem_cen),
        .mem_cre(mem_cre),
        .mem_dq_i(mem_dq_i),
        .mem_dq_o(mem_dq_o),
        .mem_dq_t(mem_dq_t),
        .mem_oen(mem_oen),
        .mem_qwen(mem_qwen),
        .mem_rnw(mem_rnw),
        .mem_rpn(mem_rpn),
        .mem_wen(mem_wen),
        .rdclk(rdclk),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_mem_araddr(s_axi_mem_araddr),
        .s_axi_mem_arburst(s_axi_mem_arburst),
        .s_axi_mem_arid(s_axi_mem_arid),
        .s_axi_mem_arlen(s_axi_mem_arlen),
        .s_axi_mem_arsize(s_axi_mem_arsize[1:0]),
        .s_axi_mem_arvalid(s_axi_mem_arvalid),
        .s_axi_mem_awaddr(s_axi_mem_awaddr),
        .s_axi_mem_awburst(s_axi_mem_awburst),
        .s_axi_mem_awid(s_axi_mem_awid),
        .s_axi_mem_awlen(s_axi_mem_awlen),
        .s_axi_mem_awready(s_axi_mem_awready),
        .s_axi_mem_awsize(s_axi_mem_awsize[1:0]),
        .s_axi_mem_awvalid(s_axi_mem_awvalid),
        .s_axi_mem_bid(s_axi_mem_bid),
        .s_axi_mem_bready(s_axi_mem_bready),
        .s_axi_mem_bresp(s_axi_mem_bresp ),
        .s_axi_mem_bvalid(s_axi_mem_bvalid),
        .s_axi_mem_rdata(s_axi_mem_rdata),
        .s_axi_mem_rid(s_axi_mem_rid),
        .s_axi_mem_rlast(s_axi_mem_rlast),
        .s_axi_mem_rready(s_axi_mem_rready),
        .s_axi_mem_rresp(s_axi_mem_rresp ),
        .s_axi_mem_rvalid(s_axi_mem_rvalid),
        .s_axi_mem_wdata(s_axi_mem_wdata),
        .s_axi_mem_wlast(s_axi_mem_wlast),
        .s_axi_mem_wready(s_axi_mem_wready),
        .s_axi_mem_wstrb(s_axi_mem_wstrb),
        .s_axi_mem_wvalid(s_axi_mem_wvalid),
        .s_axi_reg_araddr(s_axi_reg_emc_araddr[4:2]),
        .s_axi_reg_arready(s_axi_reg_emc_arready),
        .s_axi_reg_arvalid(s_axi_reg_arvalid),
        .s_axi_reg_awaddr(s_axi_reg_awaddr[4:2]),
        .s_axi_reg_awready(s_axi_reg_emc_awready),
        .s_axi_reg_awvalid(s_axi_reg_awvalid),
        .s_axi_reg_bready(s_axi_reg_bready),
        .s_axi_reg_bvalid(s_axi_reg_emc_bvalid),
        .s_axi_reg_rdata({s_axi_reg_emc_rdata [31:30],s_axi_reg_emc_rdata [6:0]}),
        .s_axi_reg_rready(s_axi_reg_rready),
        .s_axi_reg_rvalid(s_axi_reg_emc_rvalid),
        .s_axi_reg_wdata({s_axi_reg_wdata[31:30],s_axi_reg_wdata[6:0]}),
        .s_axi_reg_wvalid(s_axi_reg_wvalid)
  );

  // PRD 
  wire decouple_status;
  wire [31:0]m_axis_status_tdata;
  wire m_axis_status_tvalid;
  wire rp_add_decouple_status;
  wire rp_comp_decouple_status;
  wire rp_dec_decouple_status;
  wire rp_div_decouple_status;
  wire rp_inc_decouple_status;
  wire rp_mod_decouple_status;
  wire rp_mul_decouple_status;
  wire rp_mux_decouple_status;
  wire rp_reg_decouple_status;
  wire [31:0]rp_rp_add_TDATA;
  wire rp_rp_add_TLAST;
  wire rp_rp_add_TREADY;
  wire rp_rp_add_TVALID;
  wire [31:0]rp_rp_comp_TDATA;
  wire rp_rp_comp_TLAST;
  wire rp_rp_comp_TREADY;
  wire rp_rp_comp_TVALID;
  wire [31:0]rp_rp_dec_TDATA;
  wire rp_rp_dec_TLAST;
  wire rp_rp_dec_TREADY;
  wire rp_rp_dec_TVALID;
  wire [31:0]rp_rp_div_TDATA;
  wire rp_rp_div_TLAST;
  wire rp_rp_div_TREADY;
  wire rp_rp_div_TVALID;
  wire [31:0]rp_rp_inc_TDATA;
  wire rp_rp_inc_TLAST;
  wire rp_rp_inc_TREADY;
  wire rp_rp_inc_TVALID;
  wire [31:0]rp_rp_mod_TDATA;
  wire rp_rp_mod_TLAST;
  wire rp_rp_mod_TREADY;
  wire rp_rp_mod_TVALID;
  wire [31:0]rp_rp_mul_TDATA;
  wire rp_rp_mul_TLAST;
  wire rp_rp_mul_TREADY;
  wire rp_rp_mul_TVALID;
  wire [31:0]rp_rp_mux_TDATA;
  wire rp_rp_mux_TLAST;
  wire rp_rp_mux_TREADY;
  wire rp_rp_mux_TVALID;
  wire [31:0]rp_rp_reg_TDATA;
  wire rp_rp_reg_TLAST;
  wire rp_rp_reg_TREADY;
  wire rp_rp_reg_TVALID;
  wire [31:0]rp_rp_shl_TDATA;
  wire rp_rp_shl_TLAST;
  wire rp_rp_shl_TREADY;
  wire rp_rp_shl_TVALID;
  wire [31:0]rp_rp_shr_TDATA;
  wire rp_rp_shr_TLAST;
  wire rp_rp_shr_TREADY;
  wire rp_rp_shr_TVALID;
  wire [31:0]rp_rp_sub_TDATA;
  wire rp_rp_sub_TLAST;
  wire rp_rp_sub_TREADY;
  wire rp_rp_sub_TVALID;
  wire rp_shl_decouple_status;
  wire rp_shr_decouple_status;
  wire rp_sub_decouple_status;
  wire s_axi_reg_aresetn;
  wire s_axis_ctrl_aresetn;
  wire [31:0]s_axis_ctrl_tdata;
  wire s_axis_ctrl_tready;
  wire s_axis_ctrl_tvalid;
  wire [31:0]s_rp_add_TDATA;
  wire s_rp_add_TLAST;
  wire s_rp_add_TREADY;
  wire s_rp_add_TVALID;
  wire [31:0]s_rp_comp_TDATA;
  wire s_rp_comp_TLAST;
  wire s_rp_comp_TREADY;
  wire s_rp_comp_TVALID;
  wire [31:0]s_rp_dec_TDATA;
  wire s_rp_dec_TLAST;
  wire s_rp_dec_TREADY;
  wire s_rp_dec_TVALID;
  wire [31:0]s_rp_div_TDATA;
  wire s_rp_div_TLAST;
  wire s_rp_div_TREADY;
  wire s_rp_div_TVALID;
  wire [31:0]s_rp_inc_TDATA;
  wire s_rp_inc_TLAST;
  wire s_rp_inc_TREADY;
  wire s_rp_inc_TVALID;
  wire [31:0]s_rp_mod_TDATA;
  wire s_rp_mod_TLAST;
  wire s_rp_mod_TREADY;
  wire s_rp_mod_TVALID;
  wire [31:0]s_rp_mul_TDATA;
  wire s_rp_mul_TLAST;
  wire s_rp_mul_TREADY;
  wire s_rp_mul_TVALID;
  wire [31:0]s_rp_mux_TDATA;
  wire s_rp_mux_TLAST;
  wire s_rp_mux_TREADY;
  wire s_rp_mux_TVALID;
  wire [31:0]s_rp_reg_TDATA;
  wire s_rp_reg_TLAST;
  wire s_rp_reg_TREADY;
  wire s_rp_reg_TVALID;
  wire [31:0]s_rp_shl_TDATA;
  wire s_rp_shl_TLAST;
  wire s_rp_shl_TREADY;
  wire s_rp_shl_TVALID;
  wire [31:0]s_rp_shr_TDATA;
  wire s_rp_shr_TLAST;
  wire s_rp_shr_TREADY;
  wire s_rp_shr_TVALID;
  wire [31:0]s_rp_sub_TDATA;
  wire s_rp_sub_TLAST;
  wire s_rp_sub_TREADY;
  wire s_rp_sub_TVALID;
  wire s_axi_reg_prd_awready;
  wire s_axi_reg_prd_bvalid;
  wire s_axi_reg_prd_rvalid;
  wire [31:0]s_axi_reg_prd_rdata;
  wire s_axi_reg_prd_arready;
  wire [1:0]s_axi_reg_prd_bresp;
  wire [1:0]s_axi_reg_rresp;
  wire s_axi_reg_prd_wready;

  prd prd_1 (
        .aclk(clk),
        .decouple(vsm_vs_main_rm_decouple),
        .decouple_status(decouple_status),
        .m_axis_status_tdata(m_axis_status_tdata),
        .m_axis_status_tvalid(m_axis_status_tvalid),
        .rp_add_decouple_status(rp_add_decouple_status),
        .rp_add_ref_clk(clk),
        .rp_comp_decouple_status(rp_comp_decouple_status),
        .rp_comp_ref_clk(clk),
        .rp_dec_decouple_status(rp_dec_decouple_status),
        .rp_dec_ref_clk(clk),
        .rp_div_decouple_status(rp_div_decouple_status),
        .rp_div_ref_clk(clk),
        .rp_inc_decouple_status(rp_inc_decouple_status),
        .rp_inc_ref_clk(clk),
        .rp_mod_decouple_status(rp_mod_decouple_status),
        .rp_mod_ref_clk(clk),
        .rp_mul_decouple_status(rp_mul_decouple_status),
        .rp_mul_ref_clk(clk),
        .rp_mux_decouple_status(rp_mux_decouple_status),
        .rp_mux_ref_clk(clk),
        .rp_reg_decouple_status(rp_reg_decouple_status),
        .rp_reg_ref_clk(clk),
        .rp_rp_add_TDATA(rp_rp_add_TDATA),
        .rp_rp_add_TLAST(rp_rp_add_TLAST),
        .rp_rp_add_TREADY(rp_rp_add_TREADY),
        .rp_rp_add_TVALID(rp_rp_add_TVALID),
        .rp_rp_comp_TDATA(rp_rp_comp_TDATA),
        .rp_rp_comp_TLAST(rp_rp_comp_TLAST),
        .rp_rp_comp_TREADY(rp_rp_comp_TREADY),
        .rp_rp_comp_TVALID(rp_rp_comp_TVALID),
        .rp_rp_dec_TDATA(rp_rp_dec_TDATA),
        .rp_rp_dec_TLAST(rp_rp_dec_TLAST),
        .rp_rp_dec_TREADY(rp_rp_dec_TREADY),
        .rp_rp_dec_TVALID(rp_rp_dec_TVALID),
        .rp_rp_div_TDATA(rp_rp_div_TDATA),
        .rp_rp_div_TLAST(rp_rp_div_TLAST),
        .rp_rp_div_TREADY(rp_rp_div_TREADY),
        .rp_rp_div_TVALID(rp_rp_div_TVALID),
        .rp_rp_inc_TDATA(rp_rp_inc_TDATA),
        .rp_rp_inc_TLAST(rp_rp_inc_TLAST),
        .rp_rp_inc_TREADY(rp_rp_inc_TREADY),
        .rp_rp_inc_TVALID(rp_rp_inc_TVALID),
        .rp_rp_mod_TDATA(rp_rp_mod_TDATA),
        .rp_rp_mod_TLAST(rp_rp_mod_TLAST),
        .rp_rp_mod_TREADY(rp_rp_mod_TREADY),
        .rp_rp_mod_TVALID(rp_rp_mod_TVALID),
        .rp_rp_mul_TDATA(rp_rp_mul_TDATA),
        .rp_rp_mul_TLAST(rp_rp_mul_TLAST),
        .rp_rp_mul_TREADY(rp_rp_mul_TREADY),
        .rp_rp_mul_TVALID(rp_rp_mul_TVALID),
        .rp_rp_mux_TDATA(rp_rp_mux_TDATA),
        .rp_rp_mux_TLAST(rp_rp_mux_TLAST),
        .rp_rp_mux_TREADY(rp_rp_mux_TREADY),
        .rp_rp_mux_TVALID(rp_rp_mux_TVALID),
        .rp_rp_reg_TDATA(rp_rp_reg_TDATA),
        .rp_rp_reg_TLAST(rp_rp_reg_TLAST),
        .rp_rp_reg_TREADY(rp_rp_reg_TREADY),
        .rp_rp_reg_TVALID(rp_rp_reg_TVALID),
        .rp_rp_shl_TDATA(rp_rp_shl_TDATA),
        .rp_rp_shl_TLAST(rp_rp_shl_TLAST),
        .rp_rp_shl_TREADY(rp_rp_shl_TREADY),
        .rp_rp_shl_TVALID(rp_rp_shl_TVALID),
        .rp_rp_shr_TDATA(rp_rp_shr_TDATA),
        .rp_rp_shr_TLAST(rp_rp_shr_TLAST),
        .rp_rp_shr_TREADY(rp_rp_shr_TREADY),
        .rp_rp_shr_TVALID(rp_rp_shr_TVALID),
        .rp_rp_sub_TDATA(rp_rp_sub_TDATA),
        .rp_rp_sub_TLAST(rp_rp_sub_TLAST),
        .rp_rp_sub_TREADY(rp_rp_sub_TREADY),
        .rp_rp_sub_TVALID(rp_rp_sub_TVALID),
        .rp_shl_decouple_status(rp_shl_decouple_status),
        .rp_shl_ref_clk(clk),
        .rp_shr_decouple_status(rp_shr_decouple_status),
        .rp_shr_ref_clk(clk),
        .rp_sub_decouple_status(rp_sub_decouple_status),
        .rp_sub_ref_clk(clk),
        .s_axi_reg_araddr(s_axi_reg_araddr),
        .s_axi_reg_aresetn(s_axi_reg_aresetn),
        .s_axi_reg_arready(s_axi_reg_prd_arready),
        .s_axi_reg_arvalid(s_axi_reg_arvalid),
        .s_axi_reg_awaddr(s_axi_reg_awaddr),
        .s_axi_reg_awready(s_axi_reg_prd_awready),
        .s_axi_reg_awvalid(s_axi_reg_awvalid),
        .s_axi_reg_bready(s_axi_reg_bready),
        .s_axi_reg_bresp(s_axi_reg_prd_bresp),
        .s_axi_reg_bvalid(s_axi_reg_prd_bvalid),
        .s_axi_reg_rdata(s_axi_reg_prd_rdata),
        .s_axi_reg_rready(s_axi_reg_rready),
        .s_axi_reg_rresp(s_axi_reg_prd_rresp),
        .s_axi_reg_rvalid(s_axi_reg_prd_rvalid),
        .s_axi_reg_wdata(s_axi_reg_wdata),
        .s_axi_reg_wready(s_axi_reg_prd_wready),
        .s_axi_reg_wvalid(s_axi_reg_wvalid),
        .s_axis_ctrl_aresetn(s_axis_ctrl_aresetn),
        .s_axis_ctrl_tdata(s_axis_ctrl_tdata),
        .s_axis_ctrl_tready(s_axis_ctrl_tready),
        .s_axis_ctrl_tvalid(s_axis_ctrl_tvalid),
        .s_rp_add_TDATA(s_rp_add_TDATA),
        .s_rp_add_TLAST(s_rp_add_TLAST),
        .s_rp_add_TREADY(s_rp_add_TREADY),
        .s_rp_add_TVALID(s_rp_add_TVALID),
        .s_rp_comp_TDATA(s_rp_comp_TDATA),
        .s_rp_comp_TLAST(s_rp_comp_TLAST),
        .s_rp_comp_TREADY(s_rp_comp_TREADY),
        .s_rp_comp_TVALID(s_rp_comp_TVALID),
        .s_rp_dec_TDATA(s_rp_dec_TDATA),
        .s_rp_dec_TLAST(s_rp_dec_TLAST),
        .s_rp_dec_TREADY(s_rp_dec_TREADY),
        .s_rp_dec_TVALID(s_rp_dec_TVALID),
        .s_rp_div_TDATA(s_rp_div_TDATA),
        .s_rp_div_TLAST(s_rp_div_TLAST),
        .s_rp_div_TREADY(s_rp_div_TREADY),
        .s_rp_div_TVALID(s_rp_div_TVALID),
        .s_rp_inc_TDATA(s_rp_inc_TDATA),
        .s_rp_inc_TLAST(s_rp_inc_TLAST),
        .s_rp_inc_TREADY(s_rp_inc_TREADY),
        .s_rp_inc_TVALID(s_rp_inc_TVALID),
        .s_rp_mod_TDATA(s_rp_mod_TDATA),
        .s_rp_mod_TLAST(s_rp_mod_TLAST),
        .s_rp_mod_TREADY(s_rp_mod_TREADY),
        .s_rp_mod_TVALID(s_rp_mod_TVALID),
        .s_rp_mul_TDATA(s_rp_mul_TDATA),
        .s_rp_mul_TLAST(s_rp_mul_TLAST),
        .s_rp_mul_TREADY(s_rp_mul_TREADY),
        .s_rp_mul_TVALID(s_rp_mul_TVALID),
        .s_rp_mux_TDATA(s_rp_mux_TDATA),
        .s_rp_mux_TLAST(s_rp_mux_TLAST),
        .s_rp_mux_TREADY(s_rp_mux_TREADY),
        .s_rp_mux_TVALID(s_rp_mux_TVALID),
        .s_rp_reg_TDATA(s_rp_reg_TDATA),
        .s_rp_reg_TLAST(s_rp_reg_TLAST),
        .s_rp_reg_TREADY(s_rp_reg_TREADY),
        .s_rp_reg_TVALID(s_rp_reg_TVALID),
        .s_rp_shl_TDATA(s_rp_shl_TDATA),
        .s_rp_shl_TLAST(s_rp_shl_TLAST),
        .s_rp_shl_TREADY(s_rp_shl_TREADY),
        .s_rp_shl_TVALID(s_rp_shl_TVALID),
        .s_rp_shr_TDATA(s_rp_shr_TDATA),
        .s_rp_shr_TLAST(s_rp_shr_TLAST),
        .s_rp_shr_TREADY(s_rp_shr_TREADY),
        .s_rp_shr_TVALID(s_rp_shr_TVALID),
        .s_rp_sub_TDATA(s_rp_sub_TDATA),
        .s_rp_sub_TLAST(s_rp_sub_TLAST),
        .s_rp_sub_TREADY(s_rp_sub_TREADY),
        .s_rp_sub_TVALID(s_rp_sub_TVALID)
  );

    wire [14:0]DDR_Addr;
  wire [2:0]DDR_BankAddr;
  wire DDR_CAS_n;
  wire DDR_CKE;
  wire DDR_CS_n;
  wire DDR_Clk;
  wire DDR_Clk_n;
  wire [3:0]DDR_DM;
  wire [31:0]DDR_DQ;
  wire [3:0]DDR_DQS;
  wire [3:0]DDR_DQS_n;
  wire DDR_DRSTB;
  wire DDR_ODT;
  wire DDR_RAS_n;
  wire DDR_VRN;
  wire DDR_VRP;
  wire DDR_WEB;
  wire DMA0_ACLK;
  wire DMA0_DAREADY;
  wire [1:0]DMA0_DATYPE;
  wire DMA0_DAVALID;
  wire DMA0_DRLAST;
  wire DMA0_DRREADY;
  wire [1:0]DMA0_DRTYPE;
  wire DMA0_DRVALID;
  wire [53:0]MIO;
  wire M_AXI_GP0_ACLK;
  wire [31:0]M_AXI_GP0_ARADDR;
  wire [1:0]M_AXI_GP0_ARBURST;
  wire [3:0]M_AXI_GP0_ARCACHE;
  wire [11:0]M_AXI_GP0_ARID;
  wire [3:0]M_AXI_GP0_ARLEN;
  wire [1:0]M_AXI_GP0_ARLOCK;
  wire [2:0]M_AXI_GP0_ARPROT;
  wire [3:0]M_AXI_GP0_ARQOS;
  wire M_AXI_GP0_ARREADY;
  wire [2:0]M_AXI_GP0_ARSIZE;
  wire M_AXI_GP0_ARVALID;
  wire [31:0]M_AXI_GP0_AWADDR;
  wire [1:0]M_AXI_GP0_AWBURST;
  wire [3:0]M_AXI_GP0_AWCACHE;
  wire [11:0]M_AXI_GP0_AWID;
  wire [3:0]M_AXI_GP0_AWLEN;
  wire [1:0]M_AXI_GP0_AWLOCK;
  wire [2:0]M_AXI_GP0_AWPROT;
  wire [3:0]M_AXI_GP0_AWQOS;
  wire M_AXI_GP0_AWREADY;
  wire [2:0]M_AXI_GP0_AWSIZE;
  wire M_AXI_GP0_AWVALID;
  wire [11:0]M_AXI_GP0_BID;
  wire M_AXI_GP0_BREADY;
  wire [1:0]M_AXI_GP0_BRESP;
  wire M_AXI_GP0_BVALID;
  wire [31:0]M_AXI_GP0_RDATA;
  wire [11:0]M_AXI_GP0_RID;
  wire M_AXI_GP0_RLAST;
  wire M_AXI_GP0_RREADY;
  wire [1:0]M_AXI_GP0_RRESP;
  wire M_AXI_GP0_RVALID;
  wire [31:0]M_AXI_GP0_WDATA;
  wire [11:0]M_AXI_GP0_WID;
  wire M_AXI_GP0_WLAST;
  wire M_AXI_GP0_WREADY;
  wire [3:0]M_AXI_GP0_WSTRB;
  wire M_AXI_GP0_WVALID;
  wire PS_CLK;
  wire PS_PORB;
  wire PS_SRSTB;
  wire FCLK_CLK0;
  wire FCLK_RESET0_N;

  processing_system7_0 processing_system7_0_1 (
    .DDR_Addr(DDR_Addr),
    .DDR_BankAddr(DDR_BankAddr),
    .DDR_CAS_n(DDR_CAS_n),
    .DDR_CKE(DDR_CKE),
    .DDR_CS_n(DDR_CS_n),
    .DDR_Clk(DDR_Clk),
    .DDR_Clk_n(DDR_Clk_n),
    .DDR_DM(DDR_DM),
    .DDR_DQ(DDR_DQ),
    .DDR_DQS(DDR_DQS),
    .DDR_DQS_n(DDR_DQS_n),
    .DDR_DRSTB(DDR_DRSTB),
    .DDR_ODT(DDR_ODT),
    .DDR_RAS_n(DDR_RAS_n),
    .DDR_VRN(DDR_VRN),
    .DDR_VRP(DDR_VRP),
    .DDR_WEB(DDR_WEB),
    .DMA0_ACLK(DMA0_ACLK),
    .DMA0_DAREADY(DMA0_DAREADY),
    .DMA0_DATYPE(DMA0_DATYPE),
    .DMA0_DAVALID(DMA0_DAVALID),
    .DMA0_DRLAST(DMA0_DRLAST),
    .DMA0_DRREADY(DMA0_DRREADY),
    .DMA0_DRTYPE(DMA0_DRTYPE),
    .DMA0_DRVALID(DMA0_DRVALID),
    .FCLK_CLK0(FCLK_CLK0),
    .FCLK_RESET0_N(FCLK_RESET0_N),
    .MIO(MIO),
    .M_AXI_GP0_ACLK(M_AXI_GP0_ACLK),
    .M_AXI_GP0_ARADDR(M_AXI_GP0_ARADDR),
    .M_AXI_GP0_ARBURST(M_AXI_GP0_ARBURST),
    .M_AXI_GP0_ARCACHE(M_AXI_GP0_ARCACHE),
    .M_AXI_GP0_ARID(M_AXI_GP0_ARID),
    .M_AXI_GP0_ARLEN(M_AXI_GP0_ARLEN),
    .M_AXI_GP0_ARLOCK(M_AXI_GP0_ARLOCK),
    .M_AXI_GP0_ARPROT(M_AXI_GP0_ARPROT),
    .M_AXI_GP0_ARQOS(M_AXI_GP0_ARQOS),
    .M_AXI_GP0_ARREADY(M_AXI_GP0_ARREADY),
    .M_AXI_GP0_ARSIZE(M_AXI_GP0_ARSIZE),
    .M_AXI_GP0_ARVALID(M_AXI_GP0_ARVALID),
    .M_AXI_GP0_AWADDR(M_AXI_GP0_AWADDR),
    .M_AXI_GP0_AWBURST(M_AXI_GP0_AWBURST),
    .M_AXI_GP0_AWCACHE(M_AXI_GP0_AWCACHE),
    .M_AXI_GP0_AWID(M_AXI_GP0_AWID),
    .M_AXI_GP0_AWLEN(M_AXI_GP0_AWLEN),
    .M_AXI_GP0_AWLOCK(M_AXI_GP0_AWLOCK),
    .M_AXI_GP0_AWPROT(M_AXI_GP0_AWPROT),
    .M_AXI_GP0_AWQOS(M_AXI_GP0_AWQOS),
    .M_AXI_GP0_AWREADY(M_AXI_GP0_AWREADY),
    .M_AXI_GP0_AWSIZE(M_AXI_GP0_AWSIZE),
    .M_AXI_GP0_AWVALID(M_AXI_GP0_AWVALID),
    .M_AXI_GP0_BID(M_AXI_GP0_BID),
    .M_AXI_GP0_BREADY(M_AXI_GP0_BREADY),
    .M_AXI_GP0_BRESP(M_AXI_GP0_BRESP),
    .M_AXI_GP0_BVALID(M_AXI_GP0_BVALID),
    .M_AXI_GP0_RDATA(M_AXI_GP0_RDATA),
    .M_AXI_GP0_RID(M_AXI_GP0_RID),
    .M_AXI_GP0_RLAST(M_AXI_GP0_RLAST),
    .M_AXI_GP0_RREADY(M_AXI_GP0_RREADY),
    .M_AXI_GP0_RRESP(M_AXI_GP0_RRESP),
    .M_AXI_GP0_RVALID(M_AXI_GP0_RVALID),
    .M_AXI_GP0_WDATA(M_AXI_GP0_WDATA),
    .M_AXI_GP0_WID(M_AXI_GP0_WID),
    .M_AXI_GP0_WLAST(M_AXI_GP0_WLAST),
    .M_AXI_GP0_WREADY(M_AXI_GP0_WREADY),
    .M_AXI_GP0_WSTRB(M_AXI_GP0_WSTRB),
    .M_AXI_GP0_WVALID(M_AXI_GP0_WVALID),
    .PS_CLK(PS_CLK),
    .PS_PORB(PS_PORB),
    .PS_SRSTB(PS_SRSTB)
  );
  
  // Declare wires for modules
  wire [DATAWIDTH-1:0] add_sum, div_quot, inc_d, dec_d, mod_rem;
  wire [DATAWIDTH-1:0] mul_prod, mux_d, reg_q, shl_d, shr_d, sub_diff; 

  // Instantiate modules
  ADD #(DATAWIDTH) add_1 (
    .a   (a),
    .b   (b),
    .sum (add_sum)
  );

  COMP #(DATAWIDTH) comp_1 (
    .a   (a),
    .b   (b),
    .gt  (comp_gt),
    .lt  (comp_lt),
    .eq  (comp_eq)
  );

  DEC #(DATAWIDTH) dec_1 (
    .a (a),
    .d (dec_d)
  );

  DIV #(DATAWIDTH) div_1 (
    .a     (a),
    .b     (b),
    .quot  (div_quot)
  );

  INC #(DATAWIDTH) inc_1 (
    .a (a),
    .d (inc_d)
  );

  MOD #(DATAWIDTH) mod_1 (
    .a   (a),
    .b   (b),
    .rem (mod_rem)
  );

  MUL #(DATAWIDTH) mul_1 (
    .a    (a),
    .b    (b),
    .prod (mul_prod)
  );

  MUX2x1 #(DATAWIDTH) mux_1 (
    .a    (a),
    .b    (b),
    .d    (d),
    .sel  (mux_sel)
  );

  REG #(DATAWIDTH) reg_1 (
    .d   (d),
    .q   (reg_q),
    .Clk (clk),
    .Rst (rst)
  );

  SHL #(DATAWIDTH) shl_1 (
    .a      (a),
    .sh_amt (shl_sh_amt),
    .d      (shl_d)
  );

  SHR #(DATAWIDTH) shr_1 (
    .a      (a),
    .sh_amt (shr_sh_amt),
    .d      (shr_d)
  );

  SUB #(DATAWIDTH) sub_1 (
    .a     (a),
    .b     (b),
    .diff  (sub_diff)
  );

  always @(a, b, op_sel) begin
    case (op_sel)
      0: out <= add_sum;
      1: out <= dec_d;
      2: out <= div_quot;
      3: out <= inc_d;
      4: out <= mod_rem;
      5: out <= mul_prod;
      6: out <= mux_d;
      7: out <= reg_q;
      8: out <= shl_d;
      9: out <= shr_d;
      10: out <= sub_diff;

      default: out <= 0;
    endcase
  end
    
endmodule

// Define blackbox modules here
module ADD #(parameter DATAWIDTH = 2) (
  input [DATAWIDTH-1:0] a,
  input [DATAWIDTH-1:0] b,
  output [DATAWIDTH-1:0] sum
); endmodule

module COMP #(parameter DATAWIDTH = 2) (
  input [DATAWIDTH-1:0] a,
  input [DATAWIDTH-1:0] b,
  output gt,
  output lt,
  output eq
); endmodule

module DEC #(parameter DATAWIDTH = 2) (
  input [DATAWIDTH-1:0] a,
  output [DATAWIDTH-1:0] d
); endmodule

module DIV #(parameter DATAWIDTH = 2) (
  input [DATAWIDTH-1:0] a,
  input [DATAWIDTH-1:0] b,
  output [DATAWIDTH-1:0] quot
); endmodule

module INC #(parameter DATAWIDTH = 2) (
  input [DATAWIDTH-1:0] a,
  output [DATAWIDTH-1:0] d
); endmodule

module MOD #(parameter DATAWIDTH = 2) (
  input [DATAWIDTH-1:0] a,
  input [DATAWIDTH-1:0] b,
  output [DATAWIDTH-1:0] rem
); endmodule

module MUL #(parameter DATAWIDTH = 2) (
  input [DATAWIDTH-1:0] a,
  input [DATAWIDTH-1:0] b,
  output [DATAWIDTH-1:0] prod
); endmodule

module MUX2x1 #(parameter DATAWIDTH = 2) (
  input [DATAWIDTH-1:0] a,
  input [DATAWIDTH-1:0] b,
  output [DATAWIDTH-1:0] d,
  input sel
); endmodule

module REG #(parameter DATAWIDTH = 2) (
  input [DATAWIDTH-1:0] d,
  output [DATAWIDTH-1:0] q,
  input Clk,
  input Rst
); endmodule

module SHL #(parameter DATAWIDTH = 2) (
  input [DATAWIDTH-1:0] a,
  input [DATAWIDTH-1:0] sh_amt,
  output [DATAWIDTH-1:0] d
); endmodule

module SHR #(parameter DATAWIDTH = 2) (
  input [DATAWIDTH-1:0] a,
  input [DATAWIDTH-1:0] sh_amt,
  output [DATAWIDTH-1:0] d
); endmodule

module SUB #(parameter DATAWIDTH = 2) (
  input [DATAWIDTH-1:0] a,
  input [DATAWIDTH-1:0] b,
  output [DATAWIDTH-1:0] diff
); endmodule


