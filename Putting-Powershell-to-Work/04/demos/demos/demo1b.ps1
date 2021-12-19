#region Select-Object

#objects

Get-Vegetable | Select -first 3

# or select properties
#Property is positional
Get-Vegetable | Select -property Count,Name,State
#why did that fail?

#here's a handy discovery technique
Get-Vegetable | Select -first 1 -Property *
#see the true property name?
Get-Vegetable | Select Count,Name,CookedState

cls
#let's try with regular commands
get-service | select Name,StartType
get-winevent -listlog System
get-winevent -listlog System | select *

get-winevent -listlog * | Select Logname,Recordcount,MaximumSizeInBytes,FileSize |
Out-GridView

cls
#endregion
