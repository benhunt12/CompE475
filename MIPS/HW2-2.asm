.text
.globl main
	main: 	
		addi $2, $0, 5 # initialize $2 = 5 20020005
 		addi $3, $0, 12 # initialize $3 = 12 2003000c
 		addi $1, $3, -9 # initialize $1 = 3
 		or $4, $1, $2 # $4 = 3 or 5 = 7
 		and $5, $3, $4 # $5 = 12 and 7 = 4
 		add $5, $5, $2 # $5 = 4 + 5 = 9
 		beq $5, $3, end # shouldn’t be taken
 		slt $4, $1, $4 # $4 = 3 < 7 = 1
 		beq $4, $0, around # shouldn’t be taken
 		addi $5, $2, -6 # $5 = 5-6=-1
	around:	
		slt $4, $3, $2 # $4 = 12 < 5 = 0
		add $1, $4, $5 # $1 = 0 + -1 = -1
 		sub $2, $1, $5 # $2 = -1 – (-1) = 0
 		sw $1, 56($3) # [14] = -1
 		lw $2, 60($5) # $2 = [14] = -1
 		j end # should be taken
 		addi $2, $0, 1 # shouldn’t happen
	end: 	
		sw $2, 52($0) # M[13] = -1 
		li $v0, 10
    		syscall
