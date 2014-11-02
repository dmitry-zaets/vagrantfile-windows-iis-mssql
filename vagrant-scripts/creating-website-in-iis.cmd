@echo off

echo Creating app pool...
C:\Windows\System32\inetsrv\appcmd.exe add apppool /name:egZzz /managedRuntimeVersion:v4.0 /managedPipelineMode:Integrated

echo Creating website...
C:\Windows\System32\inetsrv\appcmd.exe add site /name:egZzz /physicalPath:C:\egZzz /bindings:http/*:85:
C:\Windows\System32\inetsrv\appcmd.exe set app "egZzz/" /applicationPool:"egZzz"

echo Website is created. You can acces it by url http://127.0.0.1:85/