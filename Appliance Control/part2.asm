;----------------------------------------
; SEQUENCIAL OUTPUT SWITCHING PROGRAM    |
; Created for PLC Tecomat TC 600         |
; by Skelen                              |
;----------------------------------------

; Definice proměnných

#REG WORD TEMP

; Postupné sepnutí výstupů od Y0.0 po Y0.7 během půl sekundy
LD S5                
EQ 5              
SET Y0.0           

LD S5              
EQ 95              
RES Y0.0             

; Kontrola pro každý výstup Y0.1 až Y0.7, postupně
LD S5               
EQ 10             
SET Y0.1           

LD S5               
EQ 90             
RES Y0.1      

; Opakování pro Y0.2
LD S5              
EQ 15             
SET Y0.2            

LD S5              
EQ 85               
RES Y0.2            

; Opakování pro Y0.3
LD S5             
EQ 20               
SET Y0.3          

LD S5              
EQ 80              
RES Y0.3        

; Opakování pro Y0.4
LD S5            
EQ 25          
SET Y0.4            

LD S5             
EQ 75            
RES Y0.4            

; Opakování pro Y0.5
LD S5                
EQ 30                
SET Y0.5             

LD S5                
EQ 70                
RES Y0.5             

; Opakování pro Y0.6
LD S5                
EQ 35                
SET Y0.6             

LD S5                
EQ 65                
RES Y0.6             

; Opakování pro Y0.7
LD S5                
EQ 40               
SET Y0.7  

LD S5                
EQ 60                
RES Y0.7             


E 0         

;----------------------------------------
;             END - by Skelen            |
;----------------------------------------

