# 2-to-4 Decoder using Verilog

## Overview

This project implements a **2-to-4 Decoder** using Verilog HDL.

A decoder converts an n-bit binary input into one of 2ⁿ output lines. This implementation includes an Enable (EN) input.

---

## Truth Table

| EN | A1 | A0 | Y3 Y2 Y1 Y0 |
|----|----|----|-------------|
| 0  | X  | X  | 0000 |
| 1  | 0  | 0  | 0001 |
| 1  | 0  | 1  | 0010 |
| 1  | 1  | 0  | 0100 |
| 1  | 1  | 1  | 1000 |

---

## Project Files

- decoder2x4.v — Verilog design
- decoder2x4_tb.v — Testbench
- simulation.png — Simulation waveform
- README.md — Project documentation

---

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- ModelSim (optional)
- Xilinx Vivado (optional)

---

## How to Simulate

### Using Icarus Verilog

Compile:

```bash
iverilog -o decoder decoder2x4.v decoder2x4_tb.v
```

Run:

```bash
vvp decoder
```

(Optional) Generate waveform:

```verilog
$dumpfile("decoder.vcd");
$dumpvars(0, decoder2x4_tb);
```

View waveform:

```bash
gtkwave decoder.vcd
```

---

## Expected Output

```
EN=0 A=00 -> Y=0000
EN=1 A=00 -> Y=0001
EN=1 A=01 -> Y=0010
EN=1 A=10 -> Y=0100
EN=1 A=11 -> Y=1000
EN=0 A=11 -> Y=0000
```

---

## Applications

- Memory Address Decoding
- Instruction Decoding
- Digital Logic Systems
- Data Routing
- Control Units

---

## Author

Your Name
