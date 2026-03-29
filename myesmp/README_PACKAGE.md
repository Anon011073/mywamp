# MyESMP: Local WAMP Stack Setup Guide

This package provides the structure and control scripts for your local MyESMP stack. To complete the setup, you will need to download the following Windows binaries and place them in their respective folders.

## Directory Structure
- `apache/` - Place Apache binaries here (so that `apache\bin\httpd.exe` exists).
- `php/` - Place PHP binaries here (so that `php\php.exe` and the Apache module `php8apache2_4.dll` exist).
- `mysql/` - Place MySQL binaries here (so that `mysql\bin\mysqld.exe` exists).
- `node/` - Place Node.js binaries here.
- `composer/` - Place `composer.phar` or `composer.bat` here.
- `phpmyadmin/` - Place phpMyAdmin files here.
- `www/` - Your web root (contains `index.php`).
- `scripts/` - Control scripts and GUI.

## Required Binaries (Download and Extract)
1. **Apache:** [Apache Lounge](https://www.apachelounge.com/download/) (VS17 version).
2. **PHP:** [PHP for Windows](https://windows.php.net/download/) (Thread Safe version).
3. **MySQL:** [MySQL Community Server](https://dev.mysql.com/downloads/mysql/) (ZIP Archive).
4. **phpMyAdmin:** [phpMyAdmin Downloads](https://www.phpmyadmin.net/downloads/).

## How to Start
1. Go to `C:\myesmp\scripts\`.
2. Double-click **`LaunchControlPanel.bat`** to open the GUI.
3. Click **Start** to run Apache and MySQL.
   - **Note:** On the very first run, MySQL will automatically initialize its data folder. This may take a few seconds before it shows as "RUNNING".

## Important Note
This setup assumes the root folder is **`C:\myesmp\`**. If you move the folder, you will need to update the paths in the following files:
- `scripts\ControlPanel.ps1`
- `scripts\start.bat`
- `scripts\stop.bat`
- `scripts\status.bat`
- `apache\conf\httpd.conf`
- `php\php.ini`
