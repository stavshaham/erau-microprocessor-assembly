global _start
_start:
	n: .word 5 @ variable n to store the number to do the factorial
	factorial: .word 0 @ the factorial result
	
	adr r0, n @ load address of n in r0
	ldr r0, [r0] @ loading the valuein n to r0
	
	mov r1, #1 @ factorial result
	
loop:
	mul r1, r1, r0 @ r1 = r1 * r0
	sub r0, r0, #1 @ r0 = r0 - 1
	
	cmp r0, #0 @ compare r0 and 0
	bne loop @ if not equal go back to loop
	
	adr r3, factorial @ load address of factorial result to r3
	str r1, [r3] @ storing r1 value in r3