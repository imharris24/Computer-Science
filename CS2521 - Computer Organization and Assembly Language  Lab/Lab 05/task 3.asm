.model small  
;data segmeny
.data        
;message variable
msg db 0ah,0dh,'HIGHEST NUMBER: ','$'
.code            
    ;move data segment to ds register
    mov ax, @data
    mov ds, ax
    
    ;cl = 10
    mov cl, 10  
    ;Highest variable = 0
    mov bl, 0
    
    ;loop will run 10 times   
    l1: 
        ;input number
        mov ah, 01
        int 21h
        ;compare number with highest input
        cmp al, bl
        ;if (al >= bl)
        jae c1
        ;else
        jmp c2
        
        
        c1:  
            ;move number to highest variable
            mov bl, al 
        c2:
              
    loop l1  
    
    ;print message
    mov ah,09
    lea dx,msg
    int 21h
           
    ;print highest variable
    mov ah,02
    mov dl,bl
    int 21h