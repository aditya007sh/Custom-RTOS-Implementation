.global main
main:
    mov r0,#12322
	mov r3,r0
	mov r2,#0     @reverse num
	mov r4,#10    @for sub
	
reverse:
    cmp r3,#0
	beq palindrome
	
	mov r6,#0  @quotient
	mov r9,r3  @remaindr
	
division:
    cmp r9,r4
	blt div_done
	
	sub r9,r9,r4
	add r6,r6,#1
	b division
	
	
div_done:
   mul r7,r2,r4
   add r2,r7,r9
   mov r3,r6
   b reverse
   
palindrome:
   cmp r0,r2
   moveq r1,#1
   movne r1,#0
   
end:
   b end
	