#SingleInstance force

`::

    WinActivate, Microsoft Excel
    Sleep, 200
    Send, {Home}{Right}
    Sleep, 200
    Send, {LCtrl down}c{LCtrl up}
    Sleep, 200
    WinActivate, ahk_class MozillaWindowClass
    Sleep, 200
    Send, {LCtrl down}w{LCtrl up}
    Sleep, 200
    Send, {'}{LCtrl down}v{LCtrl up}
    Sleep, 200
    Send, {LCtrl down}{ENTER}{LCtrl up}
    Sleep, 200
    Send, {LCtrl down}{Tab}{LCtrl up}
    Sleep, 3000
    Send, {LCtrl down}f{LCtrl up}
    Sleep, 200
    Send, field information
    Sleep, 200
    Send, {Esc}
    Sleep, 200
    Send, {Shift down}{Tab}{Shift up}{Enter}
    Sleep, 3000
    Send, {LCtrl down}f{LCtrl up}
    Sleep, 200
    Send, VP User
    Sleep, 200
    Send, {Esc}
    Sleep, 200
    Send, {Tab}{Shift down}{End}{Shift up}
    Sleep, 200
    Send, {LCtrl down}c{LCtrl up}
    WinActivate, Microsoft Excel
    Sleep, 200
    Send, {Tab 10}
    Sleep, 200
    IfEqual, clipboard, Hidden
    {
        Send, H
    }
    IfEqual, clipboard, Read-Only
    {
        Send, R
    }
    IfEqual, clipboard, Editable
    {
        Send, RW
    }
    IfEqual, clipboard, Required
    {
        Send, RQ
    }
    Sleep, 200
    WinActivate, ahk_class MozillaWindowClass
    
    Loop, 9
    {
        ;Sleep, 200
        Send, {Tab}{Shift down}{End}{Shift up}
        ;Sleep, 200
        Send, {LCtrl down}c{LCtrl up}
        WinActivate, Microsoft Excel
        ;Sleep, 200
        Send, {Tab}
        ;Sleep, 200
        IfEqual, clipboard, Hidden
        {
            Send, H
        }
        IfEqual, clipboard, Read-Only
        {
            Send, R
        }
        IfEqual, clipboard, Editable
        {
            Send, RW
        }
        IfEqual, clipboard, Required
        {
            Send, RQ
        }
        ;Sleep, 200
        WinActivate, ahk_class MozillaWindowClass
    }
    
    WinActivate, Microsoft Excel
    Send, {Home}{Down}{Right}
    
return

