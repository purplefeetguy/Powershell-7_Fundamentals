#region a complete example
#this is using an advanced technique with
#a hashtable to define a new property

#I'm using property names for the sake of clarity
#most of them are positional

dir c:\windows -file |
group -property extension |
Select -property Name,Count,
@{Name="Size";Expression={ $_.group | Measure -property length -sum | select -expandproperty sum  }} |
Sort -property Size -Descending |
Select -first 5

cls
#endregion

#region Alternatives

#create a sample file
cd \scripts
#see if you can follow the pipeline
1..5 | foreach { Get-Date | Out-File "secret-$_.dat"}
dir .\secret*.dat

#this is technically an option
dir .\secret*.dat | foreach {$psitem.Attributes+="Hidden"}
#need -Force to show hidden
dir .\secret*.dat -force

#I would stick to this
dir .\secret*.dat -force | foreach {$_.Attributes-="Hidden"}
dir *.dat

#endregion

#region Don't do this
cls
#this is the wrong way to use ForEach-Object
dir -file | foreach {$_.name}

#We used to use this technique in VBScript.
#this is still thinking about parsing text and not working with objects.

#the PowerShell way
dir -file | Select Name

#expanding to a list
dir -file | Select -expandproperty Name

#this is an easier way once you understand the PowerShell paradigm
(dir -file).name

cls

#endregion

