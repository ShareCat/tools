@echo off

echo lesson_5

:: print the 1st parameter
echo %1

:: check the 2th parameter exist, if exist then print the 2th parameter
if ""=="%2" (echo NO 2th parameter !) else (echo %2)

pause & exit
