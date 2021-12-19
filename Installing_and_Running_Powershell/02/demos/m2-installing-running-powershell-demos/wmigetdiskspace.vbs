'WMIGETDISKSPACE.VBS
'v1.0
'Jeffery Hicks	jhicks@jdhitsolutions.com	http://www.jdhitsolutions.com
'Usage: cscript|wscript wmigetdiskspace.vbs [server]
'Notes:  Get free disk space usage for fixed local drives using WMI.

Dim objSet, wshell
On Error Resume Next

Set wshell=CreateObject("Wscript.Shell")
strSrv=Trim(wscript.arguments(0))

strQuery = "Select * from win32_logicaldisk where drivetype=3"
Set objSet=GetObject("winmgmts:\\" & strSrv).ExecQuery(strQuery)
if err.number<>0 then
 wshell.popup "Oops! Error connecting to " & UCase(strSrv) & vbCrlf & "make sure you are using valid " & _
 "credentials." & vbCrlf & "Error: " & err.number & " - " & err.description,5,"Disk Check Error",0+48
 wscript.quit
end if

For Each item In objSet
   PerFree=FormatPercent(item.FreeSpace/item.Size,2)
   o=o & item.DeviceID & "\" & VBTAB
   o=o & FormatNumber(item.Size/1048576,0) & Vbtab & FormatNumber(item.FreeSpace/1048576,0) & Vbtab & PerFree & Vbcrlf
next
WScript.Echo "Drive" & Vbtab & "Size (MB) Free (MB) %Free" & VbCrLf & o
set objSet=Nothing
set wshell=Nothing

wscript.quit