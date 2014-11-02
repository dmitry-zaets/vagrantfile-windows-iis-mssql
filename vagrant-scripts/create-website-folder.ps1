# http://stackoverflow.com/a/9949105
$ErrorActionPreference = "Stop"

echo "Copy source code"
Copy-Item C:\vagrant\sources\egZzzz.Web C:\egZzz -Recurse
