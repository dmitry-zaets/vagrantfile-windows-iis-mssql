# http://stackoverflow.com/a/9949105
$ErrorActionPreference = "Stop"

echo Restarting service...
# Restart service so that configurations are applied
restart-service -f "SQL Server (SQLEXPRESS)"
echo DONE!
