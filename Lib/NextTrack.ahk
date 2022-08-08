#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

NextTrack() {
  DetectHiddenWindows, On
  PostMessage, 0x319,, 0xB0000,, ahk_exe Spotify.exe
  DetectHiddenWindows, Off
  ShowVolumeOSDPanel()
}