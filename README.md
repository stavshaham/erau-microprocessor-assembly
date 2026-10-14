# ERAU Prescott - Microprocessor Systems Lectures (Assembly)

This repository contains assembly language programs and lecture assignments developed for the **Microprocessor Systems** course at **Embry-Riddle Aeronautical University, Prescott**. 

The projects focus on low-level programming, memory-mapped data handling, iterative loops, arithmetic operations, and bit manipulation in assembly.

---

## 🛠️ Tech Stack & Architecture

* **Language:** ARM Assembly
* **Development Environment:** IAR Embedded Workbench / Simulator
* **Architecture:** ARM Cortex-M4

---

## 📁 Repository Structure

```text
.
├── array-sum.s/          # Array traversal and element summation
├── factorial.s/          # Factorial calculation in memory
├── fibonacci.s/          # Fibonacci series generation up to n
└── array-average.s/      # Array averaging using loops and bit shift division
```

## 🔬 Project Overviews

### 1. Array Sum Calculator
* **Objective:** Calculate the sum of all elements in a given array and store the result in memory.
* **Key Concepts:** Memory addressing, register initialization, and implementing loops to traverse array positions.

### 2. Factorial Calculator ($n!$)
* **Objective:** Compute the factorial of a given integer $n$ and store the result in memory.
* **Key Concepts:** Iterative multiplication routines, register preservation, and handling growing data sizes in memory.

### 3. Fibonacci Series Generator
* **Objective:** Generate the Fibonacci series values up to $n$ and store the sequence sequentially in memory.
* **Key Concepts:** State management, iterative addition of preceding terms, and sequential memory storage.

### 4. Array Average Calculator
* **Objective:** Calculate the average of an 8-element array `a` stored in memory, and save the result at the `avg` memory location.
* **Key Concepts:** Branching for loop control, accumulation, and utilizing arithmetic shift operations for efficient division by powers of 2.

## 🚀 Getting Started

1. Open the project workspace in **CPUlator**.
2. Choose **ARMv7 --> ARMv7 generic**.
3. Build the assembly source file to compile and check for syntax or addressing errors.
4. Run the simulator to step through register changes and verify memory contents.

---

## 👤 Author

* **Stav Shaham**
* Software Engineering | Embry-Riddle Aeronautical University, Prescott (Class of 2028)
