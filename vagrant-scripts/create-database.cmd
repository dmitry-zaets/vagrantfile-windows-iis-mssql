@echo off

echo Creating database...
sqlcmd -S .\sqlexpress -i C:\vagrant\db\create.sql
echo Database is created