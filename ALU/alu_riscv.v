`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2023 10:09:51
// Design Name: 
// Module Name: alu_riscv
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

`include "defines_riscv.v"
    
    
module alu_riscv(
    input[31:0] A,
    input[31:0] B,
    input[4:0] ALUOp,

    output reg Flag,
    output reg[31:0] Result
    );

    always @(*) begin
        case (ALUOp)
            `ALU_ADD :
                begin
                    Result = A + B;
                    Flag = 1'b0;
                end
            `ALU_SUB :
                begin
                    Result = A - B;
                    Flag = 1'b0;
                end
            `ALU_SLL :
                begin
                    Result = A << B;
                    Flag = 1'b0;
                end
            `ALU_SLTS :
                begin
                    Result = $signed(A) < $signed(B);
                    Flag = 1'b00;
                end
            `ALU_SLTU :
                begin
                    Result = A < B;
                    Flag = 1'b0;
                end
            `ALU_XOR :
                begin
                    Result = A ^ B;
                    Flag = 1'b0;
                end
            `ALU_SRL :
                begin
                    Result = A >> B;
                    Flag = 1'b0;
                end
            `ALU_SRA :
                begin
                    Result = $signed(A) >>> B;
                    Flag = 1'b00;
                end
            `ALU_OR :
                begin
                    Result = A | B;
                    Flag = 1'b0;
                end
            `ALU_AND :
                begin
                    Result = A & B;
                    Flag = 1'b0;
                end
            `ALU_EQ :
                begin
                    Result = 0;
                    Flag = (A == B);
                end
            `ALU_NE :
                begin
                    Result = 0;
                    Flag = (A != B);
                end
            `ALU_LTS :
                begin
                    Result = 0;
                    Flag = $signed(A < B);
                end
            `ALU_GES :
                begin
                    Result = 0;
                    Flag = $signed(A) >= $signed(B); 
                end
            `ALU_LTU :
                begin
                    Result = 0;
                    Flag = A < B;
                end
            `ALU_GEU :
                begin
                    Result = 0;
                    Flag = A >= B;
                end
            default: 
                begin
                    Result = 0;
                    Flag = 1'b0;
                end
        endcase
     end
endmodule
