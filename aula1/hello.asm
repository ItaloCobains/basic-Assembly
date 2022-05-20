;Compilaçao
; nasm -f elf64 hello.asm
;Linkeditar tranforma o programa em linguagem de maquina para execultar
; ld -s -o hello hello.o

section .data
    msg: db 'Hello World!', 0xa, 0xd
    tam: equ $- msg


section .text

global _start 

_start:

    mov eax, 0x4
    mov ebx, 0x1
    mov ecx, msg
    mov edx, tam
    int 0x80


    ; mov
    ;destino, origem
    mov eax, 0x1  ;finalizar o sistema 
    mov ebx, 0x0    ; 0 1 2 3 4 5 6 7 8 9 A B C D E F, 
    int 0x80 ; execulta tudo
