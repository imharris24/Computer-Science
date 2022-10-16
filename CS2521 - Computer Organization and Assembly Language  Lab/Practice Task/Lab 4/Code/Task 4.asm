.MODEL SMALL
.DATA
var_a DB 4d ;A = 4
var_b DB 1d ;B = 1
var_c DB 3d ;C = 3
var_d DB 2d ;D = 2
var_e DB 3d ;E = 3
var_f DB 4d ;F = 4
var_g DB 1d ;G = 1
var_res DB ? ;RES = NULL
msg DB "Result: $"
.CODE
;moving DATA to data segment
MOV ax, @data
MOV ds, ax
;bl=A-B
MOV bl, var_a
SUB bl, var_b
;bl=A-B-(C+D)
MOV bh, var_c
ADD bh, var_d
SUB bl, bh
;bl=A-B-(C+D)+E
ADD bl, var_e
;bl=A-B-(C+D)+E-(F-G)
MOV ch, var_f
SUB ch, var_g
SUB bl, ch
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