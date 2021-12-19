#this is walk through demo file - not a script"

#region find commands

# you won't have the same commands as I do because
# I've added additional PowerShell modules or software
# that you might not have

Get-Command

#I'm going to substitute some demo commands I have
Get-Command *vegetable*

#notice all the different types of commands
Get-Command *service*
#I'll refine the command
Get-Command *service

#verbs
Get-Command -verb Get
Get-Verb
Get-Command -verb Stop

#nouns
Get-Command -noun veg*
Get-Command -noun *process*

#combine
Get-Command -noun *share* -verb Re*

cls
#endregion

#region command types

Get-Command -CommandType Cmdlet
Get-Command -CommandType Function

#aliases
Get-Command -CommandType Alias

#empty aliases point to commands that haven't been loaded
#into the current PowerShell session

#can you find a command that works with aliases?
#you could try broadly
Get-Command *alias*
#or be a bit more narrower
Get-Command -noun *alias*

#try it
Get-Alias
#these are all the active aliases in this PowerShell session
#try it
ps
Get-Process
ps win*

#here's something fun
#you'll find this in the list as well
gcm gcm

gcm -noun computer

cls
#endregion




