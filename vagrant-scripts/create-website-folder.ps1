# http://stackoverflow.com/a/9949105
$ErrorActionPreference = "Stop"

echo "Copy website folder"
Copy-Item C:\vagrant\sources\egZzzz.Web C:\egZzz -Recurse

echo "Setting up access to folder"
icacls "C:\egZzz" /grant 'Everyone:(OI)(CI)F'