.global _start
_start:
	n: .word 7 @ used to store the number
	result: .word 0 @ used to store the result
	adr r0, n @ loading address of n to r0
	ldr r0, [r0] @ loading value of r0 address
	
	mov r1, #0 @ previous value
	mov r2, #1 @ current value
	mov r3, #0 @ counter
	mov r4, #0 @ result
	
loop:
	cmp r3, r0 @ comparing counter and n
	beq done @ go to done
	
	add r4, r1, r2 @ result = previous + current
	mov r1, r2 @ previous = current
	mov r2, r4 @ current = result
	add r3, r3, #1 @ counter++
	
	b loop
	
done:
	adr r5, result @ loading address if result in r5
	str r1, [r5] @ storing PREVIOUS value in r5