@echo off
color a
mode con: cols=80 lines=25
title Network Stats
echo Loading information...

REM Initiale Startwerte für Geschwindigkeitsermittlung
for /f "tokens=2 delims= " %%a in ('netstat -e ^| findstr /i "Bytes"') do set "prev_recv=%%a"
for /f "tokens=3 delims= " %%a in ('netstat -e ^| findstr /i "Bytes"') do set "prev_sent=%%a"

:loop
REM SSID ermitteln
for /f "tokens=2 delims=:" %%a in ('netsh wlan show interface ^| findstr /i "SSID" ^| findstr /v "BSSID"') do set "ssid=%%a"

REM Adapterbeschreibung
for /f "tokens=2 delims=:" %%a in ('netsh wlan show interface ^| findstr /i "Beschreibung"') do set "adapter=%%a"

REM Status der Verbindung
for /f "tokens=2 delims=:" %%a in ('netsh wlan show interface ^| findstr /i "Status"') do set "state=%%a"

REM Signalstärke
for /f "tokens=2 delims=:" %%a in ('netsh wlan show interface ^| findstr /i "Signal"') do set "signal=%%a"

REM Ping-Test
ping -n 3 www.google.com > %temp%\ping.txt

REM Angepasste Logik für "Mittelwert"
for /f "tokens=4 delims== " %%a in ('findstr /i "Mittelwert" %temp%\ping.txt') do set "ping=%%a"

REM Paketverlust (angepasst an deutsche Ausgabe von PING)
for /f "tokens=4 delims= " %%a in ('findstr /i "Verloren" %temp%\ping.txt') do set "ploss=%%a"

REM Netzwerkstatistik (empfangene und gesendete Bytes)
for /f "tokens=2 delims= " %%a in ('netstat -e ^| findstr /i "Bytes"') do set "recv_bytes=%%a"
for /f "tokens=3 delims= " %%a in ('netstat -e ^| findstr /i "Bytes"') do set "sent_bytes=%%a"

REM Geschwindigkeit berechnen (Differenz der Bytes über Zeitspanne)
set /a "recv_diff=recv_bytes-prev_recv"
set /a "recv_speed_kb=recv_diff/5/1024"

set /a "sent_diff=sent_bytes-prev_sent"
set /a "sent_speed_kb=sent_diff/5/1024"

set "prev_recv=%recv_bytes%"
set "prev_sent=%sent_bytes%"

REM Berechnung in Mbps (optional)
set /a "recv_speed_mbps=recv_diff*8/5/1024/1024"
set /a "sent_speed_mbps=sent_diff*8/5/1024/1024"

cls
echo.
echo  Network
echo  ---------
echo  SSID: %ssid%
echo  NIC: %adapter%
echo  Status: %state%
echo  Signal: %signal%
echo.
echo  Speed
echo  ---------------
echo  Ping: %ping%
echo  Paketlost: %ploss%
echo  Recv: %recv_bytes% B
echo  Sent: %sent_bytes% B
echo  Current speed:
echo  Empfang: %recv_speed_kb% KB/s (%recv_speed_mbps% Mbps)
echo  Senden : %sent_speed_kb% KB/s (%sent_speed_mbps% Mbps)
echo ========================
timeout 2 > nul
goto loop
