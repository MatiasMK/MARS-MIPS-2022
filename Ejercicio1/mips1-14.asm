.data 0x10000000
entero: .word 0xabcd12bd
.text
	lw $s0, entero($0)
	and $s0, $s0, 0x1BA
	sw $s0, entero($0)