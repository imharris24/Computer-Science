.MODEL SMALL
.CODE    
    ;cl = 26 
    mov cl, 26
    ;dl = A
    mov dl, 65
    
    ;loop will run 26 times according to cl
    l1: 
        ;print alphabet
        mov ah, 02
        int 21h
        ;incement alphabet
        inc dl
    loop l1