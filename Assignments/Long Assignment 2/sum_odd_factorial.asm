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
jal sum_odd_factorial     #call sum_odd_factorial (n)
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

# Compute and return sum_odd_factorial number
# int sum_odd_factorial(int n){
#      int sum = 0;
#      for(int i = 1; i <= n;i+=2)
#           sum += factorial(i);
#      return sum;
# }
sum_odd_factorial:
# PUSH SAVED VARIABLES TO THE STACK
addi $sp,$sp,-16                        # allocate space for 4 words
sw $ra,0($sp)                           # push $ra
sw $s0,4($sp)                           # push $s0
sw $s1,8($sp)                           # push $s1
sw $s2,12($sp)                          # push $s2

# LOCAL VARIABLES
move $s0, $a0						    # n -> $s0
addi $s1, $zero, 1	                    # i -> $s1 = 1
move $s2, $zero					        # sum -> $s2 = 0

# START FOR LOOP
for__sum_odd_factorial:
slt $t0, $s0, $s1                       # n < i
bne $t0, $zero, exit__sum_odd_factorial # !(n < i) -> i <= n

# START BODY ---------------------
move $a0, $s1                           # pass i as an arg1
jal factorial                           # factorial(i)
add $s2, $s2, $v0	                    # sum += factorial(i)
# END BODY------------------------

# UPDATE 'i' AND LOOP
addi $s1, $s1, 2                        # i += 2
j for__sum_odd_factorial
# END FOR LOOP

# RETURN AND JUMP BACK TO CALLER
exit__sum_odd_factorial:
move $v0, $s2	                        # return sum

# RESTORE SAVED VARIABLES
lw $ra,0($sp)                           # pop $ra
lw $s0,4($sp)                           # pop $s0
lw $s1,8($sp)                           # pop $s1
lw $s2,12($sp)                          # pop $s2
addi $sp,$sp,16                         # reset the stack pointer

jr $ra                                  # jump to main

# int factorial(int n) {
#      int rv = 1;
#      for(int i = 1; i <= n;i++)
#           rv *= i;
#      return rv;
# }
factorial:
#compute the factorial of a number

# LOCAL VARIABLES (TEMPORARY)
move $t0, $a0                          # n -> $t0
addi $t1, $zero, 1                     # rv -> $t1 = 1
addi $t2, $zero, 1                     # i -> $t2 = 1

# START FOR LOOP
for__factorial: slt $t3, $t0, $t2      # n < i
bne $t3, $zero, exit__factorial        # !(n < i) -> i <= n

# START BODY ----------------------
mul $t1, $t1, $t2                      # rv *= i
# END BODY ------------------------

# UPDATE 'i' AND LOOP
addi $t2, $t2, 1                       # i++
j for__factorial
# END FOR LOOP

# RETURN AND JUMP TO CALLER
exit__factorial:
move $v0, $t1                          # return rv
jr $ra                                 # jump to sum_odd_factorial

.data
prompt: .asciiz "This program calculates the sum of odd factorial sequence.\nEnter a non-negative number less than 100: "
result: .asciiz "C_"
result2: .asciiz " = "
endl: .asciiz "\n"
