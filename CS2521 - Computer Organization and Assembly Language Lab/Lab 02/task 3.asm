.model small
.data
lineone db "* ************************ *","$"
linetwo db 0ah,0dh,"** *********** *********** **","$"
linethree db 0ah,0dh,"*** ********** ********** ***","$"
linefour db 0ah,0dh,"**** ********* ********* ****","$"
linefive db 0ah,0dh,"***** ******** ******** *****","$"
linesix db 0ah,0dh,"****** ******* ******* ******","$"
lineseven db 0ah,0dh,"******* ****** ****** *******","$"
lineeight db 0ah,0dh,"******** ***** ***** ********","$"
linenine db 0ah,0dh,"********* **** **** *********","$"
lineten db 0ah,0dh,"********** *** *** **********","$"
lineeleven db 0ah,0dh,"*********** ** ** ***********","$"
linetwelve db 0ah,0dh,"************* *************","$"
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
 
mov ah,9
mov dx, offset linefive
int 21h
mov ah,9
mov dx, offset linesix
int 21h
mov ah,9
mov dx, offset lineseven
int 21h
mov ah,9
mov dx, offset lineeight
int 21h
mov ah,9
mov dx, offset linenine
int 21h
mov ah,9
mov dx, offset lineten
int 21h
mov ah,9
mov dx, offset lineeleven
int 21h
mov ah,9
mov dx, offset linetwelve
int 21h
mov ah,4ch
int 21h
mov ah,4ch
int 21h
