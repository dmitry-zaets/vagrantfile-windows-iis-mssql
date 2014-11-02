# http://stackoverflow.com/a/9949105
$ErrorActionPreference = "Stop"

echo "Copy website folder"
Copy-Item C:\vagrant\test-website C:\test-website -Recurse

echo "Setting up access to folder"
icacls "C:\test-website" /grant 'Everyone:(OI)(CI)F'