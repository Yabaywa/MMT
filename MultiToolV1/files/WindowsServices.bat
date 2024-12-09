@echo off
echo Windows Services:
sc query type= service state= all
pause