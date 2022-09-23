.data
dato1:	.word 2
dato2:	.word 10
dato3:	.word 50
dato4:	.word 70
dato5:	.word 34
res:	.space 40
.text
		lw $t0, dato5
		lw $t1, dato1
		lw $t2, dato2
		lw $t3, 0
for1:		beq $t1, $t2, finfor1
		beq $t0, $t1, verdad
		addi $t1, $t1, 1
		j for1
finfor1:	lw $t1, dato3
		lw $t2, dato4
for2:		beq $t1, $t2, finfor2
		beq $t0, $t1, verdad
		j for2
finfor2:	j fin
verdad:		addi $t3, $t3, 1
fin:		sw $t3, res($0)