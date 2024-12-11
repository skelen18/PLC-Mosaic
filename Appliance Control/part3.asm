;----------------------------------------
; SEQUENCIAL OUTPUT SWITCHING PROGRAM   |
; Created for PLC Tecomat TC 600         |
; by Skelen                              |
;----------------------------------------

; Definice proměnných
REG WORD TEMP      

; Postupné sepnutí výstupů od Y0.0 po Y0.7 během půl sekundy
; Opakování pro každý výstup od Y0.0 až Y0.7

; Y0.0
LD S5                
EQ 5                 
SET Y0.0           

LD S5                
EQ 10               
RES Y0.0            

LD S5              
EQ 90                
SET Y0.0             

LD S5                
EQ 95               
RES Y0.0             

; Y0.1
LD S5                
EQ 10                
SET Y0.1             

LD S5               
EQ 15                
RES Y0.1             

LD S5                
EQ 85                
SET Y0.1            

LD S5              
EQ 90                
RES Y0.1            

; Y0.2
LD S5                
EQ 15                
SET Y0.2             

LD S5             
EQ 20              
RES Y0.2          

LD S5                
EQ 80               
SET Y0.2             

LD S5                
EQ 85              
RES Y0.2            

; Y0.3
LD S5               
EQ 20                
SET Y0.3             

LD S5               
EQ 25             
RES Y0.3            

LD S5               
EQ 75              
SET Y0.3          

LD S5               
EQ 80               
RES Y0.3             

; Y0.4
LD S5               
EQ 25              
SET Y0.4             

LD S5             
EQ 30               
RES Y0.4             

LD S5                
EQ 70                
SET Y0.4             

LD S5               
EQ 75                
RES Y0.4           

; Y0.5
LD S5               
EQ 30                
SET Y0.5            

LD S5               
EQ 35                
RES Y0.5            

LD S5                
EQ 65              
SET Y0.5            

LD S5                
EQ 70               
RES Y0.5             

; Y0.6
LD S5                
EQ 35              
SET Y0.6            

LD S5               
EQ 40              
RES Y0.6          

LD S5             
EQ 60               
SET Y0.6             

LD S5                
EQ 65                
RES Y0.6           

; Y0.7
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
