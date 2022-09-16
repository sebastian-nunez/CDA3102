# Procedures

1. Put parameters in a place where the procedure can access it **(registers: $a0 - $a3)**
2. Transfer control to the procedure **(jump and link "jal" -> save the return address $ra [store: PC + 4])**
3. Acquire the store resources needed for the procedure (stack)
4. Put the result value in a place where the calling program can access it **(return registers: $v0, $v1)**
5. Put the result value in a place where the calling program can access it
6. return to the control point of origin, since a procedure can be called from several points in a program **(jr $ra: jump to the return address register (stores the program counter): $ra)**

- $a0 - $a3: argument registers
- jr: jump to register
- Stack pointers (location where on the stack you are)
- frame pointer

## Preserved through Functions Calls

- $s0 - $s7 -> saved registers
- $ra
- $sp - stack pointer (grows from high address to low)

## C Code

```c
int leaf_example(int g, int h, int i, int j) {
    int f;
    f = (g + h) - (i - j);
    return f;
}

```

```mips
#                         --------STACK----------
# $a0 = g                 [TOP = HIGHEST ADDRESS]
# $a1 = h                 [TOP - 4]
# $a2 = i                 [TOP - 8]
# $a3 = j                 [TOP - 12]
# $s0 = f                 [...]
# $t0 = g + h             [BOTTOm = LOWEST ADDRESS]
# $t1 = i + j

# make room for 3 words (each 4 bytes)
addi $sp, $sp, -12          # go down 12 bytes from the stack pointer

# store the values into the stack
sw $t1, 8($sp)              # offet 8
sw $t0, 4($sp)              # offet 4
sw $s0, 0($sp)              # offet 4

# Operations
add $t0, $a0, $a1           # g + h
add $t1, $a2, $a3           # i - j
sub $s0, $t0, $t1           # f = (g + h) - (i - j)

# save the return value
add $v0, $s0, $zero         # move the value of into the return address ($v0)

# clean up, pop the stack and update the registers using FIFO
lw $s0, 0($sp)              # restore $s0 for caller
lw $t0, 4($sp)              # restore $t0 for caller
lw $t1, 8($sp)              # restore $t0 for caller
addi $sp, $sp, 12           # delete 3 items

# jump back to caller (return)
jr $ra                      # jump back to calling routine
```
