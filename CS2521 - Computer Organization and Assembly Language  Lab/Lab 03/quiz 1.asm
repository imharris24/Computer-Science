;print table of two till 10
.model small

;data segment
.data
lineone db "2 x 1 = 2","$"
linetwo db 0ah,0dh,"2 x 2 = 4","$"
linethree db 0ah,0dh,"2 x 3 = 6","$"
linefour db 0ah,0dh,"2 x 4 = 8","$"
linefive db 0ah,0dh,"2 x 5 = 10","$"
linesix db 0ah,0dh,"2 x 6 = 12","$"
lineseven db 0ah,0dh,"2 x 7 = 14","$"
lineeight db 0ah,0dh,"2 x 8 = 16","$"
linenine db 0ah,0dh,"2 x 9 = 18","$"
lineten db 0ah,0dh,"2 x 10 = 20","$"   

;code segment
.code                        

;moving data segment to ax
mov ax,@data
mov ds,ax        

;printing line 1 
mov ah,9
mov dx, offset lineone
int 21h          

;printing line 2 
mov ah,9
mov dx, offset linetwo
int 21h         

;printing line 3
mov ah,9
mov dx, offset linethree
int 21h    
     
;printing line 4
mov ah,9
mov dx, offset linefour
int 21h   
      
;printing line 5
mov ah,9
mov dx, offset linefive
int 21h 
        
;printing line 6
mov ah,9
mov dx, offset linesix
int 21h
         
;printing line 7
mov ah,9
mov dx, offset lineseven
int 21h 
        
;printing line 8
mov ah,9
mov dx, offset lineeight
int 21h 
        
;printing line 9
mov ah,9
mov dx, offset linenine
int 21h 
        
;printing line 10
mov ah,9
mov dx, offset lineten
int 21h
         
;terminating 
mov ah,4ch
int 21h
