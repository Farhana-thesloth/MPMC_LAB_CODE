.model small
.stack 100h
.code
main proc

mov ah,1
int 21h
sub al,30h
mov bl,al
; input second digit
mov ah,1
int 21h
sub al,30h
mov bh,al


; multiply
mov al,bl
mul bh 
add al,30h
mov ah,2
mov dl,al
int 21h
; divide 
mov al,bl
mov ah,0
div bh ; quotient in AL
add al,30h
mov ah,2
mov dl,al
int 21h
mov ah,4Ch
int 21h
main endp
end main
