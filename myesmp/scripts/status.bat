@echo off
tasklist /FI "IMAGENAME eq httpd.exe" 2>NUL | find /I "httpd.exe" >NUL
if %ERRORLEVEL% equ 0 (echo Apache is RUNNING) else (echo Apache is STOPPED)

tasklist /FI "IMAGENAME eq mysqld.exe" 2>NUL | find /I "mysqld.exe" >NUL
if %ERRORLEVEL% equ 0 (echo MySQL is RUNNING) else (echo MySQL is STOPPED)
pause
