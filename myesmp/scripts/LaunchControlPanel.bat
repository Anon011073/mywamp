@echo off
setlocal
cd /d "C:\myesmp\scripts"
powershell.exe -ExecutionPolicy Bypass -File "C:\myesmp\scripts\ControlPanel.ps1"
exit
