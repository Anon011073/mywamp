@echo off
echo Starting MyESMP Stack...

:: Initialize MySQL if data folder is empty
if not exist "C:\myesmp\mysql\data\mysql" (
    echo Initializing MySQL database...
    "C:\myesmp\mysql\bin\mysqld.exe" --initialize-insecure --basedir="C:\myesmp\mysql" --datadir="C:\myesmp\mysql\data"
    echo MySQL initialized.
)

:: Start MySQL
echo Starting MySQL...
start "MySQL Server" /B "C:\myesmp\mysql\bin\mysqld.exe" --defaults-file="C:\myesmp\mysql\my.ini" --console

:: Start Apache
echo Starting Apache...
start "Apache Server" /B "C:\myesmp\apache\bin\httpd.exe"

echo Services started.
timeout /t 2 >nul
