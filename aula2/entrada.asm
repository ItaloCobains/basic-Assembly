segment .data
    LF            equ 0xa  ; Line Feed 
    SYS_CALL      equ 0x80 ; System Call
    NULL          equ 0xd  ; Null
    ;eax
    SYS_EXIT      equ 0x1  ; System Exit
    SYS_READ      equ 0x3  ; System Read
    SYS_WRITE     equ 0x4  ; System Write
    ;ebx
    RET_EXIT      equ 0x0  ; Return Exit
    STD_IN        equ 0x0  ; Standard Input
    STD_OUT       equ 0x1  ; Standard Output



section .data
    msg db "Entre com seu nome", LF, NULL
    tam equ $- msg


section .bss
    nome: resb 1

section .text

global _start

_start: 
    mov eax, SYS_WRITE
    mov ebx, STD_OUT
    mov ecx, msg
    mov edx, tam
    int SYS_CALL
    
    mov eax, SYS_READ
    mov ebx STD_IN
    mov ecx, nome
    mov edx, 0xa
    int SYS_CALL
    

    mov eax, SYS_EXIT
    mov ebx, RET_EXIT
    int SYS_CALL