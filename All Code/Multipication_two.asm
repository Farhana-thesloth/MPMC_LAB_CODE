.model small
.stack 100h
.data
.code
main proc

    mov ah, 01h
    int 21h
    sub al, 30h
    mov bl, al

    
    mov ah, 02h
    mov dl, 0Dh
    int 21h
    mov dl, 0Ah
    int 21h
    
    mov ah, 01h
    int 21h
    sub al, 30h
    mov cl, al 
    
    mov ah, 02h
    mov dl, 0Dh
    int 21h
    mov dl, 0Ah
    int 21h

    mov al, bl
    mul cl

    mov bl, 10
    mov ah, 00h
    div bl
    mov cl, ah

    add al, 30h
    mov dl, al
    mov ah, 02h
    int 21h

    add cl, 30h
    mov dl, cl
    mov ah, 02h
    int 21h

    mov ah, 4Ch
    int 21h
main endp
end main
