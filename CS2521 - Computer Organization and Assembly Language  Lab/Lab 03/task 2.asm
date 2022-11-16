.model small

.data
str1 db "Result: $"
val1 db 4d
val2 db 2d

.code
;moving data to data segment
mov ax, @data
mov ds, ax

;take input variable
mov ah, val1

;moving input value to bl register
mov bl, al
          
;take input variable
mov ah, val2

;moving input to cl resgister
mov cl, al

;adding cl to bl
add bl, cl

;printing str1
mov ah, 09
mov dx, offset str1
int 21h

;adding ASCII value
add bl, 22d

;moving result to dl resiter
mov dl,bl

;printing result
mov ah, 02
int 21h