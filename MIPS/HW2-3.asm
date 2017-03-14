.data
	theNumber: .word 0
	theAnswer: .word 0
	
.text
	.globl main
	main:
		addi $v0, $0, 2
		sw $v0, theNumber #save read number in theNumber
		
		#Call factorial function
		lw $a0, theNumber
		jal findFactorial
		sw $v0, theAnswer
		
		li $v0, 1
		lw $a0, theAnswer
		syscall
		
		#Tell the operating system, this is the end of the program
		li $v0, 10
		syscall
		
#----------
#findFactorial function
.globl findFactorial
findFactorial:
	subu $sp, $sp, 8
	sw $ra, ($sp)
	sw $s0, 4($sp)
	
	#Base Case
	li $v0, 1
	beq $a0, 0, factorialDone
	
	move $s0, $a0
	sub $a0, $a0, 1
	jal findFactorial
	
	mul $v0, $s0, $v0
	
	factorialDone:
		lw $ra, ($sp)
		lw $s0, 4($sp)
		addu $sp, $sp, 8
		jr $ra
	
	
	
	
	
	
	
	
	
		
		
		
		
		
		
		
