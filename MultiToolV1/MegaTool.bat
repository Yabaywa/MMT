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
echo [033;38;2;0;255;0m    ╔═══════════════════════════════╗
echo [033;38;2;0;255;0m    ╠═(1) NetStats                  ║
echo [033;38;2;0;255;0m    ║                               ║
echo [033;38;2;0;255;0m    ╠═(2) System Information        ║
echo [033;38;2;0;255;0m    ║                               ║
echo [033;38;2;0;255;0m    ╠═(3) WifiCracker               ║
echo [033;38;2;0;255;0m    ║                               ║
echo [033;38;2;0;255;0m    ╠═(4) Passwort Cracker          ║
echo [033;38;2;0;255;0m    ║                               ║
echo [033;38;2;0;255;0m    ╠═(99) Mac Changer              ║
echo [033;38;2;0;255;0m    ╚═══════════════════════════════╝
echo.
echo [38;2;255;255;0m INFO if you want to try Crack some Passworts then you gotta use the Passlist in the folder directory "files" 
echo.
set /p input=.%BS% [38;2;255;255;0m    ƒ : 
if /I %input% equ 1 start NetStats
if /I %input% equ 2 start SystemInfos
if /I %input% equ 3 start WifiCracker
if /I %input% equ 4 start PassCracker
if /I %input% equ 99 start MacChanger
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