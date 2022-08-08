#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#e::
	Gui, DarkRectangularFlashBlocker : -Caption +AlwaysOnTop +ToolWindow
	Gui, DarkRectangularFlashBlocker : Color, 202020
	Gui, DarkRectangularFlashBlocker : Show, x0 y0 w1920 h1050
	run, C:\WINDOWS\explorer.exe
	WinWait, Eksplorator plików
	WinMaximize, Eksplorator plików
	Sleep, 1000
	Gui, DarkRectangularFlashBlocker : Destroy

^ESC::Gui, DarkRectangularFlashBlocker : Destroy