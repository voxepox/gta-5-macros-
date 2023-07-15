#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#NoEnv                          ; Recommended for performance and compatibility with future AutoHotkey releases.
SetWorkingDir %A_ScriptDir%     ; Ensures a consistent starting directory.
#IfWinActive ahk_class grcWindow  ; Disables hotkeys when alt-tabbed or GTA is closed.
#SingleInstance, force
;                                                               ———Assign Hotkey and Delay Values———

EWO := "1"     ;   Commit Suicide
BST := "Numpad0"                ;   Drops BST
ArmorKey := "F3"                ;  
RPGAmmoKey := "F5"               ;  
CeoStart := "NumpadDot"               ;  
CeoGhost := "Numpad3"               ;  
PassiveEwo := "F7"               ;  
RapidSniper := "LAlt"               ;  
MCCEO := "NumpadMult"               ;  
CEOMC := "NumpadDiv"               ;  
RPGReload := "3"               ;  
ORGTOP := "Numpad1"               ;  
NOORGTOP := "Numpad2"               ;  
Atomizer := "Q"               ;  
THERMALHELM := "Numpad9"          ; HAVE TO BE IN A CEO or MC
ChatSpam := "/"                ; Spams "CRY" In The Chat 
BribeAuthorities := "NumPad5"  ; Bribes The Cops
IntMenuDelay := 1             ; Sets value(ms) for delay for opening interaction menu.
KeySendDelay := 1              ; Sets value(ms) for delay between send key commands.
KeyPressDuration := 1           ; Sets value(ms) for duration each key press is held down.
;                                                                       —-Hotkey Code --

Hotkey, %EWO%, EWO     ;  
Hotkey, %ORGTOP%, ORGTOP     ;  
Hotkey, %NOORGTOP%, NOORGTOP     ;  
Hotkey, %BST%, BST     ;  
Hotkey, %THERMALHELM%, THERMALHELM    ; CEO OR MC
Hotkey, %ArmorKey%, Armor       ;  
Hotkey, %RPGAmmoKey%, RPGAmmo     ;  
Hotkey, %CeoStart%, CEO     ;  
Hotkey, %CeoGhost%, Ghost     ;  
Hotkey, %RPGReload%, RapidRPG     ;  
Hotkey, %MCCEO%, MCCEO     ;  
Hotkey, %CEOMC%, CEOMC     ;  
Hotkey, %RapidSniper%, RapidSniper     ;  
Hotkey, %PassiveEwo%, PassiveEwo     ;  
Hotkey, %Atomizer%, Atomizer  ;  
HotKey, %ChatSpam%, ChatSpam  ;
HotKey, %BribeAuthorities%, BribeAuthorities ;
F1::suspend
;
Return
setkeydelay, KeySendDelay, KeyPressDuration             ; Sets delay(ms) between keystrokes issued. Arguments are delay between keystrokes and press duration, respectively.
; 
;                                                                         —-Macros --
;     Shoot Atmoizer Fast
Atomizer:    ;
Send {5}{6}   ;
return     ;

;     THERMAL HELMET
THERMALHELM:                      ;
Send {m}          ;
sleep, IntMenuDelay       ;
Send {Down}{Down}{Down}{Down}{Return}{Down}{Return}{Down}{Down}{Down}{Down}{Space}{M}   ;
return     ;
;                                                                            —-Passive EWO-
;                                                                       Kill Your Self Passive
PassiveEwo:                     ; EWO Macro
Send {m}                        ; 
sleep, IntMenuDelay             ;  
;  
Send {C down}{Up}{Up}{CapsLock}{CapsLock}{Return}{Return}{C up}    ; Keystrokes to EWO
return                          ;  
;

;											-Sniperrrr Quick Shot-
RapidSniper:                     ; Start CEO Macro
Send {5}{Ctrl}    ; Keystrokes to CEO
return                          ;  
;
;															--RPGRAPID--
;                                       --Bind heavy to4 and explosives to 5-- have rpg 2nd in heavy list--
;                              -- or move to it with the 4 button until you hit the rpg, then do this --
;											-must press 3 each time before you shoot-
RapidRPG:                     ; Start RPG Macro
Send {5}{4}    ; Keystrokes to CEO
return                          ;  
;
;															--CEO-GHOST--
Ghost:                     ; Start Ghost Macro
Send {m}                        ; 
sleep, IntMenuDelay             ;  
Send {Enter}{Up}{Up}{Up}{Enter}{Up}{Up}{Up}{Enter}    ; Keystrokes to CEO
return                          ;  
;
;																--Start-CEO---
CEO:                     ; Start CEO Macro
Send {m}                        ; 
sleep, IntMenuDelay             ;  
Send {Down}{Down}{Down}{Down}{Down}{Down}{Enter}{Enter}{Enter}    ; 
return                          ;  
;                                                                            —-EWO-
;                                                                Shoot a weapon or punch first for fast
EWO:                     ; EWO Macro
Send {m}                        ; 
sleep, IntMenuDelay             ;  
;  
Send {C down}{Up}{Up}{Return}{Return}{C up}    ; Keystrokes to EWO
return                          ;  
;                                                                            —-Bullshark—-
;                                                               Drop dat testo
BST:                                 ; BST Macro
Send {m}                        ; 
sleep, IntMenuDelay             ;  
;  
Send {Enter}{Up}{Up}{Up}{Enter}{Down}{Enter}    ; Keystrokes to drop that shit
return                          ;  
;                                                                            —-Armor—-
;                                                               Drop some armor
Armor:                          ; Armor Macro
Send {m}                        ; 
sleep, IntMenuDelay             ;  
;  
Send {Enter}{Up}{Up}{Up}{Enter}{Up}{Up}{Up}{Up}{Enter}           ; 
return                          ;  

;                                                                     —-RpgAmmo—-
;                                            Buys rpg ammo, must be in CEO/MC and have rpg equipped
RPGAmmo:                         ; 
Send {m}                        ; 
sleep, IntMenuDelay             ;  
;  
Send {Down}{Down}{Down}{Enter}{Down}{Down}{Down}{Down}{Down}{Down}{Enter}{Left}{Down}{Right}{Down}{Down}{Enter}{Up}{Up}{Right}{Right}{Down}{Down}{Enter}{m}                         ;  
return                                                                  ; 
;
;                                                                     —-CeotoMc--
;                                                  Swaps CEO to MC
MCCEO:                         ; 
Send {m}                        ; 
sleep, IntMenuDelay             ;  
;  
Send {Enter}{Up}{enter}
sleep, IntMenuDelay             ;  
Send {enter}                         ; 
sleep, IntMenuDelay             ;  
sleep, IntMenuDelay             ;  
sleep, IntMenuDelay             ;  
Send {m}                        ; 
sleep, IntMenuDelay             ;  
Send {down}{down}{down}{down}{down}{down}{enter}{enter}{enter}
return                                                                  ; 

;                                                                     —Mc to Ceo—-
;                                             Swaps MC to CEO
CEOMC:                         ; 
Send {m}                        ; Opens Menu
sleep, IntMenuDelay             ;  
Send {Enter}{Up}{enter}
sleep, IntMenuDelay             ;  
Send {enter}                         ; 
sleep, IntMenuDelay             ;  
sleep, IntMenuDelay             ;  
sleep, IntMenuDelay             ;  
Send {m}                        ; 
sleep, IntMenuDelay             ;  
Send {down}{down}{down}{down}{down}{down}{down}{enter}{enter}{enter}
return                                                                  ;  
;                                                      --ORG/MC to Passive --
ORGTOP:                         ; 
Send {m}                        ; 
sleep, IntMenuDelay             ;  
Send {Enter}{Up}{enter}
sleep, IntMenuDelay             ;  
Send {enter}                         ;  
sleep, IntMenuDelay             ;  
sleep, IntMenuDelay             ;  
sleep, IntMenuDelay             ;  
Send {m}                        ; 
sleep, IntMenuDelay             ;  
Send {up}{enter}{esc}
return                                                                  ;  
;                                                         -No org/mc to passive -
NOORGTOP:                         ; 
Send {m}                        ; 
sleep, IntMenuDelay             ;  	
Send {Up}{enter}{esc}
return     
;
ChatSpam:
Send {T}
sendinput, cry
Send {Enter}
return
;
BribeAuthorities:
Send {M}
sleep, InMenuDelay
Send {Enter}{Up}{Up}{Up}{Enter}{Up}{Up}{Enter}
return                                                      ;  
