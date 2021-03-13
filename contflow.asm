section .bss
    num resb 1

section .data
    msg1 db 'Enter a 1-digit number:'
    len1 equ $- msg1
    msg2 db 'Large number',0xa
    len2 equ $- msg2
    msg3 db 'Small Number',0xa
    len3 equ $- msg3
    msg4 db 'Average Number', 0xa
    len4 equ $- msg4
    
section .text 
    global _start:
_start:
    mov edx, len1
    mov ecx, msg1
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov edx, 1
    mov ecx, num
    mov ebx, 2
    mov eax, 3
    int 0x80
    
    mov eax, 0         ;COMPARING ;initialise eax so the higher 24 bits are zero
    mov al, [num]
    sub al, '0'
    cmp eax, 4
    
    jge greater        ;jump to the symbol greater if eax is greater than or equal to 4
    
    mov edx, len3
    mov ecx, msg3
    jmp print
    
    greater:
    mov eax, 0         ;Comparing if number is still greater
    mov al, [num]
    sub al, '0'
    cmp eax, 7
    
    jl average
    
    mov edx, len2
    mov ecx, msg2
    jmp print
    
    average: 
    mov edx, len4
    mov ecx, msg4    
    
    print:
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov eax, 1
    int 0x80
