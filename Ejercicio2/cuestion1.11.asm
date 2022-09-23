.data
dato1: .word 20
dato2: .word 20
res: .space 1
.text
main: lw $t0,dato1($0) # cargar dato1 en t0
 lw $t1, dato2($0) # cargar dato2 en t1
 sle $t2, $t1, $t0 #carga 1 en t2 si t0<=t0
fineval: sb $t2,res($0) # almacenar $t2 en res