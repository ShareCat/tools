@echo off

REM [%~dp0] : https://blog.csdn.net/xieyunc/article/details/80471107
if exist %~dp0\..\Project\RVMDK\Output\LHD8006_application.bin (goto STEP2) else (goto STEP1)

:STEP1
echo LHD8006_application.bin directory error
exit

:STEP2
::1. NO copy log to terminal
copy %~dp0\..\Project\RVMDK\Output\LHD8006_application.bin %~dp0\ >nul

::2. copy log to terminal
::copy %~dp0\..\Project\RVMDK\Output\LHD8006_application.bin %~dp0\

exit
