;Loop to print 3 arrays

section .data
    msg1  db 'First array:', 0xa
    len1  equ $- msg1
    msg2  db 'Second array:', 0xa
    len2  equ $- msg2
    msg3  db 'Third array:', 0xa
    len3  equ $- msg3
    arr1  db 1,2,3,4,5,6,7,3,9
    arr2  db 8,5,6,3,3,2,1,2,0
    arr3  db 0,0,0,0,0,0,0,0,0
    value db '  '
    eol   times 2 db 0xa
    count db 0
   
    
section .text
    global _start
    
_start:
    mov edx, len1          ;Printing message 1
    mov ecx, msg1
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov ecx, 9            ;Printing the first array
    mov edi, arr1
    
  printarr1:
    mov esi, ecx
    mov cl, [edi]
    add cl, '0'
    mov [value], cl
    mov edx, 2
    mov ecx, value
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov ecx, esi
    inc edi
    loopnz printarr1
    
    mov edx, 2           ;printing 2 new lines
    mov ecx, eol
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov edx, len2        ;printing second message
    mov ecx, msg2
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov ecx, 9           ;printing second aray
    mov edi, arr2
    
  printarr2:
    mov esi, ecx
    mov cl, [edi]
    add cl, '0'
    mov [value], cl
    mov edx, 2
    mov ecx, value
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov ecx, esi
    inc edi
    loopnz printarr2
    
    mov edx, 2           ;printing 2 new lines
    mov ecx, eol
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov esi, arr1           ;The addition operation
    mov ebx, arr2
    mov edi, arr3
    mov ecx, 9 
    
  addition:
    mov eax, [esi]
    add al, [ebx]
    mov [edi], al
    
    inc esi
    inc ebx
    inc edi
 
    loop addition
    
    mov edx, len3           ;printing third message
    mov ecx, msg3
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov ecx, 9           ;printing third aray
    mov edi, arr3
    
  printarr3:
    mov esi, ecx
    mov cl, [edi]
    add cl, '0'
    mov [value], cl
    mov edx, 2
    mov ecx, value
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    mov ecx, esi
    inc edi
    loopnz printarr3
    
    mov edx, 2           ;printing 2 new lines
    mov ecx, eol
    mov ebx, 1
    mov eax, 4
    int 0x80
    
    
    mov eax, 1
    int 0x80
    
    
    
    
    
      

