.model small
.data
lineone db "*","$"
linetwo db 0ah,0dh,"***","$"
linethree db 0ah,0dh,"*****","$"
linefour db 0ah,0dh,"*******","$"
.code 
mov ax,@data
mov ds,ax 
mov ah,9
mov dx, offset lineone
int 21h 
mov ah,9
mov dx, offset linetwo
int 21h 
mov ah,9
mov dx, offset linethree
int 21h
mov ah,9
mov dx, offset linefour
int 21h
mov ah,4ch
int 21h