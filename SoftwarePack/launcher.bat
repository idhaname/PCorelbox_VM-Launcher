echo off
title PCorelbox SoftwarePack for Windows
color 07
cd /d %~dp0
cls

echo =====================欢迎使用 PCorelbox SoftwarePack============================
echo 本向导将帮助您使用本工具箱。
echo 要开始使用，请按照说明继续；若不需要，请直接关闭本窗口
echo .
echo version：PCorelbox SoftwarePack for Windows Full Edition Batch Edition 22a01 -by GitHub and Gitee @idhaname
echo ================================================================================
goto fullmenucn

:fullmenucn
title PCorelbox SoftwarePack for Windows
cls
echo ====================================开始========================================
echo 【1】安装 微软.net 4.0 运行时
echo 【2】安装 微软.net 4.8 运行时（英文通用）
echo 【3】安装 微软.net 6.0.0 桌面运行时（Windows x64）
echo 【4】打开 DiskGenius分区工具（32位）
echo 【5】为Windows XP（32位）安装Firefox52.9.0esr并打好补丁
echo 【6】退出
echo ================================================================================
set /p a="请输入您想执行的操作前【 】中的数字："
if /i "%a%" EQU "1" start dotnet4.0.exe
if /i "%a%" EQU "3" start dotnetdesktopruntime-6.0.0-winx64.exe
if /i "%a%" EQU "2" start dotnetruntime4.8-allos-enu.exe
if /i "%a%" EQU "4" start DiskGenius.exe
if /i "%a%" EQU "5" goto installfirefox
if /i "%a%" EQU "6" exit
if /i "%a%" EQU "devtest" goto testmenucn
pause
goto fullmenucn

:testmenucn
for /f "tokens=6 delims=[]. " %%G in ('ver') do title PCorelbox SoftwarePack（Windows内部版本%%G，开发者测试模式）
cls
echo ====================================开始========================================
echo 【1】安装 微软.net 4.0 运行时
echo 【2】安装 微软.net 4.8 运行时（英文通用）
echo 【3】安装 微软.net 6.0.0 桌面运行时（Windows x64）
echo 【4】打开 DiskGenius分区工具（32位）
echo 【5】为Windows XP（32位）安装Firefox52.9.0esr并打好补丁
echo *【6】激活Windows
echo --------------------
echo 提示：【exit】退出程序，【command】打开命令提示符，【about】查看关于信息
echo 该模式仅用于开发预览，不代表最终质量。选项前带*的为实验性内容。
echo ================================================================================
set /p a="请输入您想执行的操作前【 】中的数字："
if /i "%a%" EQU "1" start dotnet4.0.exe
if /i "%a%" EQU "3" start dotnetdesktopruntime-6.0.0-winx64.exe
if /i "%a%" EQU "2" start dotnetruntime4.8-allos-enu.exe
if /i "%a%" EQU "4" start DiskGenius.exe
if /i "%a%" EQU "5" goto installfirefox
if /i "%a%" EQU "6" goto activewindows
if /i "%a%" EQU "exit" exit
if /i "%a%" EQU "command" start cmd
if /i "%a%" EQU "about" goto about
pause
goto testmenucn

:activewindows
cls
echo 请选择您的系统
echo 【1】Windows XP
echo 【2】Windows 7~11、Office2010及以上
set /p a="请输入您想执行的操作前【 】中的数字："
if /i "%a%" EQU "1" start XPjihuo.exe
if /i "%a%" EQU "2" start MicroKMS_v21.12.08_Beta.exe
pause
goto testmenucn

:installfirefox
cls
echo 安装Firefox. . .
".\firefox52.9.0esr_playH5Videos\Firefox Setup 52.9.0esr.exe"
taskkill /f /im "firefox.exe"
cls
goto fixfirefox
:fixfirefox
cls
echo 请手动输入Firefox的安装路径
echo 默认为C:\Program Files\Mozilla Firefox
set /p pth=格式为x:\xxx\Mozilla Firefox（不正确会影响下一步操作）：
echo 按任意键开始安装H5播放器补丁
pause >nul
copy ".\firefox52.9.0esr_playH5Videos\mozavutil.dll" "%pth%\mozavutil.dll" /y
copy ".\firefox52.9.0esr_playH5Videos\mozavcodec.dll" "%pth%\mozavcodec.dll" /y
cls
echo 安装完成！
echo 按任意键回到主界面. . .
pause >nul
goto fullmenucn

:about
cls
type ..\ver.txt
for /f "tokens=6 delims=[]. " %%G in ('ver') do echo Windows内部版本%%G
set IS_X64=0 && if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set IS_X64=1) else (if "%PROCESSOR_ARCHITEW6432%"=="AMD64" (set IS_X64=1))
if /i "%IS_X64%" EQU "1" echo 64位（x64,x86_64,AMD64）
if /i "%IS_X64%" NEQ "1" echo 32位（x86,i386）
echo ================================================================================
pause
goto testmenucn