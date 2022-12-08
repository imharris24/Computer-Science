.MODEL SMALL
.CODE 
    ;cl = 26
    mov cl, 26
    ;dl = a
    mov dl, 97
     
    ;loop will run 26 times based on cl
    l1:
        ;print alphabet  
        mov ah, 02
        int 21h
        ;increment alphabet
        inc dl
    loop l1