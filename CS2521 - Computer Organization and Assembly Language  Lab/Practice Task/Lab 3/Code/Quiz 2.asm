.model small

;data segment
.data
str1 db "Enter a Number: $"
str2 db 0ah,0dh,"SUM: $"
str3 db 0ah,0dh,"DIFFERENCE: $"
val1 db 4d    

;code segment
.code    

;moving data to data segment
mov ax, @data
mov ds, ax

;printing str1
mov ah, 09
mov dx, offset str1
int 21h

;take input
mov ah, 01
int 21h

;moving input value to bl register
mov bl, al

;addition
mov cl, bl
add cl, val1

;adding ASCII 
;add cl
         
;printing str2          
mov ah, 09
mov dx, offset str2
int 21h

;moving result to dl resiter
mov dl,cl

;printing result
mov ah, 02
int 21h   

;subtraction
mov cl, bl
sub cl, val1

;adding ASCII 
;add cl
         
;printing str2          
mov ah, 09
mov dx, offset str3
int 21h

;moving result to dl resiter
mov dl,cl

;printing result
mov ah, 02
int 21h