@echo off
rem 显示部分
@echo                        注 意 事 项
@echo ****************************************************************
@echo 此脚本用于commit项目到SVN，可以在Windows添加定时执行此脚本的任务
@echo 运行脚本时会自动弹出commit的界面，只需要填写log，点击OK就完成了。
@echo.
@echo 以下的2个路径在运行脚本前需要根据自己的情况手动修改：
@echo     1.svn_bin 为安装TortoiseSVN客户端的可执行程序目录
@echo     2.svn_work 为更新项目文件的目录
@echo.
@echo WIN7或WINVista或WIN2008的用户请用管理员身份运行
@echo ****************************************************************

rem 路径变量,请在此处按实际修改,最后面不要带斜杠
@set svn_bin=C:\Program Files\TortoiseSVN\bin
@set svn_work=E:\1SVN\DEFENDO

rem 判断可执行文件及项目文件目录是否正确
@if not exist "%svn_bin%\TortoiseProc.exe" (
    echo.
    echo error: 请确认TortoiseSVN客户端目录正确?
    echo 目前定义的是:%svn_bin% 
    echo.
    pause & exit 1
    )
if not exist "%svn_work%\.svn" (
    echo.
    echo error: 请确认SVN项目文件目录正确?
    echo 目前定义的是:%svn_bin% 
    echo.
    pause & exit 2
    )

rem COLOR 04
rem Project1:
echo.
echo.
echo 0X01:正在commit项目%svn_work%到SVN，请填写log！！
echo.
rem 更新snv
rem "%svn_bin%"\TortoiseProc.exe/command:commit /path:"%svn_work%" /logmsg:"test log message" /closeonend:0
"%svn_bin%"\TortoiseProc.exe/command:commit /path:"%svn_work%" /closeonend:0
echo 已完成，正在退出..
exit