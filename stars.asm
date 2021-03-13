section .text:
global _start

_start:
    mov edx,len
    mov ecx,msg
    mov ebx,1
    mov eax,4
    int 0x80
    
    mov edx,len2
    mov ecx,newline
    mov ebx,1
    mov eax,4
    int 0x80
    
    mov eax,1
    int 0x80
    
section .data
msg times 50 db '*'
len equ $- msg
newline db 0xA
len2 equ $- newline

