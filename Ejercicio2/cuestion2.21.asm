.data
vector1: .word 6,7,8,9,10,-1,34,23
vector2: .space 8
.text
main: 		la $t2,vector1 		#$t2=dirección de vector1
 		la $t3,vector2		#$t3=direccion de vector2
 		and $t4,$0,$t4 		#$t4=0
 		li $t0,0 		#$t0=0
 		li $t1,8 		#$t1=5
para: 		bgt $t0,$t1,finpara 	#si $t0>$t1 saltar finpara
		lw $t5,0($t2) 		#carga elemento vector1 en $t5
		addi $t5,$t5, 1		#suma uno al elemento del vector1
		sw $t5, vector2($t3)	#guarda $t5 en vector2
		addi $t2,$t2, 4 	#$t2=$t2+4
		addi $t3,$t3, 4		#$t3=$t3+4
		addi $t0,$t0, 1 	#$t0=$t0+1
		j para 			#saltar a bucle
finpara: