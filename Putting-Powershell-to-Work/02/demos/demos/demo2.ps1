#powershell host vs pipeline
# Return "This is a walk-through demo file"

#The Host vs the Pipeline
$host

"apple"
Write-Output "apple"
write-host "apple"

#we'll cover Get-Member in the next module
"apple" | Get-Member
write-output "apple" | Get-Member
Write-Host "apple" | Get-Member

#Using Write-Host
help Write-Host
Write-Host "A is for Apple" -foregroundcolor red

#mostly just let command write to the pipeline

#Using Read-Host
#you can assign values directly
$Name = "Jeff"
$Name
# Or you can prompt
$name = Read-Host "Enter a service name"
gsv $name

#some commands will use Read-Host internally
$cred = Get-Credential -UserName administrator
$cred

# You are more likely to use Read-Host when scripting
help Read-Host
cls
