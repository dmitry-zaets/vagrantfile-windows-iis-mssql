@echo off

echo Creating app pool...
C:\Windows\System32\inetsrv\appcmd.exe add apppool /name:test-website /managedRuntimeVersion:v4.0 /managedPipelineMode:Integrated

echo Creating website...
C:\Windows\System32\inetsrv\appcmd.exe add site /name:test-website /physicalPath:C:\test-website /bindings:http/*:85:
C:\Windows\System32\inetsrv\appcmd.exe set app "test-website/" /applicationPool:"test-website"

echo Website is created. You can acces it by url http://127.0.0.1:85/