INCLUDE "EMU8086.INC"
ORG 100h
.MODEL SMALL
.STACK 100H
.DATA
MSG DB 'ENTER VALUE:$'
VAR DB '1$'
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    LEA DX, MSG
    MOV AH, 9
    INT 21H
    
    MOV AH, 1
    INT 21H
    MOV BL, AL
    
    PRINTN "" 

    
    LEA DX, MSG
    MOV AH, 09H
    INT 21H 
    
    LEA DX, VAR
    MOV AH, 09H
    INT 21H
    
    MOV AH,2
    SUB BL, 17
    MOV DL, BL  
    INT 21H
    
   
    
    
    
MAIN ENDP
END MAIN
