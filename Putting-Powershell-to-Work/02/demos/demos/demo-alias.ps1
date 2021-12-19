#region aliases

#using an alias
dir c:\
ls C:\
#the actual command
get-childitem c:\
cls

# PowerShell command alias
gsv

#this is the full command
Get-Service

#how did I know?
Get-Command gsv
Get-Command Get-Service

#region Get-Help
Help Get-Service

#or use the alias
help dir
#What commands work with aliases?
Get-Command -noun alias
cls

#endregion

#demo-running-commands.ps1