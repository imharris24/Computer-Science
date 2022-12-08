.model small
.data
studentname db "Name: Muhammad Harris","$"
studentreg db 0ah,0dh,"Registration Number: BCS203193","$"
studentprogram db 0ah,0dh,"Program: Bachelors in Computer Science","$"
.code 
mov ax,@data
mov ds,ax 
mov ah,9
mov dx, offset studentname
int 21h 
mov ah,9
mov dx, offset studentreg
int 21h
mov ah,9
mov dx, offset studentprogram
int 21h
mov ah,4ch
int 21h
