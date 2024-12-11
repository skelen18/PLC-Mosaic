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

;----------------------------------------
; VYTVOŘENÍ ZDROJE ČASU (32s CYKLUS)
;----------------------------------------
P 0                    ; start programu
LD S13.2               ; načítání času v sekundách
LD 0                   
CTU HODINY             
GT 32                  
RES HODINY             ; reset časovače

;----------------------------------------
; ČASOVÁ LOGIKA PRO JEDNOTLIVÉ VÝSTUPY
;----------------------------------------
;*** OH - Oranžová hlavní ***
LD HODINY
EQ 0
RES OH
;
LD HODINY
EQ 14
SET OH
;
LD HODINY
EQ 16
RES OH
;
LD HODINY
EQ 30
SET OH

;*** ZH - Zelená hlavní ***
LD HODINY
EQ 0
SET ZH
;
LD HODINY
EQ 14
RES ZH

;*** CH - Červená hlavní ***
LD HODINY
EQ 0
RES CH
;
LD HODINY
EQ 16
SET CH

;*** ZV - Zelená vedlejší ***
LD HODINY
EQ 0
RES ZV
;
LD HODINY
EQ 18
SET ZV
;
LD HODINY
EQ 28
RES ZV

;*** OV - Oranžová vedlejší ***
LD HODINY
EQ 0
RES OV
;
LD HODINY
EQ 16
SET OV
;
LD HODINY
EQ 18
RES OV
;
LD HODINY
EQ 28
SET OV
;
LD HODINY
EQ 30
RES OV

;*** CV - Červená vedlejší ***
LD HODINY
EQ 0
SET CV
;
LD HODINY
EQ 18
RES CV
;
LD HODINY
EQ 30
SET CV

;*** ZP - Zelená pro chodce ***
LD HODINY
EQ 0
RES ZP
;
LD HODINY
EQ 18
SET ZP
;
LD HODINY
EQ 26
RES ZP

;*** CP - Červená pro chodce ***
LD HODINY
EQ 0
SET CP
;
LD HODINY
EQ 18
RES CP
;
LD HODINY
EQ 26
SET CP

E 0

;----------------------------------------
;             END - by Skelen            |
;----------------------------------------
