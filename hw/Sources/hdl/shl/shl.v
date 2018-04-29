`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Arizona
// Engineer: David Akre
// 
// Create Date: 09/09/2017 12:52:38 PM
// Design Name: SHL module
// Module Name: SHL
// Project Name: Assignment 1
// Target Devices: Artix 7
// Tool Versions: 
// Description: SHL procedural module (logical shift right)
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module SHL(a, sh_amt, d);
    // Parameter DATAWIDTH that describes the number of bits for the input a
    // and the output q
    parameter DATAWIDTH = 32;
    
    // Input and output declarations for the register module
    input [DATAWIDTH-1:0] a, sh_amt;
    output reg [DATAWIDTH-1:0] d;
    
    // Start the procedural code using an always block that is sensative
    // to the inputs "a" or "sh_amt"
    // NOTE: Assuming to fill with zeros after shifitng
    always @(a, sh_amt) begin
    
        d <= a << sh_amt;    
          
    end
    
endmodule
