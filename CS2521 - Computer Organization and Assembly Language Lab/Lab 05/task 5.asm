.MODEL SMALL
.CODE 
    ;cl = 5
    mov cl, 5
    ;dl = 9 which is 5th odd number
    mov dl, 57                     
    
    ;loop will run 5 times based on cl
    l1:                               
        ;print odd number 
        mov ah, 02
        int 21h           
        ;move to next odd number
        sub dl,2
    loop l1