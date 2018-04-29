`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Arizona
// Engineer: David Akre
// 
// Create Date: 09/09/2017 12:52:38 PM
// Design Name: ADDER module
// Module Name: ADD
// Project Name: Assignment 1
// Target Devices: Artix 7
// Tool Versions: 
// Description: COMPARATOR procedural module 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module COMP(a, b, gt, lt, eq);
    // Parameter DATAWIDTH that describes the number of bits for the input a
    // and the output q
    parameter DATAWIDTH = 32;
    
    // Input and output declarations for the register module
    input [DATAWIDTH-1:0] a, b;
    output reg gt, lt, eq;
    
    // Start the procedural code using an always block that is sensative
    // to the inputs "a" and "b"
    always @(a, b) begin
    
        // If a < b lt is set to 1
        // Else if a > b gt is set to 1
        // Otherwise eq is set to 1
        if (a < b) begin
            gt <= 0; lt <= 1; eq <= 0;
        end
        else if (a > b) begin
            gt <= 1; lt <= 0; eq <= 0;
        end
        else begin
            gt <= 0; lt <= 0; eq <= 1;
        end
          
    end
    
endmodule
