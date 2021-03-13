section .bss            
    sum1 resb 1
    sum2 resb 1
    
section .data           
    newline db 0xa      
    len equ $- newline
    
section .text           
    global _start
_start:
    mov eax, 4          
    add eax, 5
    add eax, '0'        
    mov byte[sum1], al
    mov eax, 4          
    mov edx, 1
    mov ebx, 1
    mov ecx, sum1
    int 0x80
    
    mov edx, len         
    mov ecx, newline
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov eax, 4          
    add eax, 2
    add eax, '0'        
    mov byte[sum2], al
    mov eax, 4          
    mov edx, 1
    mov ebx, 1
    mov ecx, sum2
    int 0x80
    
    mov edx, len          
    mov ecx, newline
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov eax, 1          ;sys_exit
    int 0x80
