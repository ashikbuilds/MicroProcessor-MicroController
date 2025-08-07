.MODEL SMALL
.STACK 100H
.DATA
msg1 db 'INPUT:$'           
msg2 db 0DH,0AH, 'OUTPUT:$'  
msg_odd db 'odd$'            
msg_even db 'even$'          

.CODE
main PROC
    
    mov AX, @DATA
    mov DS, AX

   
    mov AH, 09h
    lea DX, msg1
    int 21h

    
    mov AH, 01h
    int 21h

    
    sub AL, 30h

    
    xor AH, AH      
    mov BL, 2       
    div BL          

    
    cmp AH, 0
    je EVEN

ODD:
    
    mov AH, 09h
    lea DX, msg2
    int 21h
    lea DX, msg_odd
    mov AH, 09h
    int 21h
    jmp EXIT

EVEN:
    
    mov AH, 09h
    lea DX, msg2
    int 21h
    lea DX, msg_even
    mov AH, 09h
    int 21h

EXIT:
   
    mov AH, 4Ch
    int 21h
main ENDP
END main
