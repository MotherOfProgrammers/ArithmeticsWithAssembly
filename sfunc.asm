; Created By W.H.Tharusha Rasanjana - 2025
; All Rights Reserved
; Implemation Of 'call' Instruction Of Assembly Language By Assembly Language
section .data
a dq  14
b dq 5
bal dq 0
quoti dq 0
section .text
global _start
_start:
	push go_exit ; push the go_exit to the stack [RSP or the Stack Pointer Register At Here Now]
	mov r10, [a]
	cmp r10, 0
	jz azero ; Happens if a == 0
	mov r11, [b]
	cmp r11, 0
	jz undefinded ; Happens if b == 0
	cmp r10, r11
	jl rems
	mov r12 ,0
	jmp do_math ; jump to the expected function
	rems:
		mov r10, 0
		mov r12, [a]
		mov [bal], r12
		mov [a], r10
		mov [quoti], r10
		xor r12, r12
		pop rax
		jmp rax
	undefinded:
		pop rax
		jmp rax
	azero:
		xor r10, r10
		xor r11, r11
		mov [quoti], r10
		mov [bal], r11
		pop rax ; show the RIP or the Instruction Pointer Register Where To Execute Next By Popping The RSP From The Stack
		jmp rax
	do_math: ; A Function Which Will Do The Basic Division In Its Primitive Way(We have used here the division algorithms, k = a*b+r where a is the quotinent and r is the remainder while the b is the divisor[a,b must not be zero at this level])
		sub r10, r11
		inc r12
		cmp r10, r11
		jg do_math
		mov [bal], r10
		mov [quoti], r12
		xor r10, r10
		xor r11, r11
		xor r12, r12
		pop rax ; show the RIP or the Instruction Pointer Register Where To Execute Next By Popping The RSP From The Stack
		jmp rax
	go_exit: ; Standard Exit Proceedure Of The x86-64 Linux System
		xor rax,rax
		mov rax, 60
		xor rbx, rbx
		syscall
