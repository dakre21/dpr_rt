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
  parameter DATAWIDTH = 16;
  parameter STATICWIDTH = 32;
  input clk, rst, mux_sel;
  input [4:0] op_sel;
  input [DATAWIDTH-1:0] a, b;
  output comp_lt, comp_gt, comp_eq;
  output reg [DATAWIDTH-1:0] out;

  // Initialize IP inputs and outputs
  input [STATICWIDTH-1:0] icap_i;
  output [STATICWIDTH-1:0] icap_o;

  // Reset wires
  reg icap_reset_int;
  input icap_reset;

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

  always @(a, b, op_sel, icap_reset) begin
    if (icap_reset == 0'b1) begin
      out <= 0;
    end else begin
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
  end
    
endmodule

// Define blackbox modules here
module ADD #(parameter DATAWIDTH = 16) (
  input [DATAWIDTH-1:0] a,
  input [DATAWIDTH-1:0] b,
  output [DATAWIDTH-1:0] sum
); endmodule

module COMP #(parameter DATAWIDTH = 16) (
  input [DATAWIDTH-1:0] a,
  input [DATAWIDTH-1:0] b,
  output gt,
  output lt,
  output eq
); endmodule

module DEC #(parameter DATAWIDTH = 16) (
  input [DATAWIDTH-1:0] a,
  output [DATAWIDTH-1:0] d
); endmodule

module DIV #(parameter DATAWIDTH = 16) (
  input [DATAWIDTH-1:0] a,
  input [DATAWIDTH-1:0] b,
  output [DATAWIDTH-1:0] quot
); endmodule

module INC #(parameter DATAWIDTH = 16) (
  input [DATAWIDTH-1:0] a,
  output [DATAWIDTH-1:0] d
); endmodule

module MOD #(parameter DATAWIDTH = 16) (
  input [DATAWIDTH-1:0] a,
  input [DATAWIDTH-1:0] b,
  output [DATAWIDTH-1:0] rem
); endmodule

module MUL #(parameter DATAWIDTH = 16) (
  input [DATAWIDTH-1:0] a,
  input [DATAWIDTH-1:0] b,
  output [DATAWIDTH-1:0] prod
); endmodule

module MUX2x1 #(parameter DATAWIDTH = 16) (
  input [DATAWIDTH-1:0] a,
  input [DATAWIDTH-1:0] b,
  output [DATAWIDTH-1:0] d,
  input sel
); endmodule

module REG #(parameter DATAWIDTH = 16) (
  input [DATAWIDTH-1:0] d,
  output [DATAWIDTH-1:0] q,
  input Clk,
  input Rst
); endmodule

module SHL #(parameter DATAWIDTH = 16) (
  input [DATAWIDTH-1:0] a,
  input [DATAWIDTH-1:0] sh_amt,
  output [DATAWIDTH-1:0] d
); endmodule

module SHR #(parameter DATAWIDTH = 16) (
  input [DATAWIDTH-1:0] a,
  input [DATAWIDTH-1:0] sh_amt,
  output [DATAWIDTH-1:0] d
); endmodule

module SUB #(parameter DATAWIDTH = 16) (
  input [DATAWIDTH-1:0] a,
  input [DATAWIDTH-1:0] b,
  output [DATAWIDTH-1:0] diff
); endmodule


