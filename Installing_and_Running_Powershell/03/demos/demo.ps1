#Return "This is a demo script file"

#what version are you running?
$PSversiontable

#Check GitHub
start https://github.com/powershell/powershell

#use my module
Find-Module PSReleaseTools

#install
Install-Module PSReleaseTools

#get current release
Get-PSReleaseCurrent

#save assets
Get-PSReleaseasset -Family Windows -Only64Bit
mkdir C:\PS7
Get-PSReleaseAsset -Family Windows -Only64Bit -Format msi | Save-PSReleaseAsset -Path c:\ps7 -WhatIf

#easiest way
help Install-PowerShell

Install-PowerShell -EnableRemoting -EnableContextMenu

clear-host

#this will fail until you restart PowerShell
pwsh

start https://aka.ms/powershell