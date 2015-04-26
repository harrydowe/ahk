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
