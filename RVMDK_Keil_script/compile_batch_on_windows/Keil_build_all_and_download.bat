@echo off
set UV=C:\Keil_v5\UV4\UV4.exe
set UV_PRO_PATH=C:\Users\yf22\Desktop\LHD8006_application\Project\RVMDK\LHD8006.uvprojx
echo Init building ...
echo .>build_log.txt
:: compile the project, -r means rebuild all the source files
%UV% -j0 -r %UV_PRO_PATH% -o %cd%\build_log.txt
type build_log.txt
echo.
echo downloading ...
:: download to the target MCU
%UV% -j0 -f %UV_PRO_PATH% -o %cd%\download_log.txt
type download_log.txt
echo Done.
pause


:: 使用方法：
:: 0. 新建记事本重命名为Keil_Build.bat，并复制上述批处理代码
:: 1. UV配置为KEIL路径
:: 2. UV_PRO_PATH配置为工程路径
:: 3. 双击脚本执行


:: 资料：
:: https://blog.csdn.net/daoshuti/article/details/78212457
:: http://www.keil.com/support/man/docs/uv4/uv4_commandline.htm
