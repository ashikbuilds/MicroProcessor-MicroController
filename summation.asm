.MODEL SMALL
.STACK 100H
.DATA
MSG DB 'ENTER 1ST NUM:$'
MSG1 DB 'ENTER 2ND NUM:$'
MSG2 DB 'SUM IS: $'

.CODE
MAIN PROC
    MOV AX ,@DATA
    MOV DS,AX
    
    LEA DX,MSG
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    
    MOV BL,AL
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    
     MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H 
    
    
    ADD BL,CL
    
    MOV AL,BL
    SUB AL,20H
    
    MOV AH,2
    MOV DL,AL
    INT 21H
    
MAIN ENDP
END MAIN