;----------------------------------------
; LOGICAL CONTROL PROGRAM - PART 4 SHORT |
; Created for PLC Tecomat TC 600         |
; by Skelen                              |
;----------------------------------------

; Definice proměnných
#def A X0.0
#def B X0.1
#def C X0.2
#def F X0.3
#def Z Y0.7

; Logická operace
P 0

LDC C             
ANC F            

LD B             
ANC F             
OR               

LDC A           
AND B             
OR         

LDC A           
ANC F           
OR            

LD A             
ANC B           
AND F           
OR            

WR Z             

E 0

;----------------------------------------
;             END - by Skelen            |
;----------------------------------------
