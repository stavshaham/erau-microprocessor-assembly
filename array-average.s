.global _start
_start:
	
	avg: .word 0
	a: .word 3,2,2,7,5,9,7,5
	length: .word 8
	
	adr r0, a 				@ arr address
	adr r1, avg				@ avg address
	adr r2, length			@ length address
	
	ldr r1, [r1]			@ loading r1 value in r1
	ldr r2, [r2]			@ loading r2 value in r2
	
	mov r3, #0				@ sum
	
loop:
	ldr r4, [r0]			@ loading r0 value in r4 (current value)
	add r0, r0, #4			@ r0 = r0 + 4
	
	add r3, r3, r4			@ r3 = r3 + r4 (sum = sum + current value)
	sub r2, r2, #1			@ r2-- (count--)
	
	cmp r2, #0				@ comparing r2 and 0
	bgt loop				@ r2 > 0 go back to loop
	
	asr r3, #3				@ shifting r2 by 2^3 bits => divide by 8
	str r3, [r1]			@ storing r1 value in r4