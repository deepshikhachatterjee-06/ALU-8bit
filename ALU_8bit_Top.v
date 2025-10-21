`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2025 15:16:08
// Design Name: 
// Module Name: ALU_8bit_Top
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


module ALU_8bit_Top(
    input clk, 
    input [7:0] SW,   
    input [3:0] BTN,
    output [7:0] LED,
    output CARRY_LED
    );
   
       wire [7:0] A = SW[7:4];   
       wire [7:0] B = SW[3:0]; 
       wire [7:0] ALU_Out_wire;
       wire CarryOut_wire;
       reg [7:0] ALU_Out_reg;
       reg  CarryOut_reg;
  
   
       ALU_8bit uut (
           .A(A),
           .B(B),
           .ALU_Sel(BTN),
           .clk(clk),
           .ALU_Out(ALU_Out_wire),
           .CarryOut(CarryOut_wire)
       );
    always @(posedge clk) begin 
       ALU_Out_reg   <= ALU_Out_wire;
       CarryOut_reg  <= CarryOut_wire;
    end
        assign LED = ALU_Out_reg;
        assign CARRY_LED = CarryOut_reg;

endmodule
