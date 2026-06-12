.model small
.stack 100h
.data
.code
main proc
    mov ah, 01h
    int 21h
    mov bl, al
    
    mov ah, 02h
    mov dl, 0Ah
    int 21h
    mov dl, 0Dh
    int 21h
    
    mov dl, bl
    int 21h
    
    mov ah, 4Ch
    int 21h
    
main endp
end main
