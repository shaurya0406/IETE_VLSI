`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2022 03:33:56
// Design Name: 
// Module Name: ALU_tb
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
`timescale 1ns/1ps 

module ALU_tb();
reg[7:0] t_a, t_b;
reg[3:0] t_Select;
wire[7:0] t_Out;
wire t_Carry;

ALU dut(.a(t_a), .b(t_b), .ALU_Select_Line(t_Select), .ALU_Output_Port(t_Out), .Carry_Bit(t_Carry));

    initial begin
        t_a = 8'd10;
        t_b = 8'd20;
        t_Select = 3'h0;
    end
endmodule
