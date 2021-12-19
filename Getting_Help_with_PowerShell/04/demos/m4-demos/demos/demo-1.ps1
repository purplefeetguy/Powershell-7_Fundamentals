#Online PowerShell Help

#see the online link?
Get-Help Get-Process
help Get-Process -online
#view feedback

#non-MS commands can also have it
# Install-Module PSReleaseTools -force
help Install-Powershell -online

#sometimes the help may be online but not maintained
get-help Test-NetConnection
help Test-NetConnection -online

#the command has to support online links
help Get-Vegetable -online
get-help get-vegetable

#sadly this won't work
help about_Aliases -online
#go to docs page and search

cls