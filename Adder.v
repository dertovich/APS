`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2023 09:19:54
// Design Name: 
// Module Name: Adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Adder(
    input a,
    input b,
    input s,
    
    output c,
    output d
    );
    
    wire ab;
    
    assign ab = a & b;
    assign c = ~ab;
    assign d = ab ^ c;
    
endmodule
