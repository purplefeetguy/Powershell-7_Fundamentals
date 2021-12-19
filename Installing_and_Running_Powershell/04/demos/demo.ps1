#region Run a PowerShell session

# Start - Run - pwsh
# search - pwsh

#endregion

#region Customize a PowerShell console

# alt+space P to configure settings
# also see https://devblogs.microsoft.com/commandline/new-experimental-console-features/

#endregion

#region Run an elevated PowerShell session

# notice the title change
# explain the difference

#endregion

#region Navigate PowerShell 

#eventually you will learn the proper PowerShell way to do these examples

#Change and set location
cd c:\windows

#List files in a directory
dir
dir *.exe

#List files in a directory recursively
#this is the %AppData% directory
cd $env:appdata 
dir
#this will fail
dir .\Microsoft /s
dir .\Microsoft -Recurse
dir .\Microsoft\*.lnk -Recurse

cd \
#clear the host
cls

#echo text
echo "Hello,world"
#direct to a file using legacy shell shortcuts
echo "Hello,world" > ~\documents\hello.txt
#append
echo "PowerShell is easy" >> ~\documents\hello.txt
dir ~\documents\hello.txt
#view
type ~\documents\hello.txt

#make a directory
cls
mkdir c:\work

#Copy a file
copy C:\windows\notepad.exe c:\work\notepad.exe
dir c:\work

#delete a file
del c:\work\notepad.exe
dir c:\work\*.exe

#remove an empty directory
rmdir c:\work
dir c:\

#run commands
notepad
calc

#although you can do math right at the console
2+7+1
15*2
25/5
(4-1)*2/6

#close the session
exit

#endregion

#region Windows Terminal

# https://www.microsoft.com/store/productId/9N0DX20HK701
# install and show Windows Terminal including adjusting the font size

#endregion