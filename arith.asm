; simple arithmetic calculation with Assembly
segment .text
global _start
_start:
	mov eax,2
	add eax,3 ; eax becomes 5
	mov ebx,10 ; move 10 to ebx
	imul eax, ebx ; 10*5 to eax
	sub eax,22 ; subtract 22 from eax = 28
	not eax ; 28 = 00000000000000000000000000011100, not(28) = 11111111111111111111111111100011

	mov rax,60 ; exit calling
	mov rbx,0
	syscall
