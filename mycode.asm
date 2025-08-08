
org 100h

model small
.stack 100h
.data
   
.code
main proc
    mov ax, @data
    mov ds, ax

    lea dx, msg1
    mov ah, 9
    int 21h

    mov ah, 1
    int 21h
    sub al, '0'    
    mov num1, al

  
    lea dx, msg2
    mov ah, 9
    int 21h

    mov ah, 1
    int 21h
    sub al, '0'    
    mov num2, al

    mov al, num1
    add al, num2
    mov result, al

    add result, '0'    
    lea dx, msg3
    mov ah, 9
    int 21h

    mov dl, result
    mov ah, 2
    int 21h

    mov ah, 4Ch
    int 21h
main endp
end main



