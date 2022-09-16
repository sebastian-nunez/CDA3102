# For Loop

## C For Loop

```c
// variable declarations...

for (i = 0; i != j; i++) {
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

Start: add $s3, $zero, $zero            # i = 0

For: beq $s3, $s4, Exit                 # i == j -> exit

add $s1, $s3, 1                         # g = i + j

addi $s3, $s3, 1
j For

Exit:
```

## C For Loop (Less than <)

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

## C For Loop (Less than or Equal to <=)

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
bne $t0, $zero, Exit                  # i >= j -> exit

add $s1, $s3, 1                       # g = i + j

addi $s3, $s3, 1
j For

Exit:
```
