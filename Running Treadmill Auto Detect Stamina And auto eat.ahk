
; This script was originaly made by viva#6242



   eat = 1
   temp = 0
   ^F1::
   CoordMode , Pixel, Window
   SendInput , {w down}{w up}{w down}{s down}
   Sleep 6000
   PixelGetColor , color1, 150, 134,
   SendInput , {w up}{s up}
   Return
   
   ^F2::
   Loop ,
   {
      CoordMode , Click, Window
      Click , 520, 310
      Sleep 1000
      Click , 340, 370
      Sleep 100
      Click , 340, 340
      Sleep 100
      Click , 340, 310
      Sleep 100
      Click , 340, 280
      Sleep 100
      Click , 340, 250
      Sleep 100
      Click , 410, 355
      Sleep 3000
      StartTime := A_TickCount
      Loop ,
      {
         CoordMode , Pixel, Window
         CoordMode , Click, Window
         ImageSearch , FoundX, FoundY, 200, 240, 600, 300, *30 %A_ScriptDir%\bin\w.png
         if (errorlevel = 0)
         {
            Send w
         }
         ImageSearch , FoundX, FoundY, 200, 240, 600, 300, *30 %A_ScriptDir%\bin\a.png
         if (errorlevel = 0)
         {
            Send a
         }
         ImageSearch , FoundX, FoundY, 200, 240, 600, 300, *30 %A_ScriptDir%\bin\s.png
         if (errorlevel = 0)
         {
            Send s
         }
         ImageSearch , FoundX, FoundY, 200, 240, 600, 300, *30 %A_ScriptDir%\bin\d.png
         if (errorlevel = 0)
         {
            Send d
         }
         PixelSearch , x, y, 40, 133, 45, 135, color1, 3, Fast
         If ErrorLevel = 0
         {
            StartTime1 := A_TickCount
            Loop ,
            {
               Click , 409, 296
               Sleep 16
            } Until A_TickCount - StartTime1 > 5000
         }
      } Until A_TickCount - StartTime > 59000
      StartTime2 := A_TickCount
      Loop ,
      {
         Click , 409, 296
         Sleep 16
      } Until A_TickCount - StartTime2 > 6000
      PixelSearch , x, y, 70, 144, 80, 146, 0x444444, , Fast
      If ErrorLevel = 0
      {
         if eat = 1
         {
            temp++
            Sleep 1000
            Click , 410, 340
            Sleep 100
            Send 2
            Sleep 50
            Send {Click}
            Sleep 5000
       Send 2
       1 := A_TickCount
            Loop ,
            {
               Click , 409, 296
               Sleep 16
            } Until A_TickCount - 1 > 1000
            if temp = 5
            {
               temp = 0
               eat = 2
            }
         }
         if eat = 2
         {
            temp++
            Sleep 1000
            Click , 410, 340
            Sleep 100
            Send 3
            Sleep 50
            Send {Click}
            Sleep 5000
            Send 3
            2 := A_TickCount
            Loop ,
            {
               Click , 409, 296
               Sleep 16
            } Until A_TickCount - 2 > 1000
            if temp = 5
            {
               temp = 0
               eat = 3
            }
         }
         if eat = 3
         {
            temp++
            Sleep 1000
            Click , 410, 340
            Sleep 100
            Send 4
            Sleep 50
            Send {Click}
            Sleep 5000
            Send 4
       3 := A_TickCount
            Loop ,
            {
               Click , 409, 296
               Sleep 16
            } Until A_TickCount - 3 > 1000
            if temp = 5
            {
               temp = 0
               eat = 4
            }
            if eat = 4
            {
               temp++
               Sleep 1000
               Click , 410, 340
               Sleep 100
               Send 5
               Sleep 50
               Send {Click}
               Sleep 5000
               Send 5
      4 := A_TickCount
            Loop ,
            {
               Click , 409, 296
               Sleep 16
            } Until A_TickCount - 4 > 1000
               if temp = 5
               {
                  temp = 0
                  eat = 3
               }
            }
         }
         Sleep 19000
      }
   }
   Return
   end::Reload


