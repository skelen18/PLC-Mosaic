;----------------------------------------
; LOGICAL CONTROL PROGRAM - PART 4 LONG  |
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

; 1
LDC A            
ANC B             
ANC C            
ANC F            

; 3
LDC A          
ANC B             
AND C            
ANC F            
OR               

; 5
LDC A            
AND B          
ANC C             
ANC F            
OR                

; 6
LDC A             
AND B           
ANC C            
AND F           
OR                

; 7
LDC A          
AND B            
AND C             
ANC F             
OR                

; 8
LDC A            
AND B            
AND C            
AND F          
OR                

; 9
LD A             
ANC B             
ANC C            
ANC F         
OR               

; 10
LD A           
ANC B            
ANC C           
AND F           
OR              

; 12
LD A            
ANC B             
AND C            
AND F             
OR                

; 13
LD A            
AND B           
ANC C           
ANC F            
OR               

; 15
LD A           
AND B           
AND C            
ANC F            
OR              

WR Z              

E 0

;----------------------------------------
;             END - by Skelen            |
;----------------------------------------
