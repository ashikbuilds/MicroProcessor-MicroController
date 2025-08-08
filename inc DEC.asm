INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
    MOV CX,7
    
    MOV AH,2
    MOV DL,85
    
    LEVEL:
    INT 21H
     
    PRINTN ""
     
    DEC DL
    LOOP LEVEL 
    
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN



