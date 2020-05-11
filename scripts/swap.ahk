#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^q::

; saves the clipboard contents into the variable clipb
clipb := clipboard

;should retrieve highlighted text and replace with clipb
;simultaneously placing this new text onto the clipboard

Send, ^x
Send, %clipb%
return