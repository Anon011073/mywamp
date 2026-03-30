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

**⚠️ IMPORTANT:** When extracting, if you are asked to overwrite files, choose **SKIP** or **NO** for any `.conf`, `.ini`, or `.php` files. I have pre-configured the following for you to work with `C:\myesmp\`:
- `apache\conf\httpd.conf`
- `php\php.ini`
- `mysql\my.ini`
- `phpmyadmin\config.inc.php`
- `www\index.php`

## How to Start
1. Go to `C:\myesmp\scripts\`.
2. Double-click **`Launch_GUI.vbs`** to open the GUI silently (no console window).
3. Click **Start** to run Apache and MySQL.
   - **Note:** On the very first run, MySQL will automatically initialize its data folder. This may take a few seconds before it shows as "RUNNING".

## Troubleshooting
If servers do not start (Status remains "STOPPED"):
1.  **Check for nested folders:** Ensure your extraction didn't create extra folders (e.g., `C:\myesmp\apache\httpd-2.4.66\...`). The `httpd.exe` must be at `C:\myesmp\apache\bin\httpd.exe`.
2.  **Visual C++ Redistributable:** Ensure you have the **Visual C++ Redistributable for Visual Studio 2015-2022** (x64) installed. Most Apache/PHP/MySQL builds require it.
3.  **Run Diagnostics:** Use the included **`scripts\test_apache.bat`** and **`scripts\test_mysql.bat`**. These will open a window and show you exactly why the server is failing to start.

## Important Note
This setup assumes the root folder is **`C:\myesmp\`**. If you move the folder, you will need to update the paths in the following files:
- `scripts\ControlPanel.ps1`
- `scripts\start.bat`
- `scripts\stop.bat`
- `scripts\status.bat`
- `apache\conf\httpd.conf`
- `php\php.ini`
