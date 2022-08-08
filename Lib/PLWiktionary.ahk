#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


PLWiktionary() {
  StringLower, Clipboard, Clipboard ; lowercase the input
  Clipboard := Trim(Clipboard) ; trim spaces in the input
  incog := "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe --incognito "
  
  TempIcon = %A_ScriptDir%\Lib\PLWiktionaryFavicon.ico ; Set custom icon for the InputBox that will appear later
  Menu, Tray, Icon, %TempIcon%

  InputBox, InputVar , Enter a word to search on Wiktionary, , , 280, 100, A_ScreenWidth-273, , , , %Clipboard% ; showing the InputBox for text input
  InputVar := Trim(InputVar) ; trim leading and trailing spaces
  InputVar := StrReplace(InputVar, A_Space, "_") ; replace spaces with underscores (required for multiple words search on Wiktionary)
  if ErrorLevel ; if cancelled - do nothing
    {}
  else
    If (InputVar = "") {
      MsgBox, 48, , You didn't enter a word, 3
    }
    Else {
    run % winExist("ahk_class Chrome_WidgetWin_1") ? incog . "--new-window https://pl.wiktionary.org/wiki/" . InputVar : incog ; open Chrome incognito window with Wiktionary page with inserted searched term
    WinMaximize, ahk_class ; maximize the window
    }

  IfExist, %TempIcon% 
    Menu, Tray, Icon, * ; Reset the icon back to regular one
}