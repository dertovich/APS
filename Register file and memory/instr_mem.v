`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2023 09:04:53
// Design Name: 
// Module Name: instr_mem
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


module instr_mem(
    input[31:0]     addr,
    output[31:0]    read_data
    );
    reg [7:0]reg_instr_mem [0:1023];
    initial $readmemh("program.txt", reg_instr_mem);
    
    assign read_data = {reg_instr_mem[addr + 3], reg_instr_mem[addr + 2], reg_instr_mem[addr + 1], reg_instr_mem[addr]};
    
endmodule
