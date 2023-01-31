	.text
	.global fibo
	.type fibo,%function

fibo:   @if n < 2 -> return 1;
	cmp r0, #2
	movlo r0, #1
	movlo pc, lr
	@#####################
	@else fibo(n-1) + fibo(n-2)
        
	sub r1,r0,#2 @r1 = n-2
	sub r0,r0,#1 @r0 = n-1
	push {lr,r1}
	bl fibo
	pop {lr,r1}
	push {lr}
	mov r2, r0 @r2 = fibo(n-1)
	mov r0, r1
	bl fibo @r0 = fibo(n-2)
	add r0, r0 ,r2 @r0 = fibo(n-2)+fibo(n-1)
	@return
	pop {lr}
	mov pc, lr

