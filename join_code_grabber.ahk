5::
    {
        Loop, 3
        {
            click
        }
        Send, ^c
        text := Clipboard

        pos := InStr(text, "/join ")

        text := Substr(text, pos)
        Clipboard := text

        WinActivate, Destiny 2
        Send, {enter}
        Send ^v
        Send, {enter}
    }
Return

