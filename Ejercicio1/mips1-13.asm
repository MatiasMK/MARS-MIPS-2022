.data 0x10000000
numero1:   .word 18
numero2:   .word -1215
	   .align 1
cocientes: .space 64
.text
	lw $s0, numero1($0)
	lw $s1, numero2($0)
	div $s0, $s0, 5
	div $s1, $s1, 5
	div $s2, $s0, $s1
	sw $s2, cocientes($0)