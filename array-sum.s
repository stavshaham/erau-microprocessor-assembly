.global _start
_start:
	array: .word 5, 10, 15 @ contains the array values
	lenght: .word 3 @ the array length
	sum: .word 0
	
	mov r0, #0 @ r0 will serve as the sum
	
	ldr r1, =array @ r1 will save the array values
	ldr r2, =lenght @ Load the address of length into R2
	ldr r2, [r2] @ Load the array length from memory into R2
	
loop:
	ldr r3, [r1], #4 @ Load current address in the array
	
	add r0, r0, r3 @ r0 = r0 + r3
	sub r2, r2, #1 @ r2 = r2 - 1
	
	cmp r2, #0 @ comparing r0 and 0
	bne loop @ if not equal, go back to loop
	
	ldr r4, =sum @ load address of sum in r4
	str r0, [r4] @ storing r0 value in the r4 address