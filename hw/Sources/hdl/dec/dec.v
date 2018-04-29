`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Arizona
// Engineer: David Akre
// 
// Create Date: 09/09/2017 12:52:38 PM
// Design Name: DECREMENTER module
// Module Name: DEC
// Project Name: Assignment 1
// Target Devices: Artix 7
// Tool Versions: 
// Description: DECREMENTER procedural module (note ignoring overflow right now)
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module DEC(a, d);
    // Parameter DATAWIDTH that describes the number of bits for the input a
    // and the output q
    parameter DATAWIDTH = 16;
    
    
    // Input and output declarations for the register module
    input [DATAWIDTH-1:0] a;
    output reg [DATAWIDTH-1:0] d;
    
    // Start the procedural code using an always block that is sensative
    // to the inputs "a" 
    always @(a) begin
        d <= a - 1;
    end
    
endmodule
