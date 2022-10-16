.MODEL SMALL
.DATA
var_a DB 3d ;A = 3
var_b DB 2d ;B = 2
var_c DB 2d ;C = 2
var_d DB 1d ;D = 1
var_e DB 1d ;E = 1
var_f DB 3d ;F = 3
var_g DB 3d ;G = 3
var_res DB ? ;RES = NULL
msg DB "Result: $"
.CODE
;moving DATA to data segment
MOV ax, @data
MOV ds, ax
;bl=A+B
MOV bl, var_a
ADD bl, var_b
;bl=A+B-(C+D)
MOV bh, var_c
ADD bh, var_d
SUB bl, bh
;bl=A+B-(C+D)-E
SUB bl, var_e
;bl=A+B-(C+D)-E+(F-G)
MOV bh, var_f
SUB bh, var_g
ADD bl, bh
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