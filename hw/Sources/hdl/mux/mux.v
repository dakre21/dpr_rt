`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Arizona
// Engineer: David Akre
// 
// Create Date: 09/09/2017 12:52:38 PM
// Design Name: MUX module
// Module Name: MUX
// Project Name: Assignment 1
// Target Devices: Artix 7
// Tool Versions: 
// Description: 2x1 MULTIPLEXER procedural module
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module MUX2x1(a, b, d, sel);
    // Parameter DATAWIDTH that describes the number of bits for the input a
    // and the output q
    parameter DATAWIDTH = 16;
    
    // Input and output declarations for the register module
    input [DATAWIDTH-1:0] a, b;
    input sel;
    output reg [DATAWIDTH-1:0] d;
    
    // Start the procedural code using an always block that is sensative
    // to the inputs "a" and "b" or the "sel" bit
    always @(a, b, sel) begin
    
        if (sel == 1'b0) begin
            d <= a;
        end
        else begin
            d <= b;
        end
          
    end
    
endmodule
