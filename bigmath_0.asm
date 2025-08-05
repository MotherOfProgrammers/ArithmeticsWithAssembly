; Program BigMath_0 With x64 Assembly Language
; Created By W.H.Tharusha Rasanjana - 2025
; All Rights Reserved
segment .data
a ddq 5
b ddq -25
segment .text
global _start
_start:
	mov r10, 5 ; set integer 5 to the r10 register
	mov r12, 5 ; set integer 5 to the r12 register also
	imul r10, [a] ; multiply r10 by 'a' variable in the memory and store the result in the r10 register
	sub r10, [b] ; subtract r10 by 'b' variable in the memory and store the result in the r10 register
	mov rbx, 0 ; set integer to r10 register which is essential to be done before a division operation
	mov r11, [a] ; set the integer which sotred in 'a' variable in the memory to the r11 register
	mov rax, 10 ; set integer 10 to the rax register
	idiv r11 ; divide the value in the rax(10) by r11 which is 5
	or r12, [b] ; OR r12 with 'b' variable in the memory and store the result in r12 register
	and r10, [a] ; AND r10 with 'a' variable a in the memory and store the result in r10 register
	xor r10, r11 ; xor r10 with r11 and store the result in r10
	xor r10, r12 ; xor r10 with r12 again and store the result in r10
	mov rbx, 0 ; set rbx to 0
	mov rax, r10 ; move the value which existed in r10(which is -30) until now to rax register
	mov r10, 0 ; set r10 to 0
	mov r10, 2 ; move integer 2 to r10
	cqo ; set the sign extend
	idiv r10 ; at this point rax would contain a negative value which is the result for -30/2 = -15

	mov rax, 60
	mov rbx, 0 ; or you can use xor rbx, rbx
	syscall
