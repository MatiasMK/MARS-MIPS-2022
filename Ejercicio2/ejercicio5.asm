.data
dato1: .word 2
dato2: .word 10
dato3: .word 50
dato4: .word 70
dato5: .word 7
res: .space 4
.text
		lw $t0, dato5($0)
		lw $t1, dato1($0)
		lw $t2, dato2($0)
		li $t3, 0 		#resultado preliminar
for1:		beq $t1, $t0, verdad
		beq $t1, $t2, finfor1
		addi $t1, $t1, 1
		j for1
finfor1:	lw $t1, dato3($0)
		lw $t2, dato4($0)
for2:		beq $t1, $t0, verdad
		beq $t1, $t2, fin
		addi $t1, $t1, 1
		j for2
verdad:		addi $t3, $t3, 1
fin:		sw $t3, res($0)