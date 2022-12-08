.MODEL SMALL
.DATA
var_a DB 7d ;A = 7
var_b DB 6d ;B = 6
var_c DB 5d ;C = 5
var_d DB 4d ;D = 4
var_e DB 3d ;E = 3
var_f DB 2d ;F = 2
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
;bl=A-B-(C-D)
MOV bh, var_c
SUB bh, var_d
SUB bl, bh
;bl=A-B-(C-D)-E
SUB bl, var_e
;bl=A-B-(C-D)-E-(F-G)
MOV bh, var_f
SUB bh, var_g
SUB bl, bh
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