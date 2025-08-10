INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.DATA 
MSG DB "ENTER NUM : $"
MSG1 DB "ENTER STARTING NUMBER : $"
VAR DB ?
VA DB ?
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
              
    LEA DX,MSG
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV VAR,AL
    SUB VAR,30H
    
    
    
    PRINTN "" 
    
     LEA DX,MSG1
    MOV AH,9
    INT 21H  
    
    MOV AH,1
    INT 21H
    MOV VA,AL  
    
     PRINTN "" 
    
    MOV CX,0
    MOV CL,VAR
    MOV BL,1
    
    TOP:
    MOV CX,BX
    
    
    CMP BL,VAR
    JG EXIT
    
    LEVEL:
    MOV AH,2
    MOV DL,VA
    INT 21H
    LOOP LEVEL
    
    INC VA
    
    INC BL
    PRINTN ""   
    LOOP TOP
    
    LOOP TOP
    

      
     
      
      EXIT:
      MOV AH,4CH
      INT 21H
      MAIN ENDP
END   MAIN