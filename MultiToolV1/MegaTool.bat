@echo off
title MegaTool - By Yaybawa
chcp 65001 >nul 
cd files 
:start
call :banner

:menu	
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A 
echo.
echo.
echo [033;38;2;0;255;0m    [32m╔═══════════════════════════════════╦═════════════════════════════════╗
echo [033;38;2;0;255;0m    [32m╠═(1) NetStats                      ╠══(6) Show Available Drives      ║
echo [033;38;2;0;255;0m    [32m║                                   ║                                 ║
echo [033;38;2;0;255;0m    [32m╠═(2) System Information            ╠══(7) Check Disk for Errors      ║
echo [033;38;2;0;255;0m    [32m║                                   ║                                 ║
echo [033;38;2;0;255;0m    [32m╠═(3) WifiCracker                   ╠══(8) Show Installed Programms   ║
echo [033;38;2;0;255;0m    [32m║                                   ║                                 ║
echo [033;38;2;0;255;0m    [32m╠═(4) Passwort Cracker              ╠══(9) CPU Usage                  ║
echo [033;38;2;0;255;0m    [32m║                                   ║                                 ║
echo [033;38;2;0;255;0m    [32m╠═(5) Deleting Temp                 ╠══(10) Windows Services          ║
echo [033;38;2;0;255;0m    [32m║                                   ║                                 ║
echo [033;38;2;0;255;0m    [32m╠═(100)[0m[36m Mac Changer[0m                 [32m╠══(99)[0m[36m All-Updates               [32m║[0m
echo [033;38;2;0;255;0m    [32m╚═══════════════════════════════════╩═════════════════════════════════╝
echo.
echo [38;2;255;255;0m INFO : Write "help" for more infos
echo.
set /p input=.%BS% [38;2;255;255;0m    ƒ : 
if /I %input% equ 1 start NetStats
if /I %input% equ 2 start SystemInfos
if /I %input% equ 3 start WifiCracker
if /I %input% equ 4 start PassCracker
if /I %input% equ 5 start DelTemp
if /I %input% equ 100 start MacChanger
if /I %input% equ 6 start ShowAvailableDrives
if /I %input% equ 7 start CheckDiskForErrors
if /I %input% equ 8 start ShowInstalledProgramms
if /I %input% equ 9 start CPUUsage
if /I %input% equ 10 start WindowsServices
if /I %input% equ 99 start Updates
cls
goto start
echo.
pause



:banner 
echo.
echo.
echo               [31m███╗   ███╗███████╗ ██████╗  █████╗     ████████╗ ██████╗  ██████╗ ██╗         ██╗   ██╗ ██╗[0m   
echo               [31m████╗ ████║██╔════╝██╔════╝ ██╔══██╗    ╚══██╔══╝██╔═══██╗██╔═══██╗██║         ██║   ██║███║[0m
echo               [31m██╔████╔██║█████╗  ██║  ███╗███████║       ██║   ██║   ██║██║   ██║██║         ██║   ██║╚██║[0m
echo               [31m██║╚██╔╝██║██╔══╝  ██║   ██║██╔══██║       ██║   ██║   ██║██║   ██║██║         ╚██╗ ██╔╝ ██║[0m
echo               [31m██║ ╚═╝ ██║███████╗╚██████╔╝██║  ██║       ██║   ╚██████╔╝╚██████╔╝███████╗     ╚████╔╝  ██║[0m
echo               [31m╚═╝     ╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝      ╚═══╝   ╚═╝[0m
echo.
echo. 
