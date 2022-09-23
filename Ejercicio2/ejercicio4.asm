.data
V:	.word 2,5,4
largo:	.word 3
rango1:	.word 1
rango2: .word 5
res:	.space 4
.text
	la $t0, V
	lw $t1, largo($0)
	li $t2, 0		#valor inicial del contador
	lw $t4, rango2($0)
	li $t6, 0		#valor preliminar de la respuesta
for1:	beq $t2, $t1, fin
	lw $t3, rango1($0)	#valor minimo del rango
	lw $t5, 0($t0)
for2:	beq $t3, $t4, finfor2
	bne $t5, $t3, noesta
	addi $t6, $t6, 1
noesta:	addi $t3, $t3, 1
	j for2
finfor2:addi $t0, $t0, 4
	addi $t2, $t2, 1
	j for1
fin:	sw $t6, res($0)