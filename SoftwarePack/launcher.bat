echo off
title PCorelbox SoftwarePack for Windows
color 07
cd /d %~dp0
cls

echo =====================��ӭʹ�� PCorelbox SoftwarePack============================
echo ���򵼽�������ʹ�ñ������䡣
echo Ҫ��ʼʹ�ã��밴��˵��������������Ҫ����ֱ�ӹرձ�����
echo .
echo version��PCorelbox SoftwarePack for Windows Full Edition Batch Edition 22a01 -by GitHub and Gitee @idhaname
echo ================================================================================
goto fullmenucn

:fullmenucn
title PCorelbox SoftwarePack for Windows
cls
echo ====================================��ʼ========================================
echo ��1����װ ΢��.net 4.0 ����ʱ
echo ��2����װ ΢��.net 4.8 ����ʱ��Ӣ��ͨ�ã�
echo ��3����װ ΢��.net 6.0.0 ��������ʱ��Windows x64��
echo ��4���� DiskGenius�������ߣ�32λ��
echo ��5��ΪWindows XP��32λ����װFirefox52.9.0esr����ò���
echo ��6���˳�
echo ================================================================================
set /p a="����������ִ�еĲ���ǰ�� ���е����֣�"
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
for /f "tokens=6 delims=[]. " %%G in ('ver') do title PCorelbox SoftwarePack��Windows�ڲ��汾%%G�������߲���ģʽ��
cls
echo ====================================��ʼ========================================
echo ��1����װ ΢��.net 4.0 ����ʱ
echo ��2����װ ΢��.net 4.8 ����ʱ��Ӣ��ͨ�ã�
echo ��3����װ ΢��.net 6.0.0 ��������ʱ��Windows x64��
echo ��4���� DiskGenius�������ߣ�32λ��
echo ��5��ΪWindows XP��32λ����װFirefox52.9.0esr����ò���
echo *��6������Windows
echo --------------------
echo ��ʾ����exit���˳����򣬡�command����������ʾ������about���鿴������Ϣ
echo ��ģʽ�����ڿ���Ԥ��������������������ѡ��ǰ��*��Ϊʵ�������ݡ�
echo ================================================================================
set /p a="����������ִ�еĲ���ǰ�� ���е����֣�"
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
echo ��ѡ������ϵͳ
echo ��1��Windows XP
echo ��2��Windows 7~11��Office2010������
set /p a="����������ִ�еĲ���ǰ�� ���е����֣�"
if /i "%a%" EQU "1" start XPjihuo.exe
if /i "%a%" EQU "2" start MicroKMS_v21.12.08_Beta.exe
pause
goto testmenucn

:installfirefox
cls
echo ��װFirefox. . .
".\firefox52.9.0esr_playH5Videos\Firefox Setup 52.9.0esr.exe"
taskkill /f /im "firefox.exe"
cls
goto fixfirefox
:fixfirefox
cls
echo ���ֶ�����Firefox�İ�װ·��
echo Ĭ��ΪC:\Program Files\Mozilla Firefox
set /p pth=��ʽΪx:\xxx\Mozilla Firefox������ȷ��Ӱ����һ����������
echo ���������ʼ��װH5����������
pause >nul
copy ".\firefox52.9.0esr_playH5Videos\mozavutil.dll" "%pth%\mozavutil.dll" /y
copy ".\firefox52.9.0esr_playH5Videos\mozavcodec.dll" "%pth%\mozavcodec.dll" /y
cls
echo ��װ��ɣ�
echo ��������ص�������. . .
pause >nul
goto fullmenucn

:about
cls
type ..\ver.txt
for /f "tokens=6 delims=[]. " %%G in ('ver') do echo Windows�ڲ��汾%%G
set IS_X64=0 && if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set IS_X64=1) else (if "%PROCESSOR_ARCHITEW6432%"=="AMD64" (set IS_X64=1))
if /i "%IS_X64%" EQU "1" echo 64λ��x64,x86_64,AMD64��
if /i "%IS_X64%" NEQ "1" echo 32λ��x86,i386��
echo ================================================================================
pause
goto testmenucn