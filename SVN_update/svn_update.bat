@echo off
rem ��ʾ����
@echo                        ע �� �� ��
@echo ****************************************************************
@echo �˽ű�����commit��Ŀ��SVN��������Windows��Ӷ�ʱִ�д˽ű�������
@echo ���нű�ʱ���Զ�����commit�Ľ��棬ֻ��Ҫ��дlog�����OK������ˡ�
@echo.
@echo ���µ�2��·�������нű�ǰ��Ҫ�����Լ�������ֶ��޸ģ�
@echo     1.svn_bin Ϊ��װTortoiseSVN�ͻ��˵Ŀ�ִ�г���Ŀ¼
@echo     2.svn_work Ϊ������Ŀ�ļ���Ŀ¼
@echo.
@echo WIN7��WINVista��WIN2008���û����ù���Ա�������
@echo ****************************************************************

rem ·������,���ڴ˴���ʵ���޸�,����治Ҫ��б��
@set svn_bin=C:\Program Files\TortoiseSVN\bin
@set svn_work=E:\1SVN\DEFENDO

rem �жϿ�ִ���ļ�����Ŀ�ļ�Ŀ¼�Ƿ���ȷ
@if not exist "%svn_bin%\TortoiseProc.exe" (
    echo.
    echo error: ��ȷ��TortoiseSVN�ͻ���Ŀ¼��ȷ?
    echo Ŀǰ�������:%svn_bin% 
    echo.
    pause & exit 1
    )
if not exist "%svn_work%\.svn" (
    echo.
    echo error: ��ȷ��SVN��Ŀ�ļ�Ŀ¼��ȷ?
    echo Ŀǰ�������:%svn_bin% 
    echo.
    pause & exit 2
    )

rem COLOR 04
rem Project1:
echo.
echo.
echo 0X01:����commit��Ŀ%svn_work%��SVN������дlog����
echo.
rem ����snv
rem "%svn_bin%"\TortoiseProc.exe/command:commit /path:"%svn_work%" /logmsg:"test log message" /closeonend:0
"%svn_bin%"\TortoiseProc.exe/command:commit /path:"%svn_work%" /closeonend:0
echo ����ɣ������˳�..
exit