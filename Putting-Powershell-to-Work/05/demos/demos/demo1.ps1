#demo early filtering in PowerShell

#to install the Get-Vegetable command: Install-Module PSTeachingTools -force
#early filtering
Get-Vegetable
help Get-Vegetable
Get-Vegetable -name radish
#this parameter accepts wild cards. Not always true and don't assume help
#is correct. Never hurts to try
Get-Vegetable -name r*

#for anything more complex I'll have to use Where-Object
cls

help Get-Service
#using the name parameter
get-service m*
get-service m* -Exclude ms*

cls

dir c:\scripts\*.ps1
#you will see Filter parameters
dir c:\scripts -filter *.ps1
#this doesn't work that way you think
dir c:\scripts -include *.ps1
dir c:\scripts -include *.ps1 -exclude trial.ps1 -Recurse
cls
#parameters might depend on where you are running the command
#this fails
dir alias: -filter c*
dir alias: -name c*
#this works
dir alias: -include c* -Recurse
#this might be easiest
dir alias:\c*

cls

#but you need to read the help
get-ciminstance -ClassName Win32_SystemDriver
get-ciminstance -ClassName Win32_SystemDriver -filter "state = 'running' and servicetype='file system driver'"
#this makes a difference at scale

cls