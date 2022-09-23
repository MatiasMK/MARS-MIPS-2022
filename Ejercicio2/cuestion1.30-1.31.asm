.data
     V:    .byte 0,1,1,1,0
     res: .space 1
.text
     lb $t3, V($0)
     lb $t4, V+1($0)
     lb $t5, V+2($0)
     lb $t6, V+3($0)
     lb $t7, V+4($0)
     
     and $t1, $t3, $t7
     sb $t1, res($0)
     
     or $t1, $t4, $t6
     sb $t1, res+1($0)
     
     or $t2, $t3, $t4
     and $t1, $t2, $t5
     sb $t1, res+2($0)