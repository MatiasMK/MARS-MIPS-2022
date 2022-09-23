.data
V:	.asciiz "hola"
char:	.ascii "a"
res:	.word 4
.text
	la $t0, V
	la $t2, char
	li $t3, 0
for:	lb $t1, 0($t0)
	beq $t1, $0, fin
	bne $t1, $t2, noes
	addi $t3, $t3, 1
noes:	j for
fin:	sw $t3, res($0)