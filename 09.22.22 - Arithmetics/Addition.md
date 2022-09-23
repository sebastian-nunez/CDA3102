# Addition - Normal (keep the carry in binary)

```c
         11          # carry
    0000 0111        #   7
+   0000 0110        # + 6
---------------------
    0000 1101
```

# Subtraction - Add by negative number (Two's Comp)

```c
1   1111 111          #   carry
    0000 0111         #     7
+   1111 1010         # + (-6)
---------------------
1   0000 0001
```

## Overflow

- You can't never overflow when adding a positive to a negative (A + (-B))
  - The result will ALWAYS be in between A and B
