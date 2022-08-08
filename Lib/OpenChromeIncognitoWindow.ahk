; #NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; ; #Warn  ; Enable warnings to assist with detecting common errors.
; SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
; SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


OpenChromeIncognitoWindow() {
  incog := "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe --incognito "
  run % winExist("ahk_class Chrome_WidgetWin_1") ? incog . "--new-window " : incog
  Sleep, 1000
  WinMaximize, ahk_class Chrome_WidgetWin_1
}