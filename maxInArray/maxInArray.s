	.data
founded:.string "found a new max (%d)\n"
maxString:	.string "the max in the array is %d\n"	

	.text
	.global max
	.type max, %function

max:	@read from an array and return the max value element
	push {lr}
	@r0 = *arr	from main
	sub r1, r1, #1 @r1 = dim
	mov r12,#0 @r12 = max
	mov r2,#0 @r2 = i
	@r3 = arr[i]
	
loop:	cmp r2,r1
	@if i == dim-1
	bhi fine
	@##############
	ldr r3, [r0],#4
	cmp r3, r12
	movhi r12, r3
	add r2,r2,#1 @i++
	b loop
	
fine:	
	mov r1, r12
	ldr r0, =maxString
	bl printf
	
	mov r0, r12
	
	pop {lr}
	mov pc, lr
	
		
	
	
	
	
