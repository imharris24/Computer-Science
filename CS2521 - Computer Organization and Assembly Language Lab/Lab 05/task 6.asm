.MODEL SMALL
.CODE  
    ;cl = 5
    mov cl, 5
    ;dl = 8 which is last even number
    mov dl, 56
                                     
    ;loop will run 5 times based on cl                                    
    l1:                               
        ;print even number
        mov ah, 02
        int 21h           
        ;move to next even number
        sub dl, 2
    loop l1