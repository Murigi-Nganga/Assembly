;Looping to print some numbers until we encounter a 3

section .data
    value db '  '
    nums db 5,6,7,8,2,4,5,6,7,8,9
    len equ $- nums
    eol db 0xa
    
section .text
    global _start
    
_start:
    mov ecx, len
    mov edi, nums
    
    printarray:
    mov esi, ecx          ;move value of ecx into esi bc ecx is used for the loop cout as well as printing each of the numbers in the array
    mov cl, [edi]         ;move exact value of nums/edi into the lower order bits of the ecx register
    add cl, '0'           ;add '0' to convert the number to ASCII
    mov [value], cl       ;move the ASCII value in cl to the exact value of the variable 'value'
    
    mov edx, 2            ;print each value
    mov ecx, value
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov ecx, esi          ;move value of esi back into ecx
    inc edi               ;increament edi to move to the next value in the array
    cmp [edi-1], byte 3   ;compare to see if the exact value that we printed was 3
    loopne printarray     ;loopne decreaments ecx, and loops back in printarray as long as the value we have printed is not 3
    
    mov edx, 1            ;print a new line
    mov ecx, eol
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov eax, 1            ;exit from the program
    int 0x80
