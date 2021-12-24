
end::reload

f1::
Loop,
{
	Send {Click}
	Sleep 300
	Send 2{Click}
	Sleep 200
	Send 1r
	Sleep 1800
	Loop, 4
	{
		Loop, 4
		{
			Sleep 1050
			Send {Click}
		}
		Sleep 1050
		Send {Click, Right}
		Sleep 150
	}
	Sleep 1100
	Send {Click}1{Click 10}
	Sleep 200
}
Return
