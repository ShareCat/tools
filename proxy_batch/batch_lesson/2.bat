@echo off

echo lesson_2

:: ping -n 3 127.0.0.1 > nul

:: delay 2s
echo Wscript.Sleep Wscript.Arguments(0) * 1000>Delay.vbs 
Delay.vbs 2 
del Delay.vbs 
echo OK!



pause