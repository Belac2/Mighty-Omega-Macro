
end::reload

f1::
{  
    CoordMode Pixel, Window
    CoordMode Mouse, Window
    Sendinput, {w down}{w up}{w down}{s down}
	Sleep 6000
	Sendinput {w up}{s up}
    PixelGetColor, color1, 245, 133,
    Loop,
    {
        
        PixelSearch, x, y, 184, 132, 186, 134, color1,, Fast 
        if ErrorLevel = 0
        {
            if Rythm = 0
            {
                Rythm++
                Sleep 100
                Send r
            }
            Send {Click, 50}{Click, Right}
        } 
        Else
        {
            Rythm = 0
            Sendinput, {w down}{w up}{w down}{s down}
            Sleep 4000
            Sendinput {w up}{s up}
        }
        PixelSearch, x, y, 40, 132, 65, 134, color1,, Fast 
        if ErrorLevel = 0
        {
            Sleep 10000
        }
        PixelSearch, x, y, 70, 144, 80, 146, 0x444444,, Fast
        If ErrorLevel = 0
        {
            if eat <= 5
            {
                eat++
                Sleep 100
                Send 2
                Sleep 50 
                Send {Click}
                Sleep 5000
                Send 1
                Sleep 100
                Rythm = 0
            }
            If eat >= 5
            {
                Sleep 1000
                Send 1
                MouseMove, 118, 300, 5
                Sleep 1000
                SendInput, {VKC0}
                Sleep 500
                MouseMove, 118, 220, 5
                Sleep 100
                Send {Click down}
                Sleep 100
                MouseMove, 160, 562, 5
                Sleep 100
                Send {Click up}
                Sleep 100
                SendInput, {VKC0}
                MouseMove, 118, 300, 5
                Send 1
                Sleep 1000
                eat = 0
                Rythm = 0
            }
        }
        PixelSearch, x, y, 186, 565, 187, 566, 0xEBEBEB,, Fast
        If ErrorLevel = 0
        {
            Send !{f4}
            Reload
        }
        PixelSearch, x, y, 409,151, 411,153, 0x242424,, Fast
        If ErrorLevel = 0
        {
            Sleep 100
            Send e
            Sleep 100
        }
    }
}
Return

