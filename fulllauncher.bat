echo off
title PCorelbox Full Launcher for Windows
color 07

:menu
cls
echo =====================欢迎使用 PCorelbox Full Launcher===========================
echo 本向导将帮助您使用本工具箱。
echo 要开始使用，请按照说明继续；若不需要，请直接关闭本窗口
echo --------------------
echo 免责声明：本工具箱中的所有程序均为网上搜索下载，不能保证完全安全，请仔细甄别，建议使用前使用杀毒软件进行查杀。如您因操作不当导致您的电脑出现问题，我们概不负责。继续使用表示您阅读并同意以上声明。恶意软件反馈：idhaname-spam#outlook.com
echo ================================================================================
echo 【1】SoftwarePack
echo 【2】UpdatePack
set /p a="请选择您需要的软件包："
if /i "%a%" EQU "1" goto SoftwarePack
if /i "%a%" EQU "2" goto UpdatePack
pause
goto menu
:SoftwarePack
cd .\SoftwarePack\
call launcher.bat
:UpdatePack
cd .\UpdatePack\
call autoinstall.bat