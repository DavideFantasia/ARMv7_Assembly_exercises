    .text
    .global fact
    .type fact,%function

fact:   @if n < 2 ; return 1
        cmp r0, #2
        movlo r0, #1
        movlo pc, lr
        @####################
        push {r0, lr}
        sub r0,r0,#1 @n--
        bl fact @fact(n-1)
        pop {r1, lr}
        mul r0,r0,r1 @fact(n-1) * n
        mov pc, lr
