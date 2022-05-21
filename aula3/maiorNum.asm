segment .data
    LF            equ 0xA  ; Line Feed 
    SYS_CALL      equ 0x80 ; System Call
    NULL          equ 0xD  ; Null
    ;eax
    SYS_EXIT      equ 0x1  ; System Exit
    SYS_READ      equ 0x3  ; System Read
    SYS_WRITE     equ 0x4  ; System Write
    ;ebx
    RET_EXIT      equ 0x0  ; Return Exit
    STD_IN        equ 0x0  ; Standard Input
    STD_OUT       equ 0x1  ; Standard Output

    ;db byte simple inteiro ou um short, dw difine word correspond to the byte, dd define double word, dq define quad word, 
    ;dt define ten word

section .data
    x dd 50 
    y dd 10 
    msg1 db 'X maior que Y', LF, NULL
    tam1 equ $ - msg1
    msg2 db 'X menor que Y', LF, NULL
    tam2 equ $ - msg2

section .text

global _start

_start:
    mov EAX, DWORD[x]
    mov EBX, DWORD[y]
    ; if (EAX > EBX)
    cmp EAX, EBX
    jge maior ; EAX >= EBX
    mov ECX, msg2
    mov EDX. tam2
    ; je =
    ; jg >
    ; jge >=
    ; jl <
    ; jle <=
    ; jne !=
    ;jmp igual a goto
    jmp final



maior:
    mov ECX, msg1
    mov EDX, tam1


final:
    mov EAX, SYS_WRITE
    mov EBX, STD_OUT
    int SYS_CALL

    mov EAX, SYS_EXIT
    xor EBX, EBX ;mov EBX, RET_EXIT
    int SYS_CALL



