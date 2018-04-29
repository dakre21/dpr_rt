`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Arizona
// Engineer: David Akre
// 
// Create Date: 09/09/2017 12:52:38 PM
// Design Name: DIVIDER module
// Module Name: DIV
// Project Name: Assignment 1
// Target Devices: Artix 7
// Tool Versions: 
// Description: DIVIDER procedural module (note ignoring overflow right now)
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module DIV(a, b, quot);
    // Parameter DATAWIDTH that describes the number of bits for the input a
    // and the output q
    parameter DATAWIDTH = 32;
    
    // Input and output declarations for the register module
    input [DATAWIDTH-1:0] a, b;
    output reg [DATAWIDTH-1:0] quot;
    
    // Start the procedural code using an always block that is sensative
    // to the inputs "a" and "b"
    always @(a, b) begin
        quot <= a / b;
    end
    
endmodule
