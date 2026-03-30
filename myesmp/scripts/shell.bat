@echo off
set "PATH=C:\myesmp\apache\bin;C:\myesmp\php;C:\myesmp\mysql\bin;C:\myesmp\node;C:\myesmp\composer;%PATH%"
title MyESMP Development Shell
cls
echo ===================================================
echo   MyESMP Development Shell
echo ===================================================
echo   Paths for PHP, MySQL, Apache, Node, and Composer
echo   are now active for this session.
echo.
echo   Try these commands:
echo    - php -v
echo    - mysql -u root
echo    - composer --version
echo    - node -v / npm -v
echo ===================================================
echo.
cmd /k
