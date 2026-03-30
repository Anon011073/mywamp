Set objShell = CreateObject("WScript.Shell")
' Run the batch file in hidden mode (0 = hidden window)
objShell.Run "cmd /c ""C:\myesmp\scripts\LaunchControlPanel.bat""", 0, False
