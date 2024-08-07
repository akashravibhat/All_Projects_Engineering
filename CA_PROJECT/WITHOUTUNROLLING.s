.data
array: .word 4,8,12,16,20,24,28,32
.text
la x20, array
addi x16,x20,32
li x17,4
loop:
    lw x1,0(x20)
    sub x21,x1,x17
    sw x21,0(x20)
    addi x20,x20,4
    bne x16,x20,loop
    
exit:nop