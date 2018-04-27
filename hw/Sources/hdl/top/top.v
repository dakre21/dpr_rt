`timescale 1ns / 1ps

// Author: David Akre
// Title: DPR Top

module top (
  clk_in,
  rst_in,
  a,
  b,
  op_sel,
  in_mux_sel,
  comp_lt,
  comp_gt,
  comp_eq,
  out,
);
  // Initialize wires and assign them to inputs
  parameter DATAWIDTH = 2;
  parameter STATICWIDTH = 32;
  input clk_in, rst_in, in_mux_sel;
  input [4:0] op_sel;
  input [DATAWIDTH-1:0] a, b;
  output comp_lt, comp_gt, comp_eq;
  output reg [DATAWIDTH-1:0] out;

  // TODO etup static logic
  // PRC
  wire [STATICWIDTH:0] vs_main_hw_triggers;
  wire [STATICWIDTH:0] vs_main_axis_status;
  wire vs_main_rm_shutdown_req;
  wire vs_main_rm_decouple;
  wire vs_main_rm_reset;
  
  // Instantiate modules
  ADD #(DATAWIDTH) add_1 (
    .a   (add_a),
    .b   (add_b),
    .sum (add_sum)
  );

  COMP #(DATAWIDTH) comp_1 (
    .a   (comp_a),
    .b   (comp_b),
    .gt  (comp_gt),
    .lt  (comp_lt),
    .eq  (comp_eq)
  );

  DEC #(DATAWIDTH) dec_1 (
    .a (dec_a),
    .d (dec_d)
  );

  DIV #(DATAWIDTH) div_1 (
    .a     (div_a),
    .b     (div_b),
    .quot  (div_quot)
  );

  INC #(DATAWIDTH) inc_1 (
    .a (inc_a),
    .d (inc_d)
  );

  MOD #(DATAWIDTH) mod_1 (
    .a   (mod_a),
    .b   (mod_b),
    .rem (mod_rem)
  );

  MUL #(DATAWIDTH) mul_1 (
    .a    (mul_a),
    .b    (mul_b),
    .prod (mul_prod)
  );

  MUX2x1 #(DATAWIDTH) mux_1 (
    .a    (mux_a),
    .b    (mux_b),
    .d    (mux_d),
    .sel  (mux_sel)
  );

  REG #(DATAWIDTH) reg_1 (
    .d   (reg_d),
    .q   (reg_q),
    .Clk (clk),
    .Rst (rst)
  );

  SHL #(DATAWIDTH) shl_1 (
    .a      (shl_a),
    .sh_amt (shl_sh_amt),
    .d      (shl_d)
  );

  SHR #(DATAWIDTH) shr_1 (
    .a      (shr_a),
    .sh_amt (shr_sh_amt),
    .d      (shr_d)
  );

  SUB #(DATAWIDTH) sub_1 (
    .a     (sub_a),
    .b     (sub_b),
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


