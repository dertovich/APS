`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2023 10:21:06
// Design Name: 
// Module Name: fulladder32
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


module fulladder32(
    input [31:0]A,
    input [31:0]B,
    input Pin,
    
    output [31:0]S,
    output Pout
    );
    
    wire [7:0]P;
    
    fulladder4 f0(
        .A(A[3:0]),
        .B(B[3:0]),
        .Pin(Pin),
        
        .S(S[3:0]),
        .Pout(P[0])
    );
    
    fulladder4 f1(
        .A(A[7:4]),
        .B(B[7:4]),
        .Pin(P[0]),
        
        .S(S[7:4]),
        .Pout(P[1])
    );
    
    fulladder4 f2(
        .A(A[11:8]),
        .B(B[11:8]),
        .Pin(P[1]),
        
        .S(S[11:8]),
        .Pout(P[2])
    );
    
    fulladder4 f3(
        .A(A[15:12]),
        .B(B[15:12]),
        .Pin(P[2]),
        
        .S(S[15:12]),
        .Pout(P[3])
    );
    
    fulladder4 f4(
        .A(A[19:16]),
        .B(B[19:16]),
        .Pin(P[3]),
        
        .S(S[19:16]),
        .Pout(P[4])
    );
    
    fulladder4 f5(
        .A(A[23:20]),
        .B(B[23:20]),
        .Pin(P[4]),
        
        .S(S[23:20]),
        .Pout(P[5])
    );
    
    fulladder4 f6(
        .A(A[27:24]),
        .B(B[27:24]),
        .Pin(P[5]),
        
        .S(S[27:24]),
        .Pout(P[6])
    );
    
    fulladder4 f7(
        .A(A[31:28]),
        .B(B[31:28]),
        .Pin(P[6]),
        
        .S(S[31:28]),
        .Pout(Pout)
    );
    
endmodule
