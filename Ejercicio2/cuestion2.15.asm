.data
dato1: .word 20
dato2: .word 30
dato3: .word 25
res: .space 4
.text
main: 		lw $t1,dato1($0) 	#cargar dato1 en $t1
		lw $t2,dato2($0) 	#cargar dato2 en $t2
		lw $t3,dato3($0) 	#cargar dato3 en $t3
Si: 		blt $t3,$t1, sino	#si $t3<$t1 ir sino
		bgt $t3,$t2, sino 	#si $t3>$t2 ir a sino
entonces: 	addi $t4,$0,1 		#$t4=1
		j finsi 		#ir a finsi
sino: 		and $t4,$0,$0 		#$t4=0
finsi: 		sw $t4,res($0) 		#almacenar res