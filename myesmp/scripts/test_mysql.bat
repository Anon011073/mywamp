@echo off
echo Testing MyESMP MySQL Environment...
echo ------------------------------------------

:: Check paths
if not exist "C:\myesmp\mysql\bin\mysqld.exe" (
    echo ERROR: MySQL executable NOT found at C:\myesmp\mysql\bin\mysqld.exe
    pause
    exit /b 1
)

:: Check and create data folder
if not exist "C:\myesmp\mysql\data" (
    echo Creating missing C:\myesmp\mysql\data directory...
    mkdir "C:\myesmp\mysql\data"
)

:: Test initialization
if not exist "C:\myesmp\mysql\data\mysql" (
    echo Database not initialized. Attempting initialization...
    "C:\myesmp\mysql\bin\mysqld.exe" --defaults-file="C:\myesmp\mysql\my.ini" --initialize-insecure --console
    if %ERRORLEVEL% neq 0 (
        echo ERROR: MySQL initialization failed! See errors above.
        pause
        exit /b %ERRORLEVEL%
    )
    echo MySQL initialized successfully.
)

:: Final test startup
echo Starting MySQL in console mode...
echo ------------------------------------------
"C:\myesmp\mysql\bin\mysqld.exe" --defaults-file="C:\myesmp\mysql\my.ini" --console
pause
