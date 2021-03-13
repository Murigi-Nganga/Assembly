section .data
    num db 2,3,4,6
    newline db 0xa
    msg db 'The numbers after adding 3 to each', 0xa
    msglen equ $- msg

section .text
    global _start

_start:
    mov edx, 1
    add [num], byte '0'
    mov ecx, num
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov edx, 1
    mov ecx, newline
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov edx, 1
    add [num+1], byte '0'
    mov ecx, num+1
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov edx, 1
    mov ecx, newline
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov edx, 1
    add [num+2], byte '0'
    mov ecx, num+2
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov edx, 1
    mov ecx, newline
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov edx, 1
    add [num+3], byte '0'
    mov ecx, num+3
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov edx, 1
    mov ecx, newline
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    sub [num], byte '0'
    add [num], byte 3
    
    sub [num+1], byte '0'
    add [num+1], byte 3

    sub [num+2], byte '0'
    add [num+2], byte 3

    sub [num+3], byte '0'
    add [num+3], byte 3

    
    mov edx, msglen
    mov ecx, msg
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov edx, 1
    add [num], byte '0'
    mov ecx, num
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov edx, 1
    mov ecx, newline
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov edx, 1
    add [num+1], byte '0'
    mov ecx, num+1
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov edx, 1
    mov ecx, newline
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov edx, 1
    add [num+2], byte '0'
    mov ecx, num+2
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov edx, 1
    mov ecx, newline
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov edx, 1
    add [num+3], byte '0'
    mov ecx, num+3
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov edx, 1
    mov ecx, newline
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov eax, 1
    int 0x80
