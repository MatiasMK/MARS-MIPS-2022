.data
     V:    .byte -1,-4,-5,-2
     res: .space 1
.text
     lb $t7, V($0)
     slt $t1, $t7, $0
     
     lb $t7, V+1($0)
     slt $t2, $t7, $0
     and $t1, $t1, $t2
     
     lb $t7, V+2($0)
     slt $t2, $t7, $0
     and $t1, $t1, $t2
     
     lb $t7, V+3($0)
     slt $t2, $t7, $0
     and $t1, $t1, $t2
     
     sb $t1, res($0)