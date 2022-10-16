.MODEL SMALL
.DATA
var_a DB 1d ;A = 1
var_b DB 2d ;B = 2
var_c DB 3d ;C = 3
var_d DB 4d ;D = 4
var_e DB 5d ;E = 5
var_f DB 6d ;F = 6
var_g DB 7d ;G = 7
var_res DB ? ;RES = NULL
msg DB "Result: $"
.CODE
;moving DATA to data segment
MOV ax, @data
MOV ds, ax
;bl=(F+G)
MOV bl, var_g
ADD bl, var_f
;bh=(C+D)
MOV bh, var_c
ADD bh, var_d
;bl=(C+D)+(F+G)
ADD bl, bh
;bl=A+(C+D)+(F+G) 
ADD bl, var_a
;bl=A+B+(C+D)+(F+G)
ADD bl, var_b
;bl=A+B+(C+D)+E+(F+G) 
ADD bl, var_e
;storing result in RES
MOV var_res, bl
;printing msg
MOV ah, 09
LEA dx, msg
INT 21h
;printing RES
MOV ah, 02
MOV dl, var_res
INT 21h
;terminating program
MOV ah, 4ch
INT 21h    
