echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)
color 0f
cls
echo ��ʾ�������򽫻�ر�������Դ���������뱣�����Ĺ���������������ʼ�޸���
pause >nul
taskkill /f /im explorer.exe
cd /d %userprofile%\appdata\local
del iconcache.db /f /a
start explorer.exe
cls
echo ���Ե���Դ�������������������޸����
pause
exit