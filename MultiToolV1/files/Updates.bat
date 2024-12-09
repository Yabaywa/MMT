@echo off
echo ============================
echo Windows-Update-Manager
echo ============================

:: Überprüfen, ob PowerShell verfügbar ist
powershell -Command "Write-Host 'PowerShell wird überprüft...'" >nul 2>&1
if not "%errorlevel%"=="0" (
    echo PowerShell ist auf diesem System nicht verfügbar.
    pause
    exit
)

:: PSWindowsUpdate-Modul installieren, falls nicht vorhanden
echo Überprüfe auf PSWindowsUpdate-Modul...
powershell -Command "if (!(Get-Module -ListAvailable -Name PSWindowsUpdate)) { Install-Module -Name PSWindowsUpdate -Force -Scope CurrentUser }"

:: Updates prüfen
echo Suche nach Updates...
powershell -Command "Import-Module PSWindowsUpdate; Get-WindowsUpdate"

:: Optionen anzeigen
echo ============================
echo Optionen:
echo [1] Updates installieren
echo [2] Nur Updates anzeigen
echo [3] Abbrechen
echo ============================
set /p "choice=Option auswählen (1-3): "

if "%choice%"=="1" (
    echo Installiere Updates...
    powershell -Command "Import-Module PSWindowsUpdate; Install-WindowsUpdate -AcceptAll -AutoReboot"
    echo Updates wurden installiert!
) else if "%choice%"=="2" (
    echo Updates wurden nur angezeigt. Keine Installation durchgeführt.
) else if "%choice%"=="3" (
    echo Vorgang abgebrochen.
)

pause