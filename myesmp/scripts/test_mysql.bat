@echo off
echo Testing MyESMP MySQL Environment...
echo ------------------------------------------

:: Check paths
if not exist "C:\myesmp\mysql\bin\mysqld.exe" (
    echo ERROR: MySQL executable NOT found at C:\myesmp\mysql\bin\mysqld.exe
    pause
    exit /b 1
)

:: Check for common corruption errors
echo Checking for data corruption...
if exist "C:\myesmp\mysql\data\ib_redo_log" (
    echo [INFO] Found redo log. If MySQL fails, use reset_mysql.bat
)

:: Start diagnostic startup
echo Starting MySQL in console mode...
echo ------------------------------------------
"C:\myesmp\mysql\bin\mysqld.exe" --defaults-file="C:\myesmp\mysql\my.ini" --console
pause
