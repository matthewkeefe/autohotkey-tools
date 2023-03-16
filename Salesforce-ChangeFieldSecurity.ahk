#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force ; Only allow one copy to run
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^1::        ; open next field
  Loop 20 {
    Send, {CTRL DOWN}f{CTRL UP}
    Sleep, 300
    Send, __c{ENTER}{ESC}
    Sleep, 300
    Send, {SHIFT DOWN}{Tab}{SHIFT UP}
    Sleep, 300
    Send, {CTRL DOWN}{ENTER}{CTRL UP}
    Sleep, 300
    Send, {CTRL DOWN}{Tab}{CTRL UP}
    Sleep, 2000   ; custom field page load
    Send, {CTRL DOWN}f{CTRL UP}
    Sleep, 300
    Send, Detail{ENTER}{ESC}
    Sleep, 300
    Send, {Tab 2}{ENTER}
    Sleep, 2000   ; set field level security page load              
    Send, {CTRL DOWN}f{CTRL UP}
    Sleep, 300
    Send, Visible{ENTER}{ESC}
    Sleep, 300
    Send, {SHIFT DOWN}{Tab}{SHIFT UP}
    Sleep, 300
    Send, {SPACE}
    Sleep, 300
    Send, {CTRL DOWN}f{CTRL UP}
    Sleep, 300
    Send, Set Field-Level Security{ENTER}{ESC}{Tab 2}
    Sleep, 300
    Send, {ENTER}
    Sleep, 500
    Send, {CTRL DOWN}w{CTRL UP}
    Sleep, 2000
  }
return

^9::				; open first setting
	Loop 1 {
		
		Loop 35 {
			Send, {CTRL DOWN}f{CTRL UP}
			Sleep, 200
			Send, ADPDS
			Sleep, 500
			Send, {ESC}{Tab}
			Sleep, 200
			Send, {CTRL DOWN}
			Send, {ENTER}
			Send, {CTRL UP}
			Sleep, 500
		}
		
		Send, {CTRL DOWN}{SHIFT DOWN}{Tab}{CTRL UP}{SHIFT UP}
		Sleep, 1500

		Loop 35 {
			PixelSearch, Px, Py, 990, 400, 1000, 420, 0x97604B, 10, Fast
			
			if ErrorLevel
				Click 997 410
			else
				Sleep, 100
			
			Sleep, 200
			;Click 1175 410
			Sleep, 200
			Click 760 320
			Sleep, 200
			Send, ^w
			Sleep, 500
		}

		Send, {F5}
		Sleep, 3000
		
		Click 10 100
		Sleep, 500
		Send, {CTRL DOWN}f{CTRL UP}
		Sleep, 200
		Send, field:
		Sleep, 500
		Send, {ESC}{Tab}
		Send, {DOWN}
		Sleep, 200
		Send, {ENTER}
		Sleep, 200
	}
return

^2::				; click visible, save, close window
	PixelSearch, Px, Py, 990, 400, 1000, 420, 0x97604B, 10, Fast
	if ErrorLevel
		Click 997 410
	else
		Sleep, 100
	Sleep, 200
	;Click 1175 410
	Sleep, 200
	Click 760 320
	Sleep, 200
	Send, ^w	
return

^3::				; open next setting in a new tab
	Send, {Tab}
	Sleep, 200
	Send, {CTRL DOWN}
	Send, {SHIFT DOWN}
	Send, {ENTER}
	Send, {SHIFT UP}
	Send, {CTRL UP}
return

^4::				; utility
			Send, {CTRL DOWN}f{CTRL UP}
			Sleep, 200
			Send, ADPDS
			Sleep, 500
			Send, {ESC}{Tab}
			Sleep, 200
			Send, {CTRL DOWN}
			Send, {ENTER}
			Send, {CTRL UP}
return

^Escape::
	ExitApp
return