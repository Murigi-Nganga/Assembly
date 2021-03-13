section .bss
    num1 resb 2
    num2 resb 2
    sum  resb 1
    
section .data
    msg1 db 'Enter your first number:'
    len1 equ $- msg1
    msg2 db 'Enter your second number:'
    len2 equ $- msg2
    msg3 db 'The sum of the two numbers is:'
    len3 equ $- msg3
    
section .text
    global _start
_start:
    mov edx, len1       ;Print the first message
    mov ecx, msg1       
    mov ebx, 1
    mov eax, 4          ;sys_write
    int 0x80            ;call kernel
    
    mov edx, 2          ;Read the first number
    mov ecx, num1
    mov ebx, 0
    mov eax, 3          ;sys_read
    int 0x80
    
    mov edx, len2       ;Print second message
    mov ecx, msg2
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov edx, 2          ;Read second number
    mov ecx, num2
    mov ebx, 0
    mov eax, 3
    int 0x80
 
    mov eax, [num1]     ;Move num1 ro register EAX
    sub eax, '0'        ;Convert the ASCII number to decimal
    mov ebx, [num2]     ;Move num2 to register EBX
    sub ebx, '0'        ;Convert the ASCII number to decimal
    add eax, ebx        ;Add the two numbers in the registers
    add eax, '0'        ;Convert the result back to ASCII
    
    mov [sum], eax      ;Move the result to sum   
    
    mov edx, len3       ;Print the third message
    mov ecx, msg3
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov edx, 5          ;Print the answer
    mov ecx, sum
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov eax, 1
    int 0x80            ;sys_exit
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
