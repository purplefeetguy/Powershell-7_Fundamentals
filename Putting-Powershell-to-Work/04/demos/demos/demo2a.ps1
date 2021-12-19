#region ForEach-Object demo

#my vegetables have property and method related to peeling
Get-Vegetable | get-member *peel*
Get-Vegetable | select-Object -property Count,Name,IsPeeled
Get-Vegetable Carrot | foreach-object { $_.peel() }
Get-Vegetable C* | select-object Name,IsPeeled

cls

cd C:\work
#create 2 test files
get-date | Out-file test.txt
get-date | Out-file test2.txt

dir | select name,attributes
#I want to invoke a method
get-item test.txt | get-member encrypt
dir test*.txt | foreach {$_.encrypt()}

#see the results
dir | select name,attributes

#Undo
# dir test*.txt | foreach {$_.decrypt()}

cls

#there are other ways to accomplish this but I
#hope this demonstrates the foreach approach
help Get-Volume -parameter cimsession
get-content c:\scripts\servers.txt

#this fails
get-content c:\scripts\servers.txt | Get-Volume

#I'll save results to a variable

$c = get-content c:\scripts\servers.txt |
foreach { get-volume -drive c -cimsession $_ }
 
$c
#I used Get-Member to discover property names
#note the use of the wildcard in the property name
$c | Select PSComputername,DriveLetter,Size*

cls

#endregion
