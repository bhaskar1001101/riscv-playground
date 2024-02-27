Read the [RISC-V ISA Manual](https://riscv.org/specifications/isa-spec-pdf/).

## 1. Introduction
The RISC-V ISA is a standard open architecture under the governance of the RISC-V Foundation. The RISC-V ISA was designed with small, fast, and low-power real-world implementations in mind, but without over-architecting for a particular microarchitecture style. The base (RV32I/64I/128I) integer ISA was designed to be a good clean base for other extensions, and the RISC-V Foundation has defined a number of standard extensions, including integer multiply/divide (M), atomic operations (A), single and double-precision floating-point (F and D), and many others. The RISC-V ISA is a classic RISC ISA, with 32 general-purpose registers (x1-x31) and a 32-bit (RV32I) or 64-bit (RV64I) address space. The ISA is designed to support extensive customization and specialization, and the base integer ISA is small and simple, providing a solid base for more specialized ISA extensions.

## 2. RISC-V Instruction Set
It supports the following types of instructions:
- R-type: Register-type instructions
- I-type: Immediate-type instructions
- S-type: Store-type instructions
- B-type: Branch-type instructions
- U-type: Upper immediate-type instructions
- J-type: Jump-type instructions
- RV32I/64I/128I: Base integer ISAs (Extensions of RISC-V ISA)

### Each instruction is 32-bit wide and is divided into the following fields:
- opcode: It specifies the operation to be performed.
- rd: It specifies the destination register.
- funct3: It specifies the function to be performed.
- rs1: It specifies the source register.
- rs2: It specifies the source register.
- funct7: It specifies the function to be performed.
- imm: It specifies the immediate value.

#### Example:
```assembly
add rd, rs1, rs2 ; funct7 = 0000000, rs2 = rs2, rs1 = rs1, funct3 = 000, rd = rd, opcode = 0110011
```

