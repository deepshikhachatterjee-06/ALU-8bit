8-Bit ALU Implementation on Basys3 FPGA.
Overview  
This project builds an 8-bit Arithmetic Logic Unit (ALU) using Verilog HDL on the Basys3 FPGA board. The design supports arithmetic and logical operations. It showcases the entire FPGA design process, from simulation to hardware demonstration.  

Features  
Arithmetic Operations: Addition, Subtraction  
Logical Operations: AND, OR, XOR, NOT, Left shift, Right shift, Equality check  

Testbench Verification: This ensures all operations work correctly.  

FPGA Synthesis: Implemented on Basys3  

Real-Time Output: LEDs on the Basys3 show operation results  

Analysis Reports: Timing and power reports produced using Vivado  

Design Architecture  
Input: 8-bit operands, 3-bit opcode to select the operation  

Output: 8-bit results  

Implementation Steps  

1. Verilog Coding: Designed the ALU with combinational logic  
2. Simulation: Verified using a detailed testbench  
3. Synthesis: Done in Vivado for the Basys3 FPGA  
4. Reports: Generated timing and power reports  
