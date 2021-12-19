 #using the help command

help get-service
#on Windows PowerShell this is equivalent
help get-service -full
help get-service -ShowWindow
  
#be careful - help can sometimes be mangled
# see the Notes section
help get-process
cls

#get parameter detail
help get-service -Parameter name
#you can use wildcards
help get-service -Parameter *name
cls

help get-service -Examples

#quality of help depends on the author/team that created it
help enable-storagebusdisk -full

#PowerShell will generate basic help based on command metadata and paramters
cls
