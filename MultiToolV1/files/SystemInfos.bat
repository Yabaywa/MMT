@echo off
color a 
chcp 65001
title SystemInformation - by Yabaywa
:menu
cls 
echo     ╔══(1) System Information
echo     ║
echo     ╠═══(2) Ping a Website
echo     ║
echo     ╠════(3) List Running Processes
echo     ║
echo     ╚═╦═══(4) Check IP
echo       ║
echo       ╚════(5) exit
echo.
set /p choice="Choose an Option: "

if "%choice%%"=="1" goto SystemInformation 
if "%choice%%"=="2" goto Ping
if "%choice%%"=="3" goto Processes
if "%choice%%"=="4" goto IPChecker
if "%choice%%"=="5" exit 

:SystemInformation
cls 
echo System Information
systeminfo
pause
goto menu 

:Ping
cls
echo Ping a Website
set /p url="Enter Website URL (e.g., google.com): "
ping %url%
pause
goto menu

:Processes
cls 
echo List Running Processes
tasklist
pause
goto menu

:IPChecker
cls 
echo Check IP Address
ipconfig
pause	
goto menu