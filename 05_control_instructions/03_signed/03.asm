; JL / JNGE → Jump if Less
section .data
    msg_less db "Lincy Muema 158442",10,0
    msg_not_less db "Lincy Ndanu 158442",10,0

section .text
    global _start
_start:
    mov ax,2
    mov bx,5
    cmp ax,bx
    jl less

    mov ecx, msg_not_less
    jmp print

less:
    mov ecx, msg_less

print:
    mov eax,4
    mov ebx,1
    mov edx,20
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
