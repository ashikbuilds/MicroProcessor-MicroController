
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h


 .MODEL SMALL
.STACK 100H

.DATA
    NUM1 DW 5    
    NUM2 DW 7     

.CODE
MAIN PROC
    MOV AX, NUM1   
    ADD AX, NUM2   

   

    MOV AH, 4CH    
    INT 21H
MAIN ENDP
END MAIN





