# LBYARCH MCO2
# Pokemon Effectiveness Calculator
### Created by:
- Homsi, Yazan
- Ramos, Aebrahm

## Overview

The Pokemon Effectiveness Calculator is a program designed to compute the effectiveness of Pokemon attacks based on their types. This calculator evaluates how well an attacker's Pokemon types fare against the defender's Pokemon types by using a predefined effectiveness table. The program is implemented in assembly language, demonstrating a low-level approach to solving this problem.

## Features

- **Type Effectiveness Calculation**: Computes the effectiveness of attacks based on the attacker's and defender's types.
- **Debugging Output**: Provides detailed debug prints for intermediate values, including individual and combined effectiveness metrics.
- **Handling Multiple Types**: Supports calculations for Pokemon with up to two types, adjusting effectiveness based on both types.

## How It Works

1. **Type Effectiveness Calculation**:
   - The program uses a lookup table to find effectiveness values based on the attacker’s and defender’s types.
   - It calculates effectiveness for various combinations of attacker and defender types, including:
     - Attacker’s Type1 vs Defender’s Type1
     - Attacker’s Type1 vs Defender’s Type2
     - Attacker’s Type2 vs Defender’s Type1
     - Attacker’s Type2 vs Defender’s Type2

2. **Debug Printing**:
   - Outputs intermediate effectiveness values and final results to aid in debugging and verification.

3. **Handling Type Combinations**:
   - If both Pokemon have two types, the program averages the effectiveness values for both types to provide a combined effectiveness score.
   - If only one type is present, it returns the effectiveness based on that single type.

4. **Final Effectiveness Calculation**:
   - Computes the final effectiveness value based on the presence of type advantages and averages if necessary.
   - Outputs the final effectiveness value for use in Pokemon battle simulations or other applications.

## Getting Started

To run this program, you need:

1. **RARS**: This program is developed using RARS, a RISC-V Assembler and Runtime Simulator. You can find it [here](https://github.com/TheThirdOne/rars).
2. **Java**: Make sure you have Java installed on your system as RARS requires it to run.

### Installation

1. **Download RARS**: Visit the [RARS GitHub repository](https://github.com/TheThirdOne/rars) and download the latest release.
2. **Install Java**: Ensure Java is installed. You can download it from [Oracle's official website](https://www.oracle.com/java/technologies/javase-downloads.html) or use a package manager suitable for your operating system.

### Usage

1. **Load the Program**: Open RARS and load the provided assembly code file into the simulator.
2. **Assemble the Code**: Use the "Assemble" button in RARS to compile the assembly code.
3. **Run the Simulation**: Execute the program to see the effectiveness calculations. Use the debug features in RARS to step through the code and observe the results.