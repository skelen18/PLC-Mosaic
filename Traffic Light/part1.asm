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
; ČASOVÁ LOGIKA
;----------------------------------------
;** 0 SEKUND **
LD HODINY
EQ 0
RES VYSTUPY            ; Vynulování všech výstupů
SET ZH                 ; Hlavní - Zelená
SET CV                 ; Vedlejší - Červená
SET CP                 ; Chodci - Červená

;** 14 SEKUND **
LD HODINY
EQ 14
RES VYSTUPY
SET OH                 ; Hlavní - Oranžová
SET CV                 ; Vedlejší - Červená
SET CP                 ; Chodci - Červená

;** 16 SEKUND **
LD HODINY
EQ 16
RES VYSTUPY
SET CH                 ; Hlavní - Červená
SET ZV                 ; Vedlejší - Zelená
SET CP                 ; Chodci - Červená

;** 18 SEKUND **
LD HODINY
EQ 18
RES VYSTUPY
SET CH                 ; Hlavní - Červená
SET OV                 ; Vedlejší - Oranžová
SET ZP                 ; Chodci - Zelená

;** 26 SEKUND **
LD HODINY
EQ 26
RES VYSTUPY
SET CH                 ; Hlavní - Červená
SET ZV                 ; Vedlejší - Zelená
SET CP                 ; Chodci - Červená

;** 28 SEKUND **
LD HODINY
EQ 28
RES VYSTUPY
SET OH                 ; Hlavní - Oranžová
SET CV                 ; Vedlejší - Červená
SET CP                 ; Chodci - Červená

;** 30 SEKUND **
LD HODINY
EQ 30
RES VYSTUPY
SET ZH                 ; Hlavní - Zelená
SET CV                 ; Vedlejší - Červená
SET CP                 ; Chodci - Červená

E 0

;----------------------------------------
;             END - by Skelen            |
;----------------------------------------