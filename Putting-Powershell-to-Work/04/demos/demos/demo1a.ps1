#region Sort-Object

Get-Vegetable | sort-object -property Name
#or descending
Get-Vegetable | sort Name -Descending

#here's a challenge
Get-Vegetable | sort state
Get-Vegetable | Get-Member

Get-Vegetable | sort CookedState
#this particular property is special, and you'll see this in other objects
Get-Vegetable | get-member cookedState

#It might be hard to tell but this is an enumeration
#You can use the .NET trick
[enum]::GetNames("psteachingtools.vegstatus")
#if that works, then try this
[enum]::GetValues("psteachingtools.vegstatus") | Select Value__
#the sort is using this value
cls

get-service | sort status -Descending
#shouldn't Running be last?
get-service bits | get-member status
[enum]::GetNames("System.ServiceProcess.ServiceControllerStatus")
#the sort is using the corresponding values
cls

#you can do multiple sorts in the same order
Get-Process s* | Sort name,id

cls

#endregion