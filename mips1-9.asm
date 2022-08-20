.data 0x10010000
palabra: .word 0x10203040
.text
         lb $s0, palabra($0)
	 lb $s1, palabra+1($0)
	 lb $s2, palabra+2($0)
	 lb $s3, palabra+3($0)
	 sb $s3, palabra($0)
	 sb $s2, palabra+1($0)
	 sb $s1, palabra+2($0)
	 sb $s0, palabra+3($0)