@echo off
color a 
netsh wlan show profile
set /p name="Type the Wifi Name here: "
netsh wlan show profile "%name%" key=clear>"%USERPROFILE%\Desktop\MultiToolV1\SavedFiles\%name%.txt"
echo The Files was saved in the Folder SavedFiles: %name%.txt
pause