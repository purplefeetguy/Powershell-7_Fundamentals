#region Measure-Object
Get-Vegetable | Measure -Property count -sum

#look at a sample
Get-Process | select -first 1

Get-Process | measure -Property WS -sum -Average
#let's be selective

Get-Process |
measure -Property WS -sum -Average |
Select count,Sum,Average


cls
#endregion

#region Combining
Get-Process | Sort WS -Descending | Select -first 5

dir $env:temp -Recurse -file |
measure length -AllStats |
Select * -ExcludeProperty Property
  
cls

get-winevent -listlog * |
Sort FileSize -Descending |
Select -first 10 -Property Logname,RecordCount,FileSize

#let's discover
get-winevent -LogName system -MaxEvents 1 | select *

#what is causing problems?
# Install-Module Microsoft.PowerShell.ConsoleGuiTools -force

get-winevent -LogName system -MaxEvents 1000 |
Group Providername -NoElement |
Sort Count -Descending |
Select -first 10 |
Out-ConsoleGridView

cls

#endregion

