

.MODEL SMALL
.STACK 100H
.DATA
MSG DB "VALUE:$"
VAR DB ?
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    LEA DX, MSG
    MOV AH, 09H
    INT 21H

    MOV AH, 01H
    INT 21H
    SUB AL, '0'
    MOV VAR, AL

    MOV AH, 02H
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H

    MOV CL, VAR
    MOV BL, 1

TOP:
    MOV CH, BL
    MOV DL, '*'
    
LEVEL1:
    MOV AH, 02H
    INT 21H
    
    DEC CH
    JNZ LEVEL1
    
    MOV AH, 02H
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    INC BL
    DEC CL
    JNZ TOP
    
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN
