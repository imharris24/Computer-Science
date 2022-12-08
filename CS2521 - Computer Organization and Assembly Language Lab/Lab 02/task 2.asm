.model small
.data
lineone db "This","$"
linetwo db 0ah,0dh,"    is","$"
linethree db 0ah,0dh,"       my","$"
linefour db 0ah,0dh,"           name","$"
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
