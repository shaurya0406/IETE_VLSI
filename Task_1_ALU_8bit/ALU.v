`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2022 02:46:00
// Design Name: 
// Module Name: ALU
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

module ALU(
        input [7:0] a,b,
        output [7:0] ALU_Output_Port,
        output Carry_Bit,
        input [2:0] ALU_Select_Line
);

reg [7:0] ALU_Output;
wire [8:0] temp;
assign ALU_Output_Port = ALU_Output;

assign temp = {1'b0,a} + {1'b0,b};
assign Carry_Bit = temp[8];

always @(*)
    begin
        case(ALU_Select_Line)
            4'b000: 
                ALU_Output = a + b; 
            4'b001:
                ALU_Output = a - b;
            4'b010: 
                ALU_Output = a & b;
            4'b011: 
                ALU_Output = a | b;
            4'b100:  
                ALU_Output = a ^ b;
            4'b101: 
                ALU_Output = ~(a & b);
            4'b110: 
                ALU_Output = ~(a | b);
            4'b111: 
                ALU_Output = ~(a ^ b);
            default: 
                ALU_Output = a + b;
        endcase
    end
endmodule
