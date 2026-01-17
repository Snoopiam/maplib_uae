@echo off
REM =====================================================
REM Duplicati Source Folders Configuration Script
REM Run this AFTER installing Duplicati to see your paths
REM =====================================================

echo.
echo ========================================
echo DUPLICATI BACKUP - RECOMMENDED PATHS
echo ========================================
echo.
echo Copy these paths into Duplicati "Source Data" section:
echo.
echo === ESSENTIAL (Always backup) ===
echo %USERPROFILE%\.claude\
echo %USERPROFILE%\Documents\
echo %USERPROFILE%\Desktop\
echo.
echo === YOUR PROJECTS ===
echo C:\SnoopLabs\
echo C:\GithubRepo\
echo.
echo === OPTIONAL ===
echo %USERPROFILE%\Pictures\
echo %USERPROFILE%\Downloads\
echo %USERPROFILE%\.ssh\
echo %USERPROFILE%\.gitconfig
echo %APPDATA%\Code\User\settings.json
echo %APPDATA%\Code\User\keybindings.json
echo.
echo ========================================
echo EXCLUDE FILTERS (Add these in Duplicati)
echo ========================================
echo.
echo node_modules/
echo .git/objects/
echo __pycache__/
echo *.log
echo *.tmp
echo Thumbs.db
echo desktop.ini
echo .env
echo.
echo ========================================
echo.
pause
