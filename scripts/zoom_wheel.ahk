#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance, Force


; Text Details
;--------------------
Gui, Font, cWhite

; Buttons
;--------------------
Gui, Add, Button, x0 y0 w150 h150 gOpen_154_zoom, CS154
Gui, Add, Button, x150 y0 w150 h150 gOpen_138_zoom, CS138
Gui, Add, Button, x150 y150 w150 h150 gOpen_Lab_zoom, 154 Lab
Gui, Add, Button, x0 y150 w150 h150 gOpen_Discussion_zoom, 138 Discussion

; Gui Specs
;--------------------
Sysget, Mon, MonitorWorkArea
Gui, +AlwaysOnTop -Border
;Gui, Color, 23272a
Gui, Show, xCenter yCenter w300 h300, Window Name
return

; Labels
;--------------------
Open_154_zoom:
	Run, chrome.exe https://ucsb.zoom.us/j/716213607?pwd=R09QOTYwM0Z0SUthT21pSFdRa25nUT09
	ExitApp
	return

Open_138_zoom:
	Run, https://ucsb.zoom.us/j/582893168?pwd=SzhVa3VQRGJPWGtKdzFBYkFlano1QT09
	ExitApp
	return

Open_Lab_zoom:
	Run, chrome.exe https://ucsb.zoom.us/j/456838907?pwd=SU5HVldQUU1rOElJRmF1cDZKTUVNdz09
	ExitApp
	return

Open_Discussion_zoom:
	Run, chrome.exe https://ucsb.zoom.us/j/876959519?pwd=QXFrUmViWENidVM5OFc0UHJGODFjQT09
	ExitApp
	return

; Functions
;--------------------


; Hotkeys
;--------------------
^q::ExitApp
