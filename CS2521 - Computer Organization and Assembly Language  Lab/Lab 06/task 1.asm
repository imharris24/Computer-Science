.MODEL SMALL
.DATA
space_variable DB " ","$"
.CODE
;importing data segment
mov ax, @data
mov ds, ax

;initializing loop iterator cx
mov cx, 5
mov bx, 5
;main loop for printing space
l1: 
    mov cx, 5 ;cx = bx
    mov dl, 49d ;dl = 1
    l2: 
        ;print number and increment it
        mov ah, 02
        int 21h
        inc dl
    loop l2
    ;decrement outer loop
    dec bx
    mov cx, bx
    ;print space
    lea dx, space_variable
    mov ah, 09
    int 21h
loop l1

