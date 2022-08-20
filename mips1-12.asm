.data 0x10000000
V: .byte 10, 20
.text
	lb $s0, V($0)
	lb $s1, V+1($0)
	add $s2, $s0, $s1
	sb $s2, V+2($0)