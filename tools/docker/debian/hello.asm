;This is the serial console. Whatever you type or paste here will be sent to COM1; to compile and run:
; nasm -felf32 hello.asm && ld hello.o && ./a.out

section .data
msg db 'Hello, world', 0AH
len equ $-msg

section .text
global _start
_start:
    mov edx, len
    mov ecx, msg
    mov ebx, 1
    mov eax, 4
    int 80h

    mov ebx, 0
    mov eax, 1
    int 80h
