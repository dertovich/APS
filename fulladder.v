`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2023 10:39:12
// Design Name: 
// Module Name: fulladder
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


module fulladder(
    input a,
    input b,
    input Pin,
    
    output S,
    output P
    );
    
    wire ab;
    wire aPin;
    wire bPin;
    wire abPin;
    
    assign S =  Pin ^ (a ^ b);
    
    assign ab = a & b;
    assign aPin = a & Pin;
    assign bPin = b & Pin;
    assign abPin = ab | aPin;
    
    assign P = abPin | bPin;
    
endmodule
