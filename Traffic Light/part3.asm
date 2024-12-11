;----------------------------------------
; TRAFFIC LIGHT CONTROL TIMING PROGRAM   |
; Created for PLC Tecomat TC 600         |
; by Skelen                              |
;----------------------------------------

; DEFINICE VÝSTUPŮ
#def CH Y0.0      ; červená hlavní
#def OH Y0.1      ; oranžová hlavní
#def ZH Y0.2      ; zelená hlavní
#def CV Y0.3      ; červená vedlejší
#def OV Y0.4      ; oranžová vedlejší
#def ZV Y0.5      ; zelená vedlejší
#def CP Y0.6      ; červená pro chodce
#def ZP Y0.7      ; zelená pro chodce

; DEFINICE REGISTRŮ
#REG WORD HODINY  ;časovač
#def VYSTUPY Y0 
#REG WORD OV1     ; Pomocný registr pro oranžovou vedlejší

;****************************************
; VYTVOŘENÍ ZDROJE ČASU (32s CYKLUS)
;****************************************
P 0                    ; start programu
LD S13.2               ; načítání času v sekundách
LD 0                   
CTU HODINY             
GT 32                  
RES HODINY             ; reset časovače

;****************************************
; ČASOVÁ LOGIKA PRO JEDNOTLIVÉ VÝSTUPY
;****************************************
;*** ZH - Zelená hlavní ***
LD HODINY
LT 14
WR ZH

;*** OH - Oranžová hlavní ***
LD HODINY
GT 13
LD HODINY
LT 15
AND
LD HODINY
GT 30
OR
WR OH

;*** CH - Červená hlavní ***
LD HODINY
GT 14
LD HODINY
LT 32
AND
WR CH

;*** ZV - Zelená vedlejší ***
LD HODINY
GT 16
LD HODINY
LT 29
AND
WR ZV

;*** OV - Oranžová vedlejší ***
LD HODINY
GT 15
LD HODINY
LT 17
AND
WR OV1
LD HODINY
GT 28
LD HODINY
LT 30
AND
OR OV1
WR OV

;*** CV - Červená vedlejší ***
LD HODINY
LT 17
AND
LD HODINY
GT 30
OR
WR CV

;*** ZP - Zelená pro chodce ***
LD HODINY
GT 17
LD HODINY
LT 26
AND
WR ZP

;*** CP - Červená pro chodce ***
LD HODINY
LT 18
AND
LD HODINY
GT 25
OR
WR CP

E 0

;----------------------------------------
;             END - by Skelen            |
;----------------------------------------