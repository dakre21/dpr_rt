`timescale 1ns / 1ps

// Author: David Akre
// Title: DPR

module top (
  input clk_in,
  input rst_in
);

  // Initialize wires and assign them to inputs
  wire rst, clk;
  assign rst = rst_in;
  assign clk = clk_in;

  // Initialize accessory wires for RMs
  // Blob Merge
  wire bmWriteFifoEmpty, bmWriteFifoRequest;
  wire [127:0] bmWriteFifoData;
  wire bmReadFifoFull, bmReadRequest;
  wire [75:0] bmReadBlobData;
  wire [10:0] bmAvgSizeXaxis;
  wire [10:0] bmAvgSizeYaxis;

  // Diffeq
  wire [31:0] dqXoutport;
  wire [31:0] dqYoutport;
  wire [31:0] dqUoutport;
  wire [31:0] dqAport;
  wire [31:0] dqDXport;
  wire [31:0] dqXinport;
  wire [31:0] dqYinport;
  wire [31:0] dqUinport;

  wire [31:0] dqaport;
  wire [31:0] dqdxport;
  wire [31:0] dqxport;
  wire [31:0] dqyport;
  wire [31:0] dquport;

  // Sha
  wire [31:0] sha_text_i;
  wire [31:0] sha_text_o;
  wire [2:0]  sha_cmd_o;
  wire [3:0]  sha_cmd_i;
  wire sha_cmd_w_i;

  // Instantiate black box modules here
  // Blob merge
  RLE_BlobMerging bm (
    .clk              (clk),
    .iReset           (rst),
    .iReadFifoEmpty   (bmWriteFifoEmpty),
    .iReadFifoData    (bmWriteFifoRequest),
    .iWriteFifoFull   (bmReadFifoFull),
    .oReadFifoRequest (bmReadRequest),
    .oWriteBlobData   (bmReadBlobData),
    .oWriteRequest    (bmReadRequest),
    .oAvgSizeXaxis    (bmAvgSizeXaxis),
    .oAvgSizeYaxis    (bmAvgSizeYaxis)
  );

  // Diffeq
  diffeq_paj_convert dq1 (
    .Xinport  (dqXoutport),
    .Yinport  (dqYoutport),
    .Uinport  (dqUoutport),
    .Aport    (dqAport),
    .DXport   (dqDXport),
    .Xoutport (dqXinport),
    .Youtport (dqYoutport),
    .Uoutport (dqUoutport),
    .clk      (clk),
    .reset    (rst)
  );

  diffeq_f_systemC dq2 (
    .aport  (dqaport),
    .dxport (dqdxport),
    .xport  (dqxport),
    .yport  (dqyport),
    .uport  (dquport),
    .clk    (clk),
    .reset  (rst)
  );

  // Sha
  sha1 sha (
    .clk_i   (clk),
    .rst_i   (rst),
    .text_i  (sha_text_o),
    .text_o  (sha_text_i),
    .cmd_i   (sha_text_o),
    .cmd_w_i (sha_text_w_i),
    .cmd_o   (sha_text_i)
  );

  // Main
  //always @(posedge clk)
    // Do something - maybe toggle LED or something here

endmodule

// Define blackbox modules here
// Blob Merge
module RLE_BlobMerging (
  input clk,
  input iReset,
  input iReadFifoEmpty,
  input [127:0] iReadFifoData,
  output iWriteFifoFull,		
  input oReadFifoRequest,
  output [75:0] oWriteBlobData, 
  output oWriteRequest,		
  output [10:0] oAvgSizeXaxis, 
  output [10:0 ]oAvgSizeYaxis
); endmodule

// Diffeq
module diffeq_paj_convert (
  input [31:0] Xinport,
  input [31:0] Yinport,
  input [31:0] Uinport,
  input [31:0] Aport,
  input [31:0] DXport,
  output [31:0] Xoutport,
  output [31:0] Youtport,
  output [31:0] Uoutport,
  input clk,
  input reset
); endmodule

module diffeq_f_systemC (
  input [31:0] aport,
  input [31:0] dxport,
  output [31:0] xport,
  output [31:0] yport,
  output [31:0] uport,
  input clk,
  input reset
); endmodule

// Sha
module sha1 (
  input clk_i,
  input rst_i,
  input [31:0] text_i,
  output [31:0] text_o,
  input [2:0] cmd_i,
  input cmd_w_i,
  output [3:0] cmd_o
); endmodule


