.data
dato1: .word 30
dato2: .word 40
res: .space 4
.text
main: 		lw $t0,dato1($0) #cargar dato1 en $t0
		lw $t1,dato2($0) #cargar dato2 en $t1
Si: 		bge $t0,$t1, sino #si $t0>=$t1 ir a sino
entonces: 	sub $t2, $t0, $t1 #ecuacion dato1-dato2
		sw $t2,res($0) #almacenar $t0 en res
		j finsi #ir a finsi
sino: 		sub $t2, $t1, $t0 #ecuacion dato2-dato1
		sw $t1,res($0)#almacenar $t1 en res
finsi: