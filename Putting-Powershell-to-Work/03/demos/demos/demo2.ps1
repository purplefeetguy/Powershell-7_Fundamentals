#here's an example of the pipeline, not necessarily the best way to achieve the
#end result

Get-Content c:\work\services.txt

Help Get-Service -parameter Name

"lanmanserver" | Get-Service

#see if you can visualize what PowerShell is doing
::
Get-Content c:\work\services.txt |
Get-Service |
Restart-Service -passthru |
Out-File c:\work\restart.txt
::

Get-content c:\work\restart.txt

cls