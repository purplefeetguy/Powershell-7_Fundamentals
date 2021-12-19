
#region foreach-object basics

# Help ForEach-Object

1..10 | foreach-object {$_*2}

1..10 | foreach-object {$_*2} | measure-object -AllStats

1..10 | foreach-object {$_*2} |
measure-object -AllStats |
select-object -Property * -ExcludeProperty Property

#Foreach-Object has an alias of %
2,4,7,8,10,39 | % {$_/2}

cls

#endregion

