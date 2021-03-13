section .data           ;initialized data
    msg1 db 'Enter a number of your choice: ', 0xa, '>>'
    len1 equ $- msg1
    msg2 db 'The number you have entered is: '
    len2 equ $- msg2

section .bss            ;uninitialized data
    num resb 5           ;4 for the integer and 1 for the sign

section .text           ;code segment
    global _start
   
_start:
    mov edx, len1       ;display the prompt message
    mov ecx, msg1
    mov ebx, 1
    mov eax, 4          ;sys_write
    int 0x80            ;call kernel(An inerrupt)
    
    mov edx, 5          ;read the number
    mov ecx, num
    mov ebx, 1          ;To check what impact this makes, changed it from 2
    mov eax, 3          ;sys_read
    int 0x80 
    
    mov edx, len2       ;display the second message
    mov ecx, msg2       
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov edx, 5          ;display the number
    mov ecx, num
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov eax, 1          ;sys_exit
    ;mov ebx, 0          ;Not sure what difference the statement makes
    int 0x80
    
    
    
