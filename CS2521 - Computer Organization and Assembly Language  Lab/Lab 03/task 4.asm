.model small

.data
str1 db "Enter a Number: $"
str2 db 0ah,0dh,"Enter another Number: $"
str3 db 0ah,0dh,"Result: $"
str4 db 0ah, 0dh, "Enter third Number: $"

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
          
;printing str2          
mov ah, 09
mov dx, offset str2
int 21h

;take input
mov ah, 01
int 21h

;moving input to cl resgister
mov cl, al

;printing str1
mov ah, 09
mov dx, offset str4
int 21h

;take input
mov ah, 01
int 21h

;moving input value to bl register
mov dl, al

;adding dl to cl
add cl, dl

;adding cl to bl
add bl, cl
sub bl, 96d

;printing str3
mov ah, 09
mov dx, offset str3
int 21h

;moving result to dl resiter
mov dl,bl

;printing result
mov ah, 02
int 21h
