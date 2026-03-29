@echo off
echo Starting MyESMP Stack...

:: Start MySQL
start "MySQL Server" /B "C:\myesmp\mysql\bin\mysqld.exe" --console

:: Start Apache
start "Apache Server" /B "C:\myesmp\apache\bin\httpd.exe"

echo Services started.
timeout /t 2 >nul
