echo off
title Windows XP ����TLS1.1��TLS1.2����ͨ��Э����
cls
echo ��ӭʹ�ô��򵼣�
echo ���򵼽���������Windows XP������TLS1.1��TLS1.2����ͨ��Э��
echo ������Ҫ������������С��ڽ������Ĳ����У�������������ʾ��������y
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\CRYPTO\TLS1.1" /v OSVersion /t REG_SZ /d "3.5.1.0.0"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\CRYPTO\TLS1.2" /v OSVersion /t REG_SZ /d "3.5.1.0.0"
cls
echo ����輴����ɣ�
echo ���ڵ�����"Internetѡ��"�����У����"�߼�"�����·�����ѡ"ʹ��SSL2.0""ʹ��SSL3.0""ʹ��TLS1.0""ʹ��TLS1.1""ʹ��TLS1.2"ǰ�ķ���
echo ��ɺ���ر�"Internetѡ��"����. . .
inetcpl.cpl
echo ��ɣ��밴������˳�. . .
pause >nul
exit