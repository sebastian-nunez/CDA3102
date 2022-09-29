addu $t0, $t1, $t2          # $t0 = sum
xor $t3, $t1, $t2           # if signs differ (same signs -> overflow)
slt $t3, $t3, $zero         # -$t3 -> different signs (no overflow)
bne $t3, $zero, No_overflow # different signs -> no overflow

xor $t3, $t0, $t1
slt $t3, $t3, $zero
bne $t3, $zero, Overflow
