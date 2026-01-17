@echo off
REM =====================================================
REM Quick Backup Health Check
REM Run periodically to verify backups are working
REM =====================================================

echo.
echo ========================================
echo BACKUP HEALTH CHECK
echo ========================================
echo.

echo [1/3] Checking Veeam backup location...
if exist "D:\Backups\Veeam" (
    echo       Location: D:\Backups\Veeam
    dir "D:\Backups\Veeam" /O-D 2>nul | findstr /R "^[0-9]" | head -5
    for /f "tokens=3" %%a in ('dir "D:\Backups\Veeam" /-c 2^>nul ^| findstr /C:"File(s)"') do echo       Total size: %%a bytes
) else (
    echo       WARNING: D:\Backups\Veeam not found!
)
echo.

echo [2/3] Checking Duplicati service...
sc query "Duplicati" 2>nul | findstr "RUNNING" >nul
if %errorlevel%==0 (
    echo       Duplicati service: RUNNING
) else (
    echo       WARNING: Duplicati service not running
)
echo.

echo [3/3] Checking .claude folder exists...
if exist "%USERPROFILE%\.claude" (
    echo       .claude folder: Found at %USERPROFILE%\.claude
) else (
    echo       INFO: .claude folder not found yet (install Claude CLI first)
)
echo.

echo ========================================
echo Check complete!
echo.
echo Manual checks to do:
echo - Open Veeam: Verify last backup date
echo - Open http://localhost:8200 : Check Duplicati status
echo ========================================
echo.
pause
