factorial:
	addi $sp, $sp, -8
	sw $a0, 4($sp)
	sw $ra, 0($sp)
	addi $t0, $zero, 2
	slt $t0, $a0, $t0
	beq $t0, $zero, else
	addi $v0, $zero, 1
	addi $sp, $sp, 8
	jr $ra
	
else:
	addi $a0, $a0, -1
	jal factorial
	lw $ra, 0($sp)
	lw $a0, 4($sp)
	addi $sp, $sp, 8
	mul $v0, $a0, $v0
	jr $ra
	
	