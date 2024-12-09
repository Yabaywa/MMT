@echo off
echo Enter the drive (e.g., C:):
set /p drive=
chkdsk %drive% /f
pause

exit