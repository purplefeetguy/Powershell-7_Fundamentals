#region run a command

#try running it
Get-Vegetable

#try it
Get-Service
Get-Service bits

#you'll learn about help in another course
help Get-Service
#-Name is positional
Get-Service -Name bits
Get-Service -DisplayName micro*

cls
#command line tools work

#Eventually you will learn PowerShell equivalents
tasklist
ping 127.0.0.1
nslookup www.pluralsight.com

#you can run anything you know the command for
notepad
control

cls

#endregion

#region Other

# Show-Command Get-Vegetable
# Show-Command Get-Process -name micro* -includeUsername

# tab completion
# use PSReadline
# command buffer

#endregion
