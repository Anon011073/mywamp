@echo off
set "DATA_DIR=C:\myesmp\mysql\data"
set "BIN_DIR=C:\myesmp\mysql\bin"
set "INI_FILE=C:\myesmp\mysql\my.ini"

echo ==========================================
echo    MyESMP MySQL Nuclear Reset
echo ==========================================
echo.
echo This will COMPLETELY ERASE all databases!
echo and perform a fresh initialization.
echo.
set /p confirm="Type YES to confirm: "
if /i "%confirm%" neq "YES" exit /b

echo Stopping MySQL...
taskkill /F /IM mysqld.exe /T >nul 2>&1
timeout /t 2 >nul

echo Wiping Data Directory...
if exist "%DATA_DIR%" (
    rmdir /S /Q "%DATA_DIR%"
)
mkdir "%DATA_DIR%"

echo Initializing Fresh Database...
"%BIN_DIR%\mysqld.exe" --defaults-file="%INI_FILE%" --initialize-insecure --console
if %ERRORLEVEL% neq 0 (
    echo.
    echo ERROR: Initialization failed. See errors above.
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo ==========================================
echo  SUCCESS! MySQL has been reset.
echo  You can now start it from the launcher.
echo ==========================================
pause
