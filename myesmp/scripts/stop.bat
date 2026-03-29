@echo off
echo Stopping MyESMP Stack...

:: Stop Apache
taskkill /F /IM httpd.exe /T >nul 2>&1

:: Stop MySQL safely
if exist "C:\myesmp\mysql\bin\mysqladmin.exe" (
    "C:\myesmp\mysql\bin\mysqladmin.exe" -u root shutdown >nul 2>&1
)
timeout /t 2 >nul
taskkill /F /IM mysqld.exe /T >nul 2>&1

echo Services stopped.
timeout /t 2 >nul
