; Write program in assembly language that prints the following pattern on the screen 
; using nested loops.

; #
; ##
; ###
; ####
; #####

.MODEL SMALL

.DATA
hash DB "#","$"
endline DB 0ah,0dh,"$"
var_i DB 0
var_j DB 0

.CODE

; get data segment
mov ax, @data
mov ds, ax

mov al, 0h

mov [var_i], al ; for outer loop
mov [var_j], al ; for inner loop

L1:
    
    L2:         
        ; print endline
        lea dx, hash
        mov ah, 09    
        int 21h
    
        ; j++
        mov al, [var_j]
        inc al
        mov [var_j], al
    
        ; if j <= i+1 loop back
        mov cl, [var_i]
        cmp al, cl
        jle L2
        
    ; j = 0
    mov al, 0h
    mov [var_j], al   
            
    ; print endline
    lea dx, endline
    mov ah, 09    
    int 21h
    
    ; i++
    mov al, [var_i]
    inc al
    mov [var_i], al
    
    ; if i == 5 goto EXIT
    cmp al, 5h
    je EXIT
    
    ; else loop back
    jmp L1
    
EXIT:
    ; exit program