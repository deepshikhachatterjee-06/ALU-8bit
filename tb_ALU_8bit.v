`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2025 11:44:34
// Design Name: 
// Module Name: tb_ALU_8bit
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


`timescale 1ns / 1ps

module tb_ALU_8bit();
    reg [7:0] A, B;
    reg [3:0] ALU_Sel;
    wire [7:0] ALU_Out;
    wire CarryOut;

    // Instantiate DUT (Device Under Test)
    ALU_8bit uut (
        .A(A),
        .B(B),
        .ALU_Sel(ALU_Sel),
        .ALU_Out(ALU_Out),
        .CarryOut(CarryOut)
    );

    initial begin
    $monitor($time," A=%b, B=%b, ALU_Sel=%b, ALU_Out=%b, CarryOut=%b",
              A, B, ALU_Sel, ALU_Out, CarryOut);
              A = 8'h0A; B = 8'h02; ALU_Sel = 4'b0000; #10; // ADD
                      ALU_Sel = 4'b0001; #10; // SUB
                      ALU_Sel = 4'b0010; #10; // AND
                      ALU_Sel = 4'b0011; #10; // OR
                      ALU_Sel = 4'b0100; #10; // XOR
                      ALU_Sel = 4'b0101; #10; // NOT
                      ALU_Sel = 4'b0110; #10; // Left Shift
                      ALU_Sel = 4'b0111; #10; // Right Shift
                      ALU_Sel = 4'b1000; #10; // Less than
                      ALU_Sel = 4'b1001; #10; // Equal
                $finish;
    end
endmodule
