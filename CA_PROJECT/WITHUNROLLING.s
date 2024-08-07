.data
array: .word 4,8,12,16,20,24,28,32
.text
la x20, array
addi x16,x20,32
li x17,4
loop:
    lw x1,0(x20)
    lw x2,4(x20)
    lw x3,8(x20)
    lw x4,12(x20)
    sub x21,x1,x17
    sub x22,x2,x17
    sub x23,x3,x17
    sub x24,x4,x17
    sw x21,0(x20)
    sw x22,4(x20)
    addi x20,x20,16
    sw x23,-8(x20)
    sw x24,-4(x20)
    bne x16,x20,loop
    
exit:nop