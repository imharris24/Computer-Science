; Write a program in assembly language that takes a single digit number from the user 

; If the input is even: User is asked to enter another number and the sum of both 
; numbers is displayed with an appropriate message.

; If the input is odd: Message is displayed, "input was odd"

.MODEL SMALL

.DATA
msg_input_number DB "Enter a number: $"
msg_even DB 0ah,0dh,"Number is even.",0ah,0dh,"$"  
msg_sum DB 0ah,0dh,"Sum of both numbers is $"
msg_odd DB 0ah,0dh,"Number is odd.$"
number1 DB 0 
number2 DB 0

.CODE

; get data segment
mov ax, @data
mov ds, ax

; print msg_input_number
lea dx, msg_input_number
mov ah, 09
int 21h

; take input of number 1
mov ah, 01
int 21h
sub al, 30h ; 30h = 48d ASCII

; mov input to variable
mov [number1], al

; remove garbage value
mov ax, 0000h

; div number1 by 2
mov al, [number1]
mov bl, 2
div bl

; now, ah = modulus
; if modulus == 0
cmp ah,0h
je EVEN ; if even 

jmp ODD ; else if odd


; jump here if number is even
EVEN:
    
    ; print msg_even
    lea dx, msg_even
    mov ah, 09
    int 21h
    
    ; print msg_input_number
    lea dx, msg_input_number
    mov ah, 09
    int 21h

    ; take input of number 2
    mov ah, 01
    int 21h
    sub al, 30h ; 30h = 48d ASCII

    ; mov input to variable
    mov [number2], al
    
    ; print msg_sum
    lea dx, msg_sum
    mov ah, 09
    int 21h
    
    ; sum => dl = number1 + number2
    mov dl, 0h
    mov dl, [number1]
    add dl, [number2]
    add dl, 30h ; 30h = 48d ASCII 
    
    ; print sum => dl
    mov ah, 02
    int 21h
            
    ; exit program
    jmp EXIT 
                  
; jump here if odd
ODD: 
    
    ; print msg_odd
    lea dx, msg_odd
    mov ah, 09
    int 21h 
    
    ; exit program   
    jmp EXIT     
    
EXIT:
    ; exit program
