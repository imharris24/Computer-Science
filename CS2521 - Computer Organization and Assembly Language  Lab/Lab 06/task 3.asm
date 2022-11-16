.MODEL SMALL
.DATA
endline_variable DB 0ah,0dh,"$"
.CODE
;importing data segment
mov ax, @data
mov ds, ax

;initializing loop iterator cx
mov cx, 5
mov bx, 5
;main loop for printing endline
l1: 
    mov cx, 5 ;cx = bx
    mov dl, 65d ;dl = A        a
    l2: 
        ;print alphabet and increment it
        mov ah, 02
        int 21h
        inc dl
    loop l2
    ;decrement outer loop
    dec bx
    mov cx, bx
    ;print space
    lea dx, endline_variable
    mov ah, 09
    int 21h
loop l1

