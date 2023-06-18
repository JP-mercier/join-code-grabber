5::
    {
        Loop, 3
        {
            click
        }
        Send, ^c
        text := Clipboard

        ; removing everything before "/join"
        pos_join := InStr(text, "/join ")
        text := Substr(text, pos_join)
        
        ; removing everything after "#" + 4
        pos_nbrs := InStr(text, "#")+4
        text := Substr(text, 1, pos_nbrs)

        Clipboard := text

        WinActivate, Destiny 2
        Send, {enter}
        Send ^v
        Send, {enter}
    }
Return

^0::Suspend
Return

