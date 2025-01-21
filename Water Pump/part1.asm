;----------------------------------------
; LOGICAL CONTROL PROGRAM - PART 1       |
; Created for PLC Tecomat TC 600         |
; by Skelen                              |
;----------------------------------------

; Definice proměnných
#def A X0.0
#def B X0.1
#def C Y0.7

; Logická operace
P 0
LDC A             
ANC B         
LDC A           
AND C            
OR            
WR C          

E 0

;----------------------------------------
;             END - by Skelen            |
;----------------------------------------
