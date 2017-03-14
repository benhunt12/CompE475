addi $t0, $t0, 0
addi $t1, $t1, 0
addi $v0, $v0, 0
fib:
	bne $t0, $a0, done
	bne $t1, $a0, done2
	addi $a0, $a0, -1
	add $v0, $v0, $a0
	addi $a0, $a0, -1
	add $v0, $v0, $a0

done2:
	addi $v0, $v0, 2

done:

