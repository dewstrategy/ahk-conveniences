#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^j::FolderToggleOpen("C:\Users\Admin\Downloads")

FolderToggleOpen(FolderPath) {
	For Window In ComObjCreate("Shell.Application").Windows {
		If (RTrim(Window.Document.Folder.Self.Path, "\") = RTrim(FolderPath, "\"))
			Return Window.Quit
	}
	Run, % FolderPath
}