end::reload

f1::
loop,
{
    CoordMode, Pixel, Window
    CoordMode, Mouse, Window
    Click , 340, 400
    Sleep 200
    Click , 340, 370
    Sleep 200
    Click , 340, 340
    Sleep 200
    Click , 340, 310
    Sleep 200
    Click , 340, 280
    Sleep 200
    Click , 340, 250
    Sleep 200
    Click , 410, 355
    StartTime := A_TickCount
    Loop ,
    {
        ImageSearch, x , y , 250 , 220 , 560 , 440, *30 %A_ScriptDir%\bin\yellow.png ;0xB1EA40
        if (errorlevel = 0)
        {
            MouseClick, Left,  x+5, y+5
            Sleep 100
            Click, 400, 500
        }
    } Until A_TickCount - StartTime > 62000
    StartTime2 := A_TickCount
    Loop ,
    {
        Click, 400, 390
        Sleep 16
    } Until A_TickCount - StartTime2 > 5000
    Sleep 7000
}
return