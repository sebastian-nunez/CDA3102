# Switch Case

## C Pseudo Code

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

## MIPS

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
