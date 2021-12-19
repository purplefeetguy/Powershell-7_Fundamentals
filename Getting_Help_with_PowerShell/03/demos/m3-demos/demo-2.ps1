#test the pipeline
help Get-Vegetable -param name
Get-Content c:\work\veglist.txt | Get-Vegetable 

cls

#let's try something that fails
$list = Get-Content C:\work\shares.txt
$list
#I have this command
Help Get-SMBshare
#based on past experience I might think I can do this:
$list | Get-SmbShare
#I changed the error colors to make it easier to read
help Get-SmbShare -Parameter Name

#this is advanced but will work
Import-Csv C:\work\data.csv | Get-SmbShare

#the single error is expected
cls