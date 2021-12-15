; Set the Escape hotkey to terminate the script.
HotKeySet("{ESC}", "_Terminate")
#include <MsgBoxConstants.au3>

Example()

Func Example()
    ; Initialize a Local variable.
    Local $aMgp = 0

    ; Create an endless loop, 1 will always be 1 therefore True.
    While 1
        ; Assign a Local variable the coords of the cursor (array).
        $aMgp = MouseGetPos()
		$iColor = PixelGetColor($aMgp[0], $aMgp[1] )

        ; Display a tooltip near the cursor with its coords.
        ToolTip("x: " & $aMgp[0] & ", y: " & $aMgp[1] & "   HEX Color: " & Hex($iColor, 6), $aMgp[0] + 10, $aMgp[1] + 10)

        ; Avoid high CPU usage.
        Sleep(50)
    WEnd
EndFunc   ;==>Example

Func _Terminate()
    Exit
EndFunc   ;==>_Terminate