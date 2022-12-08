.model small
.data
msg0 db 'enter a number: ', '$'
msg1 db 0ah, 0dh, 'number is divisible by 5', '$'
msg2 db 0ah, 0dh, 'number is not divisible by 5',  '$'
endline db 0ah, 0dh, ' ', '$'
.code 
  
;initialize data segment  
mov ax,@data
mov ds,ax
     
;print input string
lea dx,msg0
mov ah,9
int 21h            

;taking input   
mov ah,1
sub al,30h
int 21h
  

;divide input by 5
mov bl,5
div bl
  
;moving modulus to al
mov al,ah
  
;comparing modulus to 0
cmp al,0
  
;if modulus greater than 0 jump to is1
jg not1 
 
;else run not1
is1:      
    ;print that number is divisible by 5
    lea dx,msg2
    mov ah,9
    int 21h
    ;jump to exit after printing
    jmp next 
    
;code block for 
not1:         
    ;print that number is not divisible by 5      
    lea dx,msg1
    mov ah,9
    int 21h

;code block for next number                
next:
     
 
                    ;SECOND NUMBER

;endline
mov ah,09
mov dx,offset endline
int 21h
 
     
;endline
mov ah,09
mov dx, offset endline
int 21h

;print input string
lea dx,msg0
mov ah,9
int 21h            

;taking input   
mov ah,1
sub al,30h
int 21h
  

;divide input by 5
mov bl,5
div bl
  
;moving modulus to al
mov al,ah
  
;comparing modulus to 0
cmp al,0
  
;if modulus greater than 0 jump to is1
jg not2 
 
;else run not1
is2:      
    ;print that number is divisible by 5
    lea dx,msg2
    mov ah,9
    int 21h
    ;jump to exit after printing
    jmp next2 
    
;code block for 
not2:         
    ;print that number is not divisible by 5      
    lea dx,msg1
    mov ah,9
    int 21h

;code block for next number                
next2:
   
   
   
                    ;THIRD NUMBER
                    
;endline
mov ah,09
mov dx,offset endline
int 21h 

;endline
mov ah,09
mov dx,offset endline
int 21h

;print input string
lea dx,msg0
mov ah,9
int 21h            

;taking input   
mov ah,1
sub al,30h
int 21h
  

;divide input by 5
mov bl,5
div bl
  
;moving modulus to al
mov al,ah
  
;comparing modulus to 0
cmp al,0
  
;if modulus greater than 0 jump to is1
jg not3 
 
;else run not1
is3:      
    ;print that number is divisible by 5
    lea dx,msg2
    mov ah,9
    int 21h
    ;jump to exit after printing
    jmp next3 
    
;code block for 
not3:         
    ;print that number is not divisible by 5      
    lea dx,msg1
    mov ah,9
    int 21h

;code block for next number                
next3: