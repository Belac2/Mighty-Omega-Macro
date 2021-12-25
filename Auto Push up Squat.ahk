eat = 1
InputBox, wait, Enter Cooldown, on Squat and Push Up put in number in miliseconds 1000 = 1 Seconds
if ErrorLevel = 1
{
    ExitApp
}
return
F1::
CoordMode , Pixel, Window
SendInput , {w down}{w up}{w down}{s down}
Sleep 6000
PixelGetColor , color1, 150, 134,
SendInput , {w up}{s up}
Return
end::reload

F2::
Send 1
Loop,
{
    PixelSearch , x, y, 40, 133, 45, 135, color1, 3, Fast
    If ErrorLevel = 0
    {
        Sleep 12000
    }
    else
    {
        Send {Click}
        Sleep %wait%
    }
    PixelSearch , x, y, 70, 144, 80, 146, 0x444444, , Fast
    If ErrorLevel = 0
    {
        if eat = 1
        {
            temp++
            Send 2
            Sleep 50
            Send {Click}
            Sleep 5000
            Send 2
            Sleep 200
            Send 1
            if temp = 5
            {
            temp = 0
            eat = 2
            }
        }
        if eat = 2
        {
            temp++
            Send 3
            Sleep 50
            Send {Click}
            Sleep 5000
            Send 3
            Sleep 200
            Send 1
            if temp = 5
            {
            temp = 0
            eat = 3
            }
        }
        if eat = 3
        {
            temp++
            Send 4
            Sleep 50
            Send {Click}
            Sleep 5000
            Send 4
            Sleep 200
            Send 1
            if temp = 5
            {
            temp = 0
            eat = 4
            }
        }
        if eat = 4
        {
            temp++
            Send 5
            Sleep 50
            Send {Click}
            Sleep 5000
            Send 5
            Sleep 200
            Send 1
            if temp = 5
            {
            temp = 0
            eat = 5
            }
        }
        if eat = 5
        {
            temp++
            Send 6
            Sleep 50
            Send {Click}
            Sleep 5000
            Send 6
            Sleep 200
            Send 1
            if temp = 5
            {
            temp = 0
            eat = 6
            }
        }
        if eat = 6
        {
            temp++
            Send 7
            Sleep 50
            Send {Click}
            Sleep 5000
            Send 7
            Sleep 200
            Send 1
            if temp = 5
            {
            temp = 0
            eat = 7
            }
        }
        if eat = 7
        {
            temp++
            Send 8
            Sleep 50
            Send {Click}
            Sleep 5000
            Send 8
            Sleep 200
            Send 1
            if temp = 5
            {
            temp = 0
            eat = 8
            }
        }
        if eat = 8
        {
            temp++
            Send 9
            Sleep 50
            Send {Click}
            Sleep 5000
            Send 9
            Sleep 200
            Send 1
            if temp = 5
            {
            temp = 0
            eat = 9
            }
        }
        if eat = 9
        {
            temp++
            Send 0
            Sleep 50
            Send {Click}
            Sleep 5000
            Send 0
            Sleep 200
            Send 1
            if temp = 5
            {
            temp = 0
            eat = 10
            }
        }
        If eat = 10
        {
            Send !{f4}
            reload
        }
    }
}
return

