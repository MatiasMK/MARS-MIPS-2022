.data 0x10010000
V: .word
.text
   sw $s0,V($0)
   sw $s1,V+4($0)
   sw $s2,V+8($0)
   sw $s3,V+12($0)
   sw $s4,V+16($0)