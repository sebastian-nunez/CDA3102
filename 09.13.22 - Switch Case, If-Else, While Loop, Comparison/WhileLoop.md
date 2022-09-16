# While Loop

## C Pseudo Code

```c
// variable declarations...

while (i != j) {
    f = i + h;
    i = f + h;
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
Start: beq $s3, $s4, Exit          # i == j exit

add $s0, $s3, $s0                  # f = i + h
add $s3, $s0, $s2                  # i = f + h

j Start


Exit:
```

## C While Loop (Break/Continue)

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

## MIPS While Loop (Break/Continue)

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
