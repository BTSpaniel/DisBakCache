@echo off
title Discord Cache Monitor
echo Opening Cache Folder
mkdir %appdata%\discord\Backup
timeout >nul 1
explorer.exe %appdata%\discord\Cache\
explorer.exe %appdata%\discord\Backup\

:start
echo Refreshing Cache
robocopy %appdata%\discord\Cache\ %appdata%\discord\Backup\
ren %appdata%\discord\Backup\* *.png
goto loop

:loop
echo Waiting 300 Seconds (5 Minutes)
timeout >nul 300
goto start
