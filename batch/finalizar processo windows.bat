@echo off

set p/ programa="Informe o nome do programa> "

tasklist /fi "imagename eq %programa%.exe" | find "%programa%.exe"

if %errorlevel% == 0 (taskkill /f /t /im %programa%.exe)

::for %a in (chrome.exe) do (taskkill /f /t /im %a)

pause>nul