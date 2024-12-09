@echo off
echo Available Drives:
wmic logicaldisk get name,filesystem,freespace,size
pause

exit