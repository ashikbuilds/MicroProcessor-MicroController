
INCLUDE "EMU8086.INC"

org 100h
.MODEL SMALL
.STACK 100H
.DATA
.CODE

   MAIN PROC
    MOV CX,10
    
    MOV AH,2
    MOV DL,'*'
    
    LEVEL:
    INT 21H
    PRINTN 
    LOOP LEVEL
    
    EXIT:
    MOV AH,4CH
    INT 21H
    
   
    
MAIN ENDP
   END MAIN




