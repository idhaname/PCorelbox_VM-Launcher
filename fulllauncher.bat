echo off
title PCorelbox Full Launcher for Windows
color 07

:menu
cls
echo =====================��ӭʹ�� PCorelbox Full Launcher===========================
echo ���򵼽�������ʹ�ñ������䡣
echo Ҫ��ʼʹ�ã��밴��˵��������������Ҫ����ֱ�ӹرձ�����
echo --------------------
echo �������������������е����г����Ϊ�����������أ����ܱ�֤��ȫ��ȫ������ϸ��𣬽���ʹ��ǰʹ��ɱ��������в�ɱ����������������������ĵ��Գ������⣬���ǸŲ����𡣼���ʹ�ñ�ʾ���Ķ���ͬ�������������������������idhaname-spam#outlook.com
echo ================================================================================
echo ��1��SoftwarePack
echo ��2��UpdatePack
set /p a="��ѡ������Ҫ���������"
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