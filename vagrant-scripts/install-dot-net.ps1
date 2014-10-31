# http://stackoverflow.com/a/9949105
$ErrorActionPreference = "Stop"

import-module servermanager
echo "Enabling .NET Framework"
add-windowsfeature as-net-framework
