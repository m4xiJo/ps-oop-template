@echo off
:loop
cls
powershell.exe -ExecutionPolicy Unrestricted -File "%~dp0powershell\main.ps1"
pause
goto loop