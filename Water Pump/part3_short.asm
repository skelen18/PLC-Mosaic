;----------------------------------------
; LOGICAL CONTROL PROGRAM - PART 3 SHORT |
; Created for PLC Tecomat TC 600         |
; by Skelen                              |
;----------------------------------------

; Definice proměnných
#def A X0.0
#def B X0.1
#def C X0.2
#def Z Y0.7

; Logická operace
P 0
LDC C            
LD A             
OR               
WR Z             

E 0

;----------------------------------------
;             END - by Skelen            |
;----------------------------------------
