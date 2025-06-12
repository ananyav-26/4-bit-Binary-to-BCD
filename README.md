This project implements a 4-bit Binary to BCD (Binary-Coded Decimal) converter using VHDL. It converts a 4-bit binary number (0–15) into its corresponding BCD format, which is commonly used for display on seven-segment displays.

## Overview
Binary-Coded Decimal (BCD) is a digital encoding method for decimal numbers in which each digit is represented by its own binary sequence. This converter takes a 4-bit binary input and produces an 8-bit BCD output — split into tens and units.

## Features
- Accepts a 4-bit binary input (values from 0 to 15).
- Outputs an 8-bit BCD code, with upper 4 bits: Tens place (0 or 1) and lower 4 bits: Units place (0–9).
- Ideal for driving digital displays via BCD decoders.

## Technologies Used
- VHDL – For RTL design
- Xilinx Vivado – For synthesis and simulation
- ModelSim – For waveform-based testing and verification

## Simulation
A VHDL testbench can be used to simulate various binary inputs and observe the corresponding BCD outputs. The design can also be integrated with display modules for FPGA implementations.
- RTL Schematic:
- Output Waveform: 
