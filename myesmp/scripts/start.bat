@echo off
echo Starting MyESMP Stack...

:: Ensure data directory exists
if not exist "C:\myesmp\mysql\data" mkdir "C:\myesmp\mysql\data"

:: Initialize MySQL if data folder is empty
if not exist "C:\myesmp\mysql\data\mysql" (
    echo Initializing MySQL database...
    "C:\myesmp\mysql\bin\mysqld.exe" --defaults-file="C:\myesmp\mysql\my.ini" --initialize-insecure --console
    if %ERRORLEVEL% neq 0 (
        echo MySQL initialization FAILED. See errors above.
        pause
        exit /b %ERRORLEVEL%
    )
    echo MySQL initialized.
    timeout /t 5 >nul
)

:: Start MySQL
echo Starting MySQL...
start "MySQL Server" /B "C:\myesmp\mysql\bin\mysqld.exe" --defaults-file="C:\myesmp\mysql\my.ini" --console

:: Start Apache
echo Starting Apache...
start "Apache Server" /B "C:\myesmp\apache\bin\httpd.exe"

echo Services started.
timeout /t 2 >nul
