@echo off
setlocal enabledelayedexpansion

:: Variablen initialisieren
set "tempdir=%temp%"
set "deleted_files=0"
set "deleted_size=0"

:: Informationen sammeln
echo Berechne Größe der temporären Dateien...
for /r "%tempdir%" %%f in (*) do (
    set /a deleted_files+=1
    set /a deleted_size+=%%~zf
)

:: Originalgröße in GB umrechnen
set /a deleted_size_gb=%deleted_size%/1024/1024/1024

:: Dateien löschen
echo Lösche temporäre Dateien...
del /s /q "%tempdir%\*" > nul 2>&1

:: Ergebnisse anzeigen
echo ===================================================
echo Gelöschte Dateien: %deleted_files%
echo Freigegebener Speicher: %deleted_size_gb% GB (%deleted_size% Bytes)
echo ===================================================

:: Timer für automatisches Schließen mit Fortschritt
for /l %%i in (15,-1,1) do (
    cls
    echo ===================================================
    echo Gelöschte Dateien: %deleted_files%
    echo Freigegebener Speicher: %deleted_size_gb% GB (%deleted_size% Bytes)
    echo ===================================================
    echo Programm schließt sich in %%i Sekunden...
    timeout /t 1 > nul
)

:: Abschlussnachricht
cls
echo ===================================================
echo Vorgang abgeschlossen!
echo Gelöschte Dateien: %deleted_files%
echo Freigegebener Speicher: %deleted_size_gb% GB (%deleted_size% Bytes)
echo ===================================================
timeout /t 3 > nul
exit
