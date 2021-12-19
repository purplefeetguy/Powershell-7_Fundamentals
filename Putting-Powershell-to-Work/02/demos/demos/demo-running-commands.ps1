#region Running commands

Get-Process
cls
# The *-Vegetable commands are in the PSTeachingTools module which you can install
# Import-Module PSTeachingTools -force
# Answer yes to any prompts
Get-Vegetable
help Get-Vegetable
# parameters
Get-Vegetable -name corn
Get-Vegetable -RootOnly

# verbose
Get-Vegetable -Verbose

cls

Get-Service -name win* -verbose
#some parameters are positional
Get-Service win*

Help Get-Service -parameter name
Help Get-Service -parameter requiredServices
gsv bits -RequiredServices

cls

help Get-Process
# I want to get the current PowerShell process ID
# this fails
get-process $pid

help get-process -Parameter id
get-process -id $pid

cls

#some commands have default behavior, others have mandatory
Get-CimInstance

help Get-Ciminstance -parameter *name
Get-CimInstance win32_operatingsystem -verbose -ComputerName localhost

cls

#endregion