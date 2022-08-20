.data 0x10010002
bytes:   .byte 0x10, 0x20, 0x30, 0x40
	 .align 8
palabra: .space 32
.text
	lb $s0, bytes($0)
	lb $s1, bytes+1($0)
	lb $s2, bytes+2($0)
	lb $s3, bytes+3($0)
	sb $s0, palabra($0)
	sb $s1, palabra+1($0)
	sb $s2, palabra+2($0)
	sb $s3, palabra+3($0)