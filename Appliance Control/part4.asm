;----------------------------------------
; SEQUENCIAL OUTPUT SWITCHING PROGRAM    |
; Created for PLC Tecomat TC 600         |
; by Skelen                              |
;----------------------------------------

; Definice proměnných 

#reg WORD MP1  ; minuta před 1. zapnutím
#reg WORD H1   ; hodina 1
#reg WORD MZ1  ; minuta za 1. zapnutím
#reg WORD MP2  ; minuta před 2. zapnutím
#reg WORD H2   ; hodina 2
#reg WORD MZ2  ; minuta za 2. zapnutím
#reg WORD MP3  ; minuta před 3. zapnutím
#reg WORD H3   ; hodina 3
#reg WORD MZ3  ; minuta za 3. zapnutím

P 0

; -------------- 1. zapnutí spotřebiče --------------
; od 100 minut (1h40min) do 350 minut (5h50min)

; MP1 
LD S7
GT 29  
LD S8
EQ 4   
AND
WR MP1  

; H1 
LD S8
GT 4   
LD S8
AND
WR H1  

; MZ1 
LD S7
LT 1S  
LD S8
EQ 8   
AND
WR MZ1  

; -------------- 2. zapnutí spotřebiče --------------
; od 450 minut (7h30min) do 700 minut (11h40min)

; MP2 
LD S7
GT 449  
LD S8
EQ 13  
AND
WR MP2  

; H2 
LD S8
GT 12 
LD S8
AND
WR H2 

; MZ2 
LD S7
LT 1S
LD S8
EQ 18  
AND
WR MZ2  

; -------------- 3. zapnutí spotřebiče --------------
; od 850 minut (14:10) do 1200 minut (20:00)

; MP3
LD S7
GT 849  
LD S8
EQ 23 
AND
WR MP3  

; H3
LD S8
GT 22  
LD S8
AND
WR H3  

; MZ3 
LD S7
LT 1S
LD S8
EQ 25  
AND
WR MZ3  

; Součet intervalů
LD MP1
OR H1
OR MZ1
OR MP2
OR H2
OR MZ2
OR MP3
OR H3
OR MZ3

; Pracovní dny a zapsání do výstupu
LD S9
LT 6   
AND
WR Y0.0  

E 0

;----------------------------------------
;             END - by Skelen            |
;----------------------------------------

