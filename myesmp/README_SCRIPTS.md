# MyESMP Control Panel

This folder contains the control panel options for your MyESMP stack.

## Option 1: PowerShell GUI (Recommended)
This is a lightweight GUI that does not require any compilation or installation.

- **How to run:** Double-click `LaunchControlPanel.bat`.
- **Features:**
  - Start, Stop, and Restart buttons.
  - Automatic status updates for Apache and MySQL.
  - Quick links for Localhost, phpMyAdmin, and the WWW folder.
- **Note:** Both `ControlPanel.ps1` and `LaunchControlPanel.bat` should be placed in `C:\myesmp\scripts\` for the fixed paths to work as intended.

## Option 2: Command-Line Menu (Fastest)
A classic menu-driven batch script.

- **How to run:** Double-click `control.bat`.
- **Features:**
  - Numbered menu for all server actions.
  - Real-time status display on each refresh.
  - Quick links to open websites and folders.
- **Note:** This script should be placed in `C:\myesmp\scripts\`.

## Option 3: C# WinForms App (For Visual Studio users)
If you decide to use Visual Studio in the future, the full source code is provided in the `MyESMPControlPanel` project folder.

- **How to compile:**
  1. Open `MyESMPControlPanel.csproj` in Visual Studio 2022+.
  2. Build the project.
  3. Run the resulting `.exe`.
