.MODEL SMALL
.CODE   
    ;cl = 10
    mov cl, 10
    ;dl = 9
    mov dl, 57
    
    ;loop will run 10 times   
    l1:
        ;print number
        mov ah, 02
        int 21h      
        ;decrement number
        dec dl
    loop l1