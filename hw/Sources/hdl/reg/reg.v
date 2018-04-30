`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Arizona
// Engineer: David Akre
// 
// Create Date: 09/09/2017 12:52:38 PM
// Design Name: Register module
// Module Name: REG
// Project Name: Assignment 1
// Target Devices: Artix 7
// Tool Versions: 
// Description: Register procedural module
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module REG(d, q, Clk, Rst);
    // Parameter DATAWIDTH that describes the number of bits for the input a
    // and the output q
    parameter DATAWIDTH = 8;
    
    // Input and output declarations for the register module
    input [DATAWIDTH-1:0] d;
    output reg [DATAWIDTH-1:0] q;
    input Clk, Rst;
    
    // Forward declaration of integer value to be used on reset
    integer i;
    
    // Start the procedural code using an always block that is sensative
    // to the clock input "Clk"
    always @(posedge Clk) begin
    
        // If the reset signal is set then reset the register
        // otherwise set the register to the input data
        if (Rst == 1)
            for(i = 0; i < DATAWIDTH-1; i = i + 1) 
                q[i] <= 1'b0;
        else
            q <= d;
            
    end               

endmodule
