`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2023 11:08:40
// Design Name: 
// Module Name: rf_riscv
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


module rf_riscv(
    input   clk,
    input   WE,
    
    input   [4:0]A1,
    input   [4:0]A2,
    input   [4:0]A3,
    
    input   [31:0]WD3,
    output  [31:0]RD1,
    output  [31:0]RD2
    );
    
    reg [31:0]reg_rf_riscv[0:31];
    
    always @(posedge clk) begin
        if (WE) begin
           reg_rf_riscv[A3] <= WD3;
        end
    end
    
    assign RD1 = (A1==0) ? 0 : reg_rf_riscv[A1];
    assign RD2 = (A2==0) ? 0 : reg_rf_riscv[A2];
endmodule
