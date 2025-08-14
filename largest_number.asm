; Created by W.H.Tharusha Rasanajana - 2025
; All Rights Reserved
; A Program Which Sets The Maximum Value When Two Values Were Given
section .data
max dq 0
a dq 5
b dq 7
section .text
global _start
_start:
	mov rax, [a]
	mov r10, [b]
	cmp rax, r10
	jge largest
	mov [max], r10
	largest:
		mov [max], rax
	xor rax, rax
	mov rax, 60
	mov rbx, 0
	syscall

