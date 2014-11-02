@echo off

echo Creating database...
"C:\Program Files\Microsoft SQL Server\100\Tools\Binn\SQLCMD.EXE" -S .\sqlexpress -i C:\vagrant\db\create.sql
echo Database is created
echo Restoring data..
"C:\Program Files\Microsoft SQL Server\100\Tools\Binn\SQLCMD.EXE" -S .\sqlexpress -i C:\vagrant\db\seed.sql
echo Data is restored
