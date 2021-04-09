@echo off

echo lesson_6
echo.

:: call 4.bat

if exist .\6config.txt (goto get_param) else (goto no_param_exit)

::-----------------------------------------------------------------------------
:get_param
::echo 6config.txt ok
echo "search: haha_1"
type 6config.txt | find "haha_1" && (echo "hehe_1" & echo heihei_1)
echo.

echo "search: haha_2"
type 6config.txt | (find "haha_2" > nul) && (echo "hehe_2" & echo heihei_2)
echo.
goto end

::-----------------------------------------------------------------------------
:no_param_exit
echo no 6config.txt files
goto end

::-----------------------------------------------------------------------------
:end
pause & exit
