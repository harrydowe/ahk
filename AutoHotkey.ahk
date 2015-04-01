#IfWinActive, ahk_class Chrome_WidgetWin_1
{
RAlt & Enter::Send !{Enter}
}
#IfWinActive

#IfWinExist, TeamSpeak 3
{
	~CapsLock Up::SetCapsLockState, off
}
#IfWinExist

#IfWinExist, Mumble
{
	~CapsLock Up::SetCapsLockState, off
}
#IfWinExist

#IfWinExist, Ventrilio
{
	~CapsLock Up::SetCapsLockState, off
}
#IfWinExist

#IfWinActive, Heroes of the Storm
{
	~LWin Up::return
	!Tab::Return
}
#IfWinActive

#IfWinActive, Counter-Strike: Global Offensive
{
	~LWin Up::return
	!Tab::Return
}
#IfWinActive
