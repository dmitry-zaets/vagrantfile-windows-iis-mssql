@echo off

echo Creating app pool...
C:\Windows\System32\inetsrv\appcmd.exe add apppool /name:test /managedRuntimeVersion:v4.0 /managedPipelineMode:Integrated

echo Copy source code..
Copy-Item C:\vagrant\sources\* C:\test

echo Creating website...
C:\Windows\System32\inetsrv\appcmd.exe add site /name:test /physicalPath:C:\test /bindings:http/*:85:
C:\Windows\System32\inetsrv\appcmd.exe set app "test/" /applicationPool:"test"
 
icacls "C:\test" /grant 'Everyone:(OI)(CI)F'
echo Website is created. You can acces it by url http://127.0.0.1:85/