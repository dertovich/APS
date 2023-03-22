`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2023 09:53:14
// Design Name: 
// Module Name: data_mem
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


module data_mem(
    input   clk,
    input   WE,
    input   [31:0]addr,
    input   [31:0]write_data,
    
    output  [31:0]read_data 
    );
    
    reg [7:0]reg_data_mem[0:1023];
    
    always @(posedge clk) begin
        if(WE) begin
            {reg_data_mem[addr + 3], reg_data_mem[addr + 2], reg_data_mem[addr + 1], reg_data_mem[addr]} <= write_data;
        end
    end
    
    assign read_data = {reg_data_mem[addr + 3], reg_data_mem[addr + 2], reg_data_mem[addr + 1], reg_data_mem[addr]};
endmodule
