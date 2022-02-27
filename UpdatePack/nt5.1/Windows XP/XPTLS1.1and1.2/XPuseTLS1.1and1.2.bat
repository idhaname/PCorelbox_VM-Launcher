echo off
title Windows XP 启用TLS1.1与TLS1.2网络通信协议向导
cls
echo 欢迎使用此向导！
echo 本向导将帮助您在Windows XP上启用TLS1.1与TLS1.2网络通信协议
echo 本向导需要您的许可以运行。在接下来的操作中，若出现输入提示，请输入y
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\CRYPTO\TLS1.1" /v OSVersion /t REG_SZ /d "3.5.1.0.0"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\CRYPTO\TLS1.2" /v OSVersion /t REG_SZ /d "3.5.1.0.0"
cls
echo 最后步骤即将完成！
echo 请在弹出的"Internet选项"窗口中，点击"高级"，往下翻并勾选"使用SSL2.0""使用SSL3.0""使用TLS1.0""使用TLS1.1""使用TLS1.2"前的方框
echo 完成后请关闭"Internet选项"窗口. . .
inetcpl.cpl
echo 完成！请按任意键退出. . .
pause >nul
exit