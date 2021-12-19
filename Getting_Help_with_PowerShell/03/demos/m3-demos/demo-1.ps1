#Interpreting help

#demo setup
# mkdir c:\work
# copy .\veglist.txt -Destination c:\work
# copy .\shares.txt -Destination c:\work
# copy .\data.csv -Destination c:\work
# New-SMBShare -name Work -Path c:\work
# New-SmbShare -name Scripts -path c:\scripts
# $host.PrivateData.ErrorBackgroundColor = "white"

help Get-Service

help Get-Service -Parameter Name

#Name parameter is not required
Get-Service

Get-Service -name bits,winrm,winmgmt
#this also works
Get-Service bits,winrm,winmgmt

#what about this?
"bits","win*" | Get-Service

#review
help Get-Service -Parameter Name
cls

#let's test with something completely new
# Install-Module PSTeachingTools -force
# Set-ExecutionPolicy remotesigned -force

help Get-Vegetable -Parameter *
Get-Vegetable
Get-Vegetable -RootOnly
Get-Vegetable carrot

#some commands have mandatory parameters
help New-Vegetable
#okradir 
New-Vegetable 

help new-vegetable -Parameter Name
cls

#another example
help Set-Vegetable 
help Set-Vegetable -Parameter *
Set-Vegetable -name Corn -cookingstate Grilled -passthru
Get-Vegetable corn

cls

