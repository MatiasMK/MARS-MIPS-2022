.data 0x10000000
entero: .word 0x1237
.text
	lw $s0, entero($0)
	sll $s0, $s0, 5