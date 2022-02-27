echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)
color 0f
cls
echo 提示：本程序将会关闭您的资源管理器。请保存您的工作，随后按任意键开始修复。
pause >nul
taskkill /f /im explorer.exe
cd /d %userprofile%\appdata\local
del iconcache.db /f /a
start explorer.exe
cls
echo 请稍等资源管理器重启，重启后即修复完成
pause
exit