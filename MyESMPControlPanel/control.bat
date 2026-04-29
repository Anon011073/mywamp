@echo off
setlocal enabledelayedexpansion

set "SCRIPTS_DIR=C:\myesmp\scripts"
set "WWW_DIR=C:\myesmp\www"

:MENU
cls
echo ==========================================
echo       MyESMP Master Control Menu
echo ==========================================
echo.

:: Status check
tasklist /fi "imagename eq httpd.exe" 2>NUL | find /i "httpd.exe" >NUL
if %ERRORLEVEL% equ 0 (set APACHE=RUNNING) else (set APACHE=STOPPED)

tasklist /fi "imagename eq mysqld.exe" 2>NUL | find /i "mysqld.exe" >NUL
if %ERRORLEVEL% equ 0 (set MYSQL=RUNNING) else (set MYSQL=STOPPED)

echo  Apache: %APACHE%
echo  MySQL:  %MYSQL%
echo.
echo ------------------------------------------
echo  1. Start Servers
echo  2. Stop Servers
echo  3. Restart Servers
echo  4. Status (Refresh)
echo ------------------------------------------
echo  5. Open Localhost
echo  6. Open phpMyAdmin
echo  7. Open WWW Folder
echo ------------------------------------------
echo  Q. Quit
echo.

set /p choice="Enter choice: "

if "%choice%"=="1" (
    call "%SCRIPTS_DIR%\start.bat"
    timeout /t 2 >nul
    goto MENU
)
if "%choice%"=="2" (
    call "%SCRIPTS_DIR%\stop.bat"
    timeout /t 2 >nul
    goto MENU
)
if "%choice%"=="3" (
    call "%SCRIPTS_DIR%\restart.bat"
    timeout /t 2 >nul
    goto MENU
)
if "%choice%"=="4" goto MENU
if "%choice%"=="5" (
    start http://localhost
    goto MENU
)
if "%choice%"=="6" (
    start http://localhost/phpmyadmin
    goto MENU
)
if "%choice%"=="7" (
    explorer "%WWW_DIR%"
    goto MENU
)
if /i "%choice%"=="q" exit

goto MENU
