#update help
get-help get-service

Update-Help

#there is no indication when there is updated help
#Manually update twice a month or when installing a new
#version of PowerShell
# Must be run elevated
# Use -Force to ignore the once-per-day limitation, skips version checking, and downloads files
# that exceed the 1 GB limit.
# Some errors are expected

#there is an option for other languages
#en-US will be the fallback default
help update-help

#this may not always work
Update-help -Module psreadline -UICulture de-de -force
cls

#now back to the original command
get-help get-service
cls

#save help locally
mkdir c:\help

#I'm going to only get a single module
Save-Help -Module PSReadline,SMBShare -DestinationPath c:\help -Force
dir c:\help

#update help using the local path
Update-Help -module PSReadline,SMBShare -SourcePath c:\help -force
help get-psreadlineoption
help get-smbshare

#You can configure source paths with Group Policy
cls