#IfWinActive, ahk_class Chrome_WidgetWin_1
{
    RAlt & Enter::Send !{Enter}
}
#IfWinActive

#IfWinExist, Mumble ahk_class QWidget
{
    ~CapsLock Up::SetCapsLockState, off
}
#IfWinExist

#IfWinExist, TeamSpeak 3 ahk_class Qt5QWindowIcon
{
    ~CapsLock Up::SetCapsLockState, off
}
#IfWinExist

#IfWinExist, Ventrilo ahk_class #32770
{
    ~CapsLock Up::SetCapsLockState, off
}
#IfWinExist

#IfWinActive, ahk_class Valve001
{
    ~LWin Up::return
    !Tab::Return
}
#IfWinActive

#IfWinActive, ahk_class RiotWindowClass
{
    ~LWin Up::return
    !Tab::Return
}
#IfWinActive

; Adds play/pause on video click (like YouTube) to VLC.
#IfWinActive ahk_class QWidget
{

    ~LButton::
        ; Note: VLC window is already active here due to ~ in ~LButton
        MouseGetPos _, _, _, ctrl ; Get name of control under mouse pointer
        if (SubStr(ctrl, 1, 17) == "VLC video output ") ; Is it the VLC video control?
        {
            SendInput, {Space} ; Play/pause VLC
        }
        return
}
#IfWinActive

; Makes the Page Down button a menu macro to reset tilt.
#IfWinActive, Google Earth
{
    PgDn::Send {LAlt}v{Up}{Up}{Right}{Enter}
}
#IfWinActive


; Global hotkeys
{
    >#PgUp::Send {Volume_Up 2}
    >#PgDn::Send {Volume_Down 2}

    XButton1 & WheelUp::Send ^#{Left}
    XButton1 & WheelDown::Send ^#{Right}
    XButton1::Send {XButton1}
    XButton1 & MButton::Send #{Tab}
}

#IfWinActive, Warcraft III
{
    CapsLock::o
    `::a
    LWin Up::return

    NumpadHome::Send {Numpad7}
    NumpadLeft::Send {Numpad4}
    !NumpadHome::Send {Numpad8} ; Alt + Mouse 5 (Forward) // Inventory top right
    !NumpadLeft::Send {Numpad5} ; Alt + Mouse 4 (Back) // Inventory middle right
    !q::Send {Numpad7}
    !w::Send {Numpad8}
    !a::Send {Numpad4}
    !s::Send {Numpad5}
    !z::Send {Numpad1}
    !x::Send {Numpad2}

    ; Alt::return
}
#IfWinActive

#IfWinActive, Warcraft III Beta
{
    CapsLock::o
    `::a
    LWin Up::return

    NumpadHome::Send {Numpad7}
    NumpadLeft::Send {Numpad4}
    !NumpadHome::Send {Numpad8} ; Alt + Mouse 5 (Forward) // Inventory top right
    !NumpadLeft::Send {Numpad5} ; Alt + Mouse 4 (Back) // Inventory middle right
    !q::Send {Numpad7}
    !w::Send {Numpad8}
    !a::Send {Numpad4}
    !s::Send {Numpad5}
    !z::Send {Numpad1}
    !x::Send {Numpad2}

    ; Alt::return
}
#IfWinActive

; ^+Left::Send +{Home}
; ^Left::Send {Home}
; ^+Right::Send +{End}
; ^Right::Send {End}

; ^+Up::Send ^+{Home}
; ^Up::Send ^{Home}
; ^+Down::Send ^+{End}
; ^Down::Send ^{End}

#IfWinActive Brood War
{
    `::0

    Tab::9
    +Tab::+Tab

    F5::w
    F1::d

    F12::F5
}
#IfWinActive

; ; Modify the # to ! as appropriate (eg depending on DIP Switches)
; #+Left::Send +{Home}
; #Left::Send {Home}
; #+Right::Send +{End}
; #Right::Send {End}
