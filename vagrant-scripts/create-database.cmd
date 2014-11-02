@echo off

echo Creating database...
sqlcmd -S .\sqlexpress -i C:\vagrant\db\create.sql
echo Database is created
echo Restoring data..
sqlcmd -S .\sqlexpress -i C:\vagrant\db\seed.sql
echo Data is restored
