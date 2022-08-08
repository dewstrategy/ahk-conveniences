#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

/* Legend:
╔════════════════╦═════════════╦═══════════════╦═══════╗
║    Num Lock    ║             ║               ║       ║
║   "Main" key   ║      /      ║       *       ║   —   ║
║                ║             ║               ║       ║
╠════════════════╬═════════════╬═══════════════╬═══════╣
║        7       ║      8      ║       9       ║       ║
║  Open browser  ║  Volume Up  ║ PL Wiktionary ║       ║
║ incognito mode ║             ║               ║       ║
╠════════════════╬═════════════╬═══════════════╣   +   ║
║        4       ║      5      ║       6       ║       ║
║ Previous Track ║  Play/Pause ║   Next track  ║       ║
║                ║             ║               ║       ║
╠════════════════╬═════════════╬═══════════════╬═══════╣
║        1       ║      2      ║       3       ║       ║
║                ║ Volume Down ║               ║       ║
║                ║             ║               ║       ║
╠════════════════╩═════════════╬═══════════════╣ Enter ║
║               0              ║               ║       ║
║          Volume Mute         ║       .       ║       ║
║                              ║               ║       ║
╚══════════════════════════════╩═══════════════╩═══════╝
*/

SetNumLockState, AlwaysOn ; Workaround fix of NumLock getting disabled

NumLock & Numpad7::OpenChromeIncognitoWindow()
NumLock & Numpad8::VolumeUp()
NumLock & Numpad9::PLWiktionary()
NumLock & Numpad4::PreviousTrack()
NumLock & Numpad5::PlayOrPause()
NumLock & Numpad6::NextTrack()
NumLock & Numpad2::VolumeDown()
NumLock & Numpad0::VolumeMute()