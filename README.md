# CDA3102 - Computer Architecture

- [CDA3102 - Computer Architecture](#cda3102---computer-architecture)
  - [**Chaper 1: Computers and Abstract Tech**](#chaper-1-computers-and-abstract-tech)
    - [7 Great Ideas of Computer Architecture](#7-great-ideas-of-computer-architecture)
    - [Understanding Performance (Table)](#understanding-performance-table)
    - [Storage Sizes (Table)](#storage-sizes-table)
    - [Memory Hierarchy](#memory-hierarchy)
    - [Measuring Performance (Table)](#measuring-performance-table)
    - [**CPU Performance (Formula)**](#cpu-performance-formula)
    - [Power Consumption (Formula)](#power-consumption-formula)
  - [**Chapter 2: Instructions (MIPS)**](#chapter-2-instructions-mips)
    - [Instructions Set](#instructions-set)
    - [**MIPS Assembly Language**](#mips-assembly-language)
      - [Registers and Memory](#registers-and-memory)
      - [Arithmetic](#arithmetic)
      - [Data Transfer](#data-transfer)
      - [Logical](#logical)
      - [Conditional Branch](#conditional-branch)
      - [Unconditional Jump](#unconditional-jump)
    - [Words (32-Bit)](#words-32-bit)
    - [Loading from Memory (Base + Offset)](#loading-from-memory-base--offset)
    - [Alignment Restrictions (Memory)](#alignment-restrictions-memory)
    - [Immediate Operands](#immediate-operands)
    - [Binary Digits (Bits)](#binary-digits-bits)
    - [Overflow](#overflow)
    - [**Negative Numbers**](#negative-numbers)
      - [Sign and Magnitude](#sign-and-magnitude)
      - [**Two's Complement**](#twos-complement)
      - [Overflow (2's Complement)](#overflow-2s-complement)
    - [Hexadecimal (Table)](#hexadecimal-table)
    - [MIPS Fields](#mips-fields)
    - [**MIPS Fields (R vs. I)**](#mips-fields-r-vs-i)
    - [**MIPS Architecture (Table)**](#mips-architecture-table)
    - [**MIPS Logical Operators**](#mips-logical-operators)
    - [Bitwise Shifts (Multiplication/Division)](#bitwise-shifts-multiplicationdivision)
    - [Bitwise Masks (&)](#bitwise-masks-)
    - [Conditional Jump (beq and bne)](#conditional-jump-beq-and-bne)
    - [**While Loops**](#while-loops)
      - [While Loop](#while-loop)
      - [While Loop (Break/Continue)](#while-loop-breakcontinue)
      - [For Loop (Less than)](#for-loop-less-than)
      - [For Loop (Less than or Equal to)](#for-loop-less-than-or-equal-to)
    - [Signed vs. Unsigned Comparisons (Out-of-Bounds)](#signed-vs-unsigned-comparisons-out-of-bounds)
    - [Switch Case and Jump Tables (jr)](#switch-case-and-jump-tables-jr)
      - [Switch Case](#switch-case)
    - [**Procedures**](#procedures)
    - [Jump and Link, Return Address, Program Count](#jump-and-link-return-address-program-count)
    - [Stack](#stack)
    - [**Procedure (Example)**](#procedure-example)
    - [Nested Procedures](#nested-procedures)
    - [Nested Procedure (Example)](#nested-procedure-example)
    - [Global Pointer and Preserved Registers](#global-pointer-and-preserved-registers)
    - [Frame Pointer](#frame-pointer)
    - [**Allocating Data on the Heap**](#allocating-data-on-the-heap)
    - [**MIPS Register Conventions (Table)**](#mips-register-conventions-table)

## **Chaper 1: Computers and Abstract Tech**

### 7 Great Ideas of Computer Architecture

![7 Great Ideas of Computer Architecture](images/1.3%207%20Great%20Ideas%20in%20Computer%20Architecture.png)

### Understanding Performance (Table)

![Understanding Performance (Table)](<images/1.1%20Understanding%20Peformance%20(Table).png>)

### Storage Sizes (Table)

![Storage Sizes (Table)](<images/1.2%20Storage%20Sizes%20(Table).png>)

### Memory Hierarchy

![Memory Hierarchy](images/1.4%20Memory%20Hiearchy%20.png)

### Measuring Performance (Table)

![Measuring CPU Performance](<images/1.5%20CPU%20Performance%20(Table).png>)

### **CPU Performance (Formula)**

![CPU Performance Formula](images/1.6%20CPU%20Performance%20Formula.png)

### Power Consumption (Formula)

![Power Consumption (Formula)](<images/1.7%20Power%20Consumption%20(Formula).png>)

[Back to top](#cda3102---computer-architecture)

## **Chapter 2: Instructions (MIPS)**

### Instructions Set

![Instructions Sets](images/2.1%20Instruction%20Sets.png)

### **MIPS Assembly Language**

#### Registers and Memory

![MIPS Operands (Table)](images/2.2%20Basic%20MIPS%20Operands.png)

#### Arithmetic

![Arithmetic](images/2.3.1%20MIPS%20Arithmetic.png)

#### Data Transfer

![Data Tranfer](images/2.3.2%20MIPS%20Data%20Transfer.png)

#### Logical

![Logical](images/2.3.3%20MIPS%20Logical.png)

#### Conditional Branch

![Conditional Branch](images/2.3.4%20MIPS%20Conditional%20Branches.png)

#### Unconditional Jump

![Unconditional Jump](images/2.3.5%20MIPS%20Unconditional%20Jump.png)

[Back to top](#cda3102---computer-architecture)

### Words (32-Bit)

![Words (32-Bit)](<images/2.4 Words (32-Bit).png>)

### Loading from Memory (Base + Offset)

![Loading from Memory](images/2.6%20Loading%20From%20Memory%20.png)

### Alignment Restrictions (Memory)

![Alignment Restrictions (Memory)](images/2.7%20Alignment%20Restrictions.png)

### Immediate Operands

![Immediate Operands](images/2.8%20Immediate%20Operands.png)

### Binary Digits (Bits)

![Binary Digits (Bits)](<images/2.9%20Binary%20Digits%20(Bits).png>)

[Back to top](#cda3102---computer-architecture)

### Overflow

![Overflow](/images/2.10%20Overflow.png)

### **Negative Numbers**

#### Sign and Magnitude

![Sign and Magnitude](images/2.11.1%20Sign%20and%20Magnitude.png)

#### **Two's Complement**

![Two's Complement](images/2.11.2%20Two's%20Complement.png)

#### Overflow (2's Complement)

![Overflow](images/2.11.2.1%20Two's%20Complement%20Overflow.png)

[Back to top](#cda3102---computer-architecture)

### Hexadecimal (Table)

![Hexadecimal (Table)](<images/2.12%20Hexadecimal%20(Table).png>)

### MIPS Fields

![MIPS Fields](images/2.13%20MIPS%20Fields.png)

### **MIPS Fields (R vs. I)**

![MIPS Fields](images/2.13%20MIPS%20Fields.png)

### **MIPS Architecture (Table)**

![MIPS Architecture](images/2.14%20MIPS%20Architecture.png)

### **MIPS Logical Operators**

![MIPS Logical Operators](images/2.15%20MIPS%20Logical%20Operators.png)

[Back to top](#cda3102---computer-architecture)

### Bitwise Shifts (Multiplication/Division)

![Bitwise Shifts (Multiplication/Division)](images/2.16%20Bitwise%20Shifts.png)

### Bitwise Masks (&)

![Bitwise Masks (&)](<images/2.17%20Bit%20"Masks"%20(&).png>)

### Conditional Jump (beq and bne)

![Conditional Jump (beq and bneq)](images/2.18%20Conditional%20Jump.png)

### **While Loops**

![While loops](images/2.7%20While%20Loops.png)

#### While Loop

```c
// variable declarations...

while (i != j) {
    f = i + h;
    i = f + h;
}
```

```mips
# Assumptions:
# f is stored in $s0,
# g is stored in $s1
# h is stored in $s2
# i is stored in $s3
# j is stored in $s4

# START
Start: beq $s3, $s4, Exit          # i == j exit

add $s0, $s3, $s0                  # f = i + h
add $s3, $s0, $s2                  # i = f + h

j Start


Exit:
```

#### While Loop (Break/Continue)

```c
// variable declarations...

while (i != j) {
    f = i + h;
    i = f + h;

    if (f == j)
        continue

    if (f == i)
        break
}
```

```mips
# Assumptions:
# f is stored in $s0,
# g is stored in $s1
# h is stored in $s2
# i is stored in $s3
# j is stored in $s4

# START
Start: beq $s3, $s4, Exit          # i == j exit

add $s0, $s3, $s0                  # f = i + h
add $s3, $s0, $s2                  # i = f + h

beq $s0, $s4, Start                # f == j -> continue
beq $s0, $s3, Exit                 # f == i -> break

j Start


Exit:
```

#### For Loop (Less than)

```c
// variable declarations...

for (i = 0; i < j; i++) {
    g = i + j;
}
```

```mips
# Assumptions:
# f is stored in $s0
# g is stored in $s1
# h is stored in $s2
# i is stored in $s3
# j is stored in $s4

Start: add $s3, $zero, $zero          # i = 0

For: slt $t0, $s3, $s4 $t0            # (i < j) ? 1 : 0
beq $t0, $zero, Exit                  # i >= j -> exit

add $s1, $s3, 1                       # g = i + j

addi $s3, $s3, 1
j For

Exit:
```

#### For Loop (Less than or Equal to)

```c
// variable declarations...

for (i = 0; i <= j; i++) {
    g = i + j;
}
```

```mips
# Assumptions:
# f is stored in $s0
# g is stored in $s1
# h is stored in $s2
# i is stored in $s3
# j is stored in $s4

# i <= j is equal to !(j < i) --> "j is not less than i"

Start: add $s3, $zero, $zero          # i = 0

For: slt $t0, $s4, $s3 $t0            # (j < i) ? 1 : 0
bne $t0, $zero, Exit                  # i > j -> exit

add $s1, $s3, 1                       # g = i + j

addi $s3, $s3, 1
j For

Exit:
```

[Back to top](#cda3102---computer-architecture)

### Signed vs. Unsigned Comparisons (Out-of-Bounds)

![Signed vs. Unsigned Comparisons](images/2.7%20Signed%20vs%20Unsigned%20Comparisons.png)

### Switch Case and Jump Tables (jr)

![Switch Case and Jump Tables (jr)](<images/2.8%20Switch%20Case%20and%20Jump%20Tables%20(jr).png>)

#### Switch Case

```c
// variable declarations...

switch(f) {
    case 1:
        g = i + j;
    case 5:
        h = i + j;
        break;
    case 3:
        g = i - j;
    default:
    i = h + i + j
}
```

```mips
# Assumptions:
# f is stored in $s0,
# g is stored in $s1
# h is stored in $s2
# i is stored in $s3
# j is stored in $s4

# START
Start: addi $t0, $s0, -1               # $t0 = f - 1
bne $t0, $zero, First
add $s1, $s3, $s4                      # g = i + j
j Second

First: addi $t0, $s0, -5               # $t0 = f - 5
bne $t0, $zero, Third
Second: add $s2, $s3, $s4              # h = i + j
j Exit

Third: addi $t0, $s0, -3               # $t0 = f - 3
bne $t0, $zero, Fourth
sub $s1, $s3, $s2

Fourth: add $s3, $s2, $s3              # i = h + i
add $s3, $s3, $s4                      # i = i + j
j Exit

Exit:
```

[Back to top](#cda3102---computer-architecture)

### **Procedures**

![Procedures](images/2.8%20Procedures.png)

### Jump and Link, Return Address, Program Count

![2.8 Jump and Link, Return Address, Program Count](images/2.8%20Jump%20and%20Link,%20Return%20Address,%20Program%20Count.png)

### Stack

![Stack](images/2.8%20Stack.png)

### **Procedure (Example)**

![Procedure Example](images/2.8%20Procedure%20Example.png)

### Nested Procedures

![Nested Procedures](images/2.8%20Nested%20Procedures.png)

### Nested Procedure (Example)

![Nested Procedure (Example)](images/2.8%20Nested%20Procedure%20Example.png)

### Global Pointer and Preserved Registers

![Global Pointer and Preserved Registers](images/2.8%20Global%20Pointer%20and%20Preserved%20Registers.png)
[Back to top](#cda3102---computer-architecture)

### Frame Pointer

![Frame Pointer](images/2.8%20Frame%20Pointer.png)

### **Allocating Data on the Heap**

![Allocating Data on the Heap](images/2.8%20Allocating%20Data%20on%20the%20Heap.png)

### **MIPS Register Conventions (Table)**

![MIPS Register Conventions (Table)](images/2.8%20MIPS%20Register%20Conventions.png)

### **ASCII (Table)**

![ASCII Table](<images/2.9%20ASCII%20(Table).png>)

### 32-Bit Immidiate Operands (lui, ori)

![32-Bit Immidiate Operands (lui, ori)](images/2.9%2032-bit%20Immidiate%20Operands.png)

#### 32-Bit Operand (Example)

![32-Bit Operand (Example)](images/2.9%2032-bit%20operand%20example.png)

[Back to top](#cda3102---computer-architecture)

### Addressing in Branches and Jumps

![Addressing in Branches and Jumps](images/2.9%20Addressing%20in%20Branches%20and%20Jumps.png)

#### Branches Offset (Example)

![Branches Offset (Example)](<images/2.9%20Branches%20Offset%20(Example).png>)

### **MIPS Addressing Modes (Table)**

![MIPS Addressing Modes (Table)](<images/2.9%20MIPS%20Addressing%20Modes%20(Table).png>)

### Encoding MIPS to Machine Language (Table)

![Encoding MIPS to Machine Language](images/2.9%20Encoding%20MIPS%20to%20Machine%20Language.png)

#### Decoding Machine Code (Example)

![Decoding Machine Code (Example)](<images/2.9%20Decoding%20Machine%20Code%20(Example).png>)

[Back to top](#cda3102---computer-architecture)

### **MIPS All Instruction Formats (R, I and J)**

![MIPS All Instruction Formats (R, I and J)](images/2.9%20MIPS%20All%20Instruction%20Formats.png)

### **Parallelism and Synchronization (Locks, Mutual Exclusion, Atomic Exchanges)**

![Parallelism and Synchronization (Locks, Mutual Exclusion, Atomic Exchanges)](images/2.11%20Parallelism%20and%20Synchronization.png)

#### **MIPS Load Linked and Conditional Store**

![MIPS Load Linked and Conditional Store](images/2.11%20MIPS%20Load%20Linked%20and%20Conditional%20Store.png)

### Program Translation (C -> Compiler -> Assembler -> Linker -> Loader)

![Program Translation](<images/2.12%20Program%20Translation%20(from%20.c%20to%20a.out).png>)

[Back to top](#cda3102---computer-architecture)

#### Compiler and Assembler

![Compiler and Assembler](images/2.12%20Complier%20&%20Assembler.png)

#### Linker and Executable File

![Linked and Executable File](images/2.12%20Linked%20and%20Executable%20File.png)

#### Loader

![Loader](images/2.12%20Loader.png)

#### Dynamically Linked Libraries

![Dynamically Linked Libraries](images/2.12%20Dynamically%20Linked%20Libraries.png)

### Java Programs (Java Bytecode, JVM Interpreter, JIT Compiler)

![Java Programs (Java Bytecode, JVM Interpreter, JIT Compiler)](<images/2.12%20Java%20Programs%20(Java%20Bytecode,%20JVM%20Interpreter,%20JIT%20Compiler).png>)

[Back to top](#cda3102---computer-architecture)

### **Swap Two Numbers (Procedure Example)**

```c
void swap(int v[], int k)
{
    int temp;
    temp = v[k];
    v[k] = v[k+1];
    v[k+1] = temp;
}
```

1. Allocate registers to program variables.
2. Produce code for the body of the procedure.
3. Preserve registers across the procedure invocation.

```mips
# Recall that the memory address for MIPS refers to
# the byte address, and so words are really 4 bytes apart.
# Hence we need to multiply the index k by 4 before adding it to the address. # Forgetting that sequential word addresses differ by 4 instead of by 1 is a
# common mistake in assembly language programming. Hence the first step is to
# get the address of v[k] by multiplying k by 4 via a shift left by 2:

swap: sll   $t1, $a1, 2     # reg $t1 = k * 4
add   $t1, $a0, $t1         # reg $t1 = v + (k * 4)
                            # reg $t1 has the address of v[k]


lw    $t0, 0($t1)           # reg $t0 (temp) = v[k]
lw    $t2, 4($t1)           # reg $t2 = v[k + 1]
                            # refers to next element of v

sw    $t2, 0($t1)           # v[k] = reg $t2
sw    $t0, 4($t1)           # v[k + 1] = reg $t0 (temp)

jr    $ra                   # return to calling routine
```

[Back to top](#cda3102---computer-architecture)

## **Chaper 3: Arithmetic for Computers**

### Addition and Subtraction

![Addtion and subtraction](./images/3.1%20Add%20and%20Sub.png)

### Overflow Cases

![Overflow Cases](./images/3.1.2%20Overflow%20Cases.png)

### Arithmetic Logic Unit (ALU)

![Arithmetic Logic Unit (ALU)](<./images/3.1.3%20Arithmetic%20Logic%20Unit%20(ALU).png>)

### Multiplication (Parallel Addition)

![Multiplication (Parallel Addition)](<./images/3.1.3%20Arithmetic%20Logic%20Unit%20(ALU).png>)

### Division

![Divisions](./images/3.3%20Division.png)

### Faster Division

![Faster Division](./images/3.3.2%20Faster%20Division.png)

### **MIPS Arithemtic (Table)**

![MIPS Arithemtic (Table)](<./images/3.3.2%20MIPS%20Arithemtic%20(Table).png>)

### Remainder is Stored in "mfhi"

![Remainder is Stored in "mfhi"](./images/3.4.2%20Remainder%20is%20Stored%20in%20"mfhi".png)

[Back to top](#cda3102---computer-architecture)
