@echo off
setlocal
cd /d "C:\myesmp\scripts"
:: Launch PowerShell in the background with no console window
start /b powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -File "C:\myesmp\scripts\ControlPanel.ps1"
exit
