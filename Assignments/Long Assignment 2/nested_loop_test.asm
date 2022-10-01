.text
main:
# Prompt user to input non-negative number
la $a0,prompt
li $v0,4
syscall

li $v0,5    #Read the number(n)
syscall

move $t2,$v0    # n to $t2

# Call function to get sum_odd_factorial #n
move $a0,$t2
move $v0,$t2
jal nested_loop     #call nested_loop (n)
move $t3,$v0    #result is in $t3

# Output message and n
la $a0,result   #Print C_
li $v0,4
syscall

move $a0,$t2    #Print n
li $v0,1
syscall

la $a0,result2  #Print =
li $v0,4
syscall

move $a0,$t3    #Print the answer
li $v0,1
syscall

la $a0,endl #Print '\n'
li $v0,4
syscall

# End program
li $v0,10
syscall


# int nested_loop_test(int n){
#      int rv = 1;
#      for(int i = 1; i < n;i*=2)
#           for(int j = i; j >= 0; j--)
#                if(j % 2 == 0)
#                     rv += (i + j);
#                else
#                     rv += (2*i-3*j);
#       return rv
# }
nested_loop:
# PUSH SAVED VARIABLES TO THE STACK
addi $sp,$sp,-12                        # allocate space for 3 words
sw $s0,0($sp)                           # push $s0
sw $s1,4($sp)                           # push $s1
sw $s2,8($sp)                           # push $s2

# LOCAL VARIABLES
move $s0, $a0						    # n -> $s0
addi $s1, $zero, 1	                    # rv -> $s1 = 1
addi $t0, $zero, 1				        # i -> $t0 = 1
addi $t3, $zero, 2                      # 2 -> $t3
addi $t4, $zero, 3                      # 3 -> $t4
addi $s2, $zero, 1                      # 1 -> $s2

# FOR1 LOOP
for1__nested_loop:
slt $t7, $t0, $s0                       # i < n
beq $t7, $zero, exit__nested_loop       # exit both loops

# OUTER BODY ------------------
move $t1, $t0			                # i -> j ($t1)

# FOR2 LOOP
for2__nested_loop:
slt $t7, $t1, $zero                     # j < 0
beq $t7, $s2, exit_outer__nested_loop # exit inner loop, jump to outer
# INNER BODY +++++++++++++++++++

# IF
rem $t6, $t1, $t3                       # j % 2 -> $t6
bne $t6, $zero, else__nested_loop       # rem != 0 go to else
add $t7, $t0, $t1                       # i + j -> $t7
add $s1, $s1, $t7                       # rv += $t7
j exit_inner__nested_loop
# END IF

# ELSE
else__nested_loop:
mul $t8, $t3, $t0                       # 2 * i -> $t8
mul $t9, $t4, $t1                       # 3 * j -> $t9
sub $t7, $t8, $t9                       # $t8 - $t9 -> $t7
add $s1, $s1, $t7                       # rv += $t7
# END ELSE

# END INNER BODY +++++++++++++++++++++
exit_inner__nested_loop:
addi $t1, $t1, -1                       # j -= 1
j for2__nested_loop
# END FOR2 LOOP

# END OUTER BODY ---------------------
exit_outer__nested_loop:
mul $t0, $t0, $t3                       # i *= 2
j for1__nested_loop
# END FOR1 LOOP

# RETURN AND JUMP BACK TO CALLER
exit__nested_loop:
move $v0, $s1	                        # return rv

# RESTORE SAVED VARIABLES
lw $s0,0($sp)                           # pop $s0
lw $s1,4($sp)                           # pop $s1
lw $s2,8($sp)                           # pop $s2
addi $sp,$sp,12                         # reset the stack pointer

jr $ra                                  # jump to main

.data
prompt: .asciiz "This program calculates the nested loop result.\nEnter a non-negative number less than 100: "
result: .asciiz "C_"
result2: .asciiz " = "
endl: .asciiz "\n"
