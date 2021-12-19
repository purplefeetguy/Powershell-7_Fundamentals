# demo PSReadline tab completion

#tab completion
#demo history search with Ctrl+R

# demo new command prediction feature
# this feature is in beta when this course was published
# https://devblogs.microsoft.com/powershell/announcing-psreadline-2-1-with-predictive-intellisense/

Get-Module PSReadLine

#need version 2.1.0 or later
# Install-Module PSReadline -force
# remove-module PSReadline
# Import-module PSreadline

#set the prediction source
Get-PSReadLineOption
#this would need to be set in your profile script
Set-PSReadLineOption -PredictionSource History

# configure the selection color
Get-PSReadLineOption
#I'm going to make it more noticeable
Set-PSReadLineOption -Colors @{InlinePrediction = "`e[4;38;5;189m"}

cls

#demo live
