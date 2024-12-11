;----------------------------------------
; SEQUENCIAL OUTPUT SWITCHING PROGRAM    |
; Created for PLC Tecomat TC 600         |
; by Skelen                              |
;----------------------------------------

; Definice proměnných
REG WORD PRDOBA      ; Pracovní doba

; Kontrola času (8:00 až 16:00)
LD S8               
GT 7                
LD S8                
LT 16                
AND                  
WR PRDOBA            

; Kontrola dne (úterý až sobota)
LD S9                
GT 1                 
LD S9                
LT 7                 
AND                  
AND PRDOBA           
WR Y0.0              

E 0       

;----------------------------------------
;             END - by Skelen            |
;----------------------------------------

