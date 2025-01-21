# Water Pump Control Program

This repository contains the solution for controlling a water pump using a PLC (Programmable Logic Controller) Tecomat TC 600, implemented in the Mosaic programming environment. The program fulfills multiple tasks based on the provided assignment, ensuring logical and optimized control of the water pump.

The project was developed by **[Skelen](https://github.com/skelen18/)**.

## Task Description

The goal of this project is to solve logical control problems related to water pump operations, including maintaining and draining water levels, creating logic based on personal information, and minimizing logical expressions.

### Requirements

1. **Control the water pump to maintain the water level between MIN and MAX in a tank.**  
2. **Control the water pump to drain water from a well.**  
3. **Create a logical task based on the student's name and surname, using vowels as `0` and consonants as `1`.**  
   - Generate a truth table, derive an algebraic expression, and write a maximal PLC program.  
   - Minimize the expression using a Karnaugh map and create a minimal PLC program.  
4. **Solve a logical task with four inputs, minimizing the expression using a Karnaugh map and implementing both maximal and minimal versions in the PLC program.**

### Task Outputs

The project is divided into four parts, each addressing one of the required functionalities:

- **[Part 1](part1.asm)**: Controls the water pump to maintain the water level within the defined range.
- **[Part 2](part2.asm)**: Controls the water pump to drain water from the well.
- **Part 3**: Implements a logical task based on personal information:
  - **[Part 3 - Maximal Expression](part3_long.asm)**: Full algebraic expression implemented as a PLC program.
  - **[Part 3 - Minimal Expression](part3_short.asm)**: Minimized algebraic expression implemented as a PLC program.
- **Part 4**: Solves a four-input logical task:
  - **[Part 4 - Maximal Expression](part4_long.asm)**: Full algebraic expression implemented as a PLC program.
  - **[Part 4 - Minimal Expression](part4_short.asm)**: Minimized algebraic expression implemented as a PLC program.

## Setup

Ensure you have the following tools and hardware to run this program:

- **PLC Tecomat TC 600**
- **Mosaic Programming Environment**
- **Simulation or physical model of the water pump system**

For setup instructions, refer to the [Tecomat documentation](https://www.tecomat.cz/ke-stazeni/software/mosaic/).

## Notes

- This program was created using the Mosaic environment for PLC programming and adheres to standard best practices.  
- Each part of the task is logically structured and includes comments for better understanding.  
- **Important**: You need to create your own Karnaugh sentence based on your name and surname in order to generate the correct logical expression for the PLC code.

## Conclusion

This project demonstrates logical control of a water pump system based on different conditions, algebraic expressions, and minimization techniques. The solution was developed to optimize pump operations using the Tecomat TC 600 system and Mosaic programming environment.
