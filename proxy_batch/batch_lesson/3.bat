@echo off

echo lesson_3

netstat -a -n > a.txt

type a.txt | find "8080" && echo "Found!"

del a.txt

pause & exit