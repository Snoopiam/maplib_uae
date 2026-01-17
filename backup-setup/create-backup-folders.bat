@echo off
REM =====================================================
REM Pre-setup: Create backup directories
REM Run as Administrator
REM =====================================================

echo Creating backup directories...
echo.

REM Veeam backup location
if not exist "D:\Backups\Veeam" (
    mkdir "D:\Backups\Veeam"
    echo Created: D:\Backups\Veeam
) else (
    echo Exists:  D:\Backups\Veeam
)

REM Duplicati local cache (optional)
if not exist "D:\Backups\Duplicati-Cache" (
    mkdir "D:\Backups\Duplicati-Cache"
    echo Created: D:\Backups\Duplicati-Cache
) else (
    echo Exists:  D:\Backups\Duplicati-Cache
)

echo.
echo ========================================
echo Directories ready!
echo.
echo Next steps:
echo 1. Install Veeam Agent: https://www.veeam.com/windows-endpoint-server-backup-free.html
echo 2. Install Duplicati:   https://www.duplicati.com/download
echo 3. Follow BACKUP-SETUP-GUIDE.md
echo ========================================
echo.
pause
