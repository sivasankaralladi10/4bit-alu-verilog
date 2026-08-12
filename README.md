## Project Overview

This project presents the design and verification of a 4-bit Arithmetic Logic Unit (ALU) using Verilog HDL. The ALU performs arithmetic and logical operations based on select inputs and includes a Carry Lookahead Adder (CLA) for efficient binary addition.

The design was implemented and functionally verified using Xilinx Vivado.

## Objective

The objective of this project is to design a compact 4-bit ALU capable of performing multiple arithmetic and logical operations, while implementing a Carry Lookahead Adder to improve carry propagation compared with a basic ripple-carry approach.

## Key Features

- 4-bit ALU design using Verilog HDL
- Arithmetic and logical operations
- Carry Lookahead Adder (CLA)
- Verilog testbench
- Functional simulation and verification
- Xilinx Vivado implementation
## Simulation Results

The ALU was simulated using the Xilinx Vivado simulator.

The testbench verifies the following operations:

- Addition
- Subtraction
- AND
- OR
- XOR
- NOT
- Left Shift
- Right Shift

Test inputs:

- A = `0101` (5)
- B = `0011` (3)

The simulation results were observed in the Vivado Tcl Console.
