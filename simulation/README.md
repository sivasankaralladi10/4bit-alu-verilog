# Simulation Results

The ALU testbench was simulated using the Xilinx Vivado simulator.

The testbench uses:

- A = `0101` (5)
- B = `0011` (3)

The following operations are tested:

| Select | Operation |
|---|---|
| 000 | Addition |
| 001 | Subtraction |
| 010 | AND |
| 011 | OR |
| 100 | XOR |
| 101 | NOT |
| 110 | Left Shift |
| 111 | Right Shift |

The simulation outputs were observed in the Vivado Tcl Console.
