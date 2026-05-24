; Created By W.H.Tharusha Rasanjana - 2026
; Array rotation
; Architechture: Windows x86-64
; Use following commands to compile
; nasm -f win64 rotate.asm -o rotate.obj
; gcc rotate.obj -o rotate.exe
; All Rights Reserved

default rel

global main

extern ExitProcess
extern GetStdHandle
extern WriteConsoleA

section .data
    my_arr  db '0','1','2','3','4','5','6','7','8','9'
    newline db 10
    written dq 0

section .text

main:
    lea rsi, [my_arr]     ; base pointer
    mov al, [rsi]         ; save first element
    xor rbx, rbx

shift_loop:
    cmp rbx, 9
    jge shift_done
    mov dl, [rsi + rbx + 1]
    mov [rsi + rbx], dl
    inc rbx
    jmp shift_loop

shift_done:
    mov [rsi + 9], al
    mov ecx, -11
    sub rsp, 40
    call GetStdHandle
    add rsp, 40
    mov r12, rax          ; store handle
    xor rbx, rbx

print_loop:
    cmp rbx, 10
    jge done

    ; print character
    mov rcx, r12
    lea rdx, [rsi + rbx]
    mov r8, 1
    lea r9, [written]

    sub rsp, 40
    mov qword [rsp + 32], 0
    call WriteConsoleA
    add rsp, 40

    ; print newline
    mov rcx, r12
    lea rdx, [newline]
    mov r8, 1
    lea r9, [written]

    sub rsp, 40
    mov qword [rsp + 32], 0
    call WriteConsoleA
    add rsp, 40

    inc rbx
    jmp print_loop

done:
    xor ecx, ecx
    sub rsp, 40
    call ExitProcess