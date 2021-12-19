#region parallel

$servers = "DOM1","DOM2","SRV2","SRV1"
#traditional
$results = $servers |
foreach-object {
    Get-WinEvent -LogName Security -ComputerName $_ -MaxEvents 2500
}

#how long did it take?
get-history -count 1

$results | measure

# in parallel
$results = $servers |
foreach-object -parallel {
    Get-WinEvent -LogName Security -ComputerName $_ -MaxEvents 2500
}
get-history -count 1

$results | measure

#Now imagine the performance gains when you scale out this example.

cls

#endregion