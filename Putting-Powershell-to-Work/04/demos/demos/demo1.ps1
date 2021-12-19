
#region Group-Object
# Install-Module PSTeachingTools -force

Get-Vegetable
Get-Vegetable | Group-Object -Property Color
Get-Vegetable | group color | get-member

#let's try with a real PowerShell command
Get-Process -IncludeUserName | Group Username
cls

#you can use any property
Get-Service winrm
Get-Service winrm | get-member -MemberType properties
Get-Service | Group StartType -NoElement
#be sure to read help

cls

#endregion

