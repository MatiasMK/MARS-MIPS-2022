.data
     V:    .byte 2,-4,-6
     res: .space 1
.text
     lb $t5, V($0)
     lb $t6, V+1($0)
     lb $t7, V+2($0)
     
     sge $t1, $t5, $0
     sb $t1, res($0)
     
     sge $t1, $t6, $0
     sb $t1, res+1($0)
     
     sge $t1, $t7, $0
     sb $t1, res+2($0)