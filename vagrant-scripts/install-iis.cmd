@echo off

echo Installing IIS 7.5, it will take a while...
CMD /C START /w PKGMGR.EXE /l:log.etw /iu:IIS-WebServerRole
echo Done!

echo Creating app pool...
C:\Windows\System32\inetsrv\appcmd.exe add apppool /name:egZzz /managedRuntimeVersion:v4.0 /managedPipelineMode:Integrated

echo Creating website...
C:\Windows\System32\inetsrv\appcmd.exe add site /name:egZzz /physicalPath:C:\vagrant\sources\egZzzz.Web /bindings:http/*:85
C:\Windows\System32\inetsrv\appcmd.exe set app "egZzz/" /applicationPool:"egZzz"
echo Website is created