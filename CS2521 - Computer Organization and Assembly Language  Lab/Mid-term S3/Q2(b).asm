; Write program in assembly language that keeps taking input from the user until 
; Enter Key is pressed (use ASCII value of enter key). Once the enter key is pressed, 
; print the smallest number entered by the user.

.MODEL SMALL

.DATA
msg_input DB 0ah,0dh,"Enter number: $"
msg_smallest DB 0ah,0dh,"Smallest number is $"
smallest_number DB "9" 

.CODE          

; get data segment
mov ax, @data
mov ds, ax

L1:        
    
    ; print input message
    lea dx, msg_input
    mov ah, 09
    int 21h
    
    ; get input
    mov ah, 01
    int 21h
    
    ; if input == enter key then exit
    cmp al, 13d
    je PRINT_SMALLEST
    
    ; else if input < smallest number
    mov cl, [smallest_number
    cmp al, cl
    jl STORE_NUMBER
    jmp L1

    STORE_NUMBER:    
        ; else SWAP & loop back
        mov [smallest_number], al 
        jmp L1
    
    
    
PRINT_SMALLEST:

    ; print input message
    lea dx, msg_smallest
    mov ah, 09
    int 21h
    
    mov ax, 0000h
    
    ; print smallest number
    mov dl, [smallest_number]
    mov ah, 02
    int 21h  
     