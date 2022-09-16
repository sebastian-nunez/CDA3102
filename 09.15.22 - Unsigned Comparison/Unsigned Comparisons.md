# Unsigned Comparisons

## Usefulness

- Checking out of bounds exceptions

```c
// When accesing an element at an index
// you have to remain inside the bounds of the array
arr[i]; // 0 <= i < n

// if i > n or i < 0 --> out of bounds
```

## One Unsigned Comparison

```mips

# s1 = i
# t2 = n
#
# if i is negative: comparing the unsigned version will before a big number 2^31

sltu $t0, $s1, $t2     # if i < n (UNSIGNED): $t0 = 1 else 0
beq $t0, $zer0, IOOB

IOOB: ...
```
