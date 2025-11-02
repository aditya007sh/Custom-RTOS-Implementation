.global _start
_start:
	
	mov r0,#10
	mov r4,#0x00000100
	mov r1,#0
	str r1,[r4],#4
	mov r2,#1
	str r2,[r4],#4
	
loop1:	
	add r3,r1,r2
	mov r1,r2
	mov r2,r3
	sub r0,r0,#1
	str r3,[r4],#4
	
	cmp r0,#2
	bne loop1
	
	b end
	
	
end:
    bx lr
	
	