echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)
CD /d %~dp0
for /f "tokens=6 delims=[]. " %%G in ('ver') do title PCorelbox UpdatePack for Windows��Windows�ڲ��汾%%G��
color 04
cls
echo �����򲻺��κβ������簲װʱ�����û��˻����Ƶ���������"��"������װ
echo ���°���������΢��ٷ����أ����������΢��ٷ��������в�������ʹ��ɱ��������в�ɱ
pause
color 07
cls

echo ============================��ӭʹ�� PCorelbox UpdatePack=======================
echo ���򵼽���������װWindows�Ĳ��ְ�ȫ���¡�
echo Ҫ��ʼ��װ���밴��˵��������������Ҫ����ֱ�ӹرձ�����
echo --------------------
echo �ر���ʾ��
echo ���򵼼����ø��°������������ģ����壩���Ե�Windowsϵͳ
echo �����򲻺��κβ������簲װʱ�����û��˻����Ƶ���������"��"������װ
echo ��������ɱ������в������� �Ҽ�-�༭ �鿴Դ���롣
echo ���°���������΢��ٷ����أ����������΢��ٷ��������в�������ʹ��ɱ��������в�ɱ
echo ================================================================================
pause

:menu
cls
echo ====================================��ʼ========================================
echo ��1����װ Windows 2000��NT5.0������
echo ��2����װ Windows XP��NT5.1����32λ������
echo ��3����װ Windows 7��NT6.1������
echo ��4����װ Windows 8.1��NT6.3������
echo ��5�������£�����Windows 7�����ϣ�
echo --------------------
echo ��ʾ����exit���˳�����about���鿴������Ϣ
echo ѡ��ǰ��*��Ϊʵ�������ݡ�
echo ================================================================================
set /p a="����������ִ�еĲ���ǰ�� ���е����֣�"
if /i "%a%" EQU "1" goto 2000
if /i "%a%" EQU "2" goto xp
if /i "%a%" EQU "3" goto 7
if /i "%a%" EQU "4" goto 81
if /i "%a%" EQU "5" start control.exe /name Microsoft.WindowsUpdate
if /i "%a%" EQU "exit" exit
if /i "%a%" EQU "about" goto about
pause
goto menu

:about
cls
type ..\ver.txt
for /f "tokens=6 delims=[]. " %%G in ('ver') do echo Windows�ڲ��汾%%G
set IS_X64=0 && if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set IS_X64=1) else (if "%PROCESSOR_ARCHITEW6432%"=="AMD64" (set IS_X64=1))
if /i "%IS_X64%" EQU "1" echo 64λ��x64,x86_64,AMD64��
if /i "%IS_X64%" NEQ "1" echo 32λ��x86,i386��
echo ================================================================================
pause
goto menu

:2000
cls
echo ��ѡ������Ҫ��װ�ĸ���
echo --------------------
echo ��1��KB835732�����������VMtools���⣩
echo ��2��KB891861�����ܸ��£��Ƽ���
echo --------------------
set /p a="ѡ��һ�������԰�װ��"
if /i "%a%" EQU "1" ".\nt5.0\Windows 2000\windows2000-kb835732-x86-chs_779d1b67c993ed5edaeeb6706f37a0d.exe" /passive /nobackup /norestart
if /i "%a%" EQU "2" ".\nt5.0\Windows 2000\windows2000-kb891861-v2-x86-chs_fe99e12ef1944cc43ad2891797ac9a7698e194d9.exe" /passive /nobackup /norestart
pause
goto menu

:xp
cls
cls
echo ��ѡ������Ҫ��װ�ĸ���
echo --------------------
echo ��1�����ְ�ȫ���»���
echo *��2�����ֿ�ѡ���£�IE8��WMP11��Search4.0��
echo *��3�����TLS1.1��1.2֧�֣���Ҫ��װIE8��
echo ��4��Ϊý�����İ氲װ����
echo --------------------
set /p a="ѡ��һ��ѡ���԰�װ��"
if /i "%a%" EQU "1" goto xpsu
if /i "%a%" EQU "2" goto xpcu
if /i "%a%" EQU "3" goto menu
if /i "%a%" EQU "4" start ".\nt5.1\Windows XP\WindowsXPMediaCenter2005-KB900325-chs.exe"
pause
goto menu

:xpsu
dir ".\nt5.1\Windows XP\x86-SP3-CHS" /b
echo ȷ�ϰ�װ�������£����������ʼ����. . .
pause >nul
echo ��װ��ȫ������. . .
".\nt5.1\Windows XP\x86-SP3-CHS\windowsserver2003.windowsxp-kb963093-x86-enu_c53606bca846117e1cebe7dd9a37251cb84aa41d.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb923561-x86-chs_9ae31904b5cd7d9588e398c3cd048b590b2b692c.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb946648-x86-chs_cbe0433aa356d874cba4574bad4f437fc297c27a.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb950762-x86-chs_6a09958f4a41c408f0737b7b3ef28b179704b009.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb950974-x86-chs_e7fa57dcefb453b53e7fb06632a484a24b677c07.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb951698-x86-chs_b0449deb62943c90dcc04c176705e0187af63386.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb951748-x86-chs_784d21a6e683ad540a19b4d92c105f8db1a9ba6b.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb951978-x86-chs_893c898f85f0308f508e0f0301e1c12494251d49.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb952004-x86-chs_ddfadcaaf6f5523ecf9e49c8732b0022db34a607.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb952287-x86-chs_639661482186a0125d64b719e96e75f272e4d9b1.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb952954-x86-chs_ea9749c96c163b3b60de3c7951ad322ed02f5155.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb953155-x86-chs_20fcaa2307a254bbe3c64ea6230539282b4c0251.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb954459-x86-chs_254e77ca1f4e882278358cf5eb3afb875a50bdbb.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb956802-x86-chs_11d2b46dc9cb4203b34aff21975d08a883150b42.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb956803-x86-chs_d37ddc006f007566cecc30305179c04c803f277d.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb956844-x86-chs_a35321d6e224ac04aed2e6f6048c40fccfef4db3.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb957097-x86-chs_5e4a0171d51d7a57cc6dec8ee88a0116dcafde2f.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb958644-x86-chs_84f9b32264d77edb0f829a005b85b16619468f56.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb958869-x86-chs_80abdc81b0a6c0d4c77a2f569218ec95030a91a5.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb959426-x86-chs_431b5ff07ddde8bea2f8ca62f1e3fa277d389aa8.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb960225-x86-chs_eb441d7d91fe6cc070486e270b843ea3c2c68349.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb960803-x86-chs_6e0963d8b93ceda2948578c78a283862922ca46e.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb960859-x86-chs_3646ea85c619c392a7dfeb836e8b384b3b21a757.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb961501-x86-chs_18026c4ac2e75084c9cfdaebbe9a7d7fb746a31c.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb967715-x86-chs_62d04c3b552f97d50fd92ddd15754a98c5b409a5.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb968389-x86-chs_81aef2a25a43c8c2355a1530c9369cd1d762faab.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb969059-x86-chs_9e8e8dd583fe0356dc1fb1650aba9cf512136c43.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb971486-x86-chs_b0867b548872eff6e69126f0831c1124484eb9ee.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb971557-x86-chs_eafe79b2ad81fe54b1833217fe3ff9bd1a46c447.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb972270-x86-chs_b239c333fedb55860f6771aac4fe1ca56db62268.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb973507-x86-chs_b235173ddb48dccd075c5d64d1086c79fa814aa3.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb973815-x86-chs_5e9ab5f4a3bf74f863c13593d0d503dbc6b28780.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb973869-x86-chs_11ea13e6e6031e21d8ffb665dd597ad424d65e95.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb973904-x86-chs_a589d689d32877a0b0cf2a1c2c763b397687c796.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb974112-x86-chs_84364bb68fce4d6dcf355e5c70cc615445a7fe2d.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb974318-x86-chs_d960f318af0f0a40aa76f8560c6d32cf1efef964.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb974392-x86-chs_da2f060a8edcc33a25bb39c6bd6ac0508feaeaf5.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb974571-x86-chs_c42df7657f5e3407dece148dcdd29599e0009d3f.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb975025-x86-chs_957458b571a9dc74b565233823caae0fc393ed2d.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb975467-x86-chs_33adf3b80cc7869a6792a6d2fb3838c3b764d973.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb975560-x86-chs_4540d44e03e197961f0a13118eaf8f8a69746206.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb975713-x86-chs_62b93636b8ce6263a6cff66be65331c6c5a6a12b.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb977914-x86-chs_5ae6cfd2946f4f4cd802581c743e409d4ec9a1f5.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb978037-x86-chs_ff071d465a96a1e71beb63e9dd126976a414b6ce.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-kb978706-x86-chs_dc862b2d9963773f8205e977a518ab2ad8477d69.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\x86-SP3-CHS\windowsxp-windowsmedia-kb973540-x86-chs_a9b361d1a87e3ad89b41865dd64cbf5ce1cc68f5.exe" /passive /nobackup /norestart
echo 
cls
echo ��װ�ɹ���������ֶ��������ļ������
echo ��������˻���������. . .
pause >nul
goto menu

:xpcu
echo ���������ʼ��װInternet Explorer 8��Windows Search 4.0��Windows Media Player 11
echo ��ȷ������Windows XP���������Ѽ������Windows Media Player 11�޷���װ
pause >nul
echo ��װInternet Explorer 8��. . .
".\nt5.1\Windows XP\other\IE8-WindowsXP-x86-CHS.exe" /passive /update-no /no-default /norestart
echo ��װWindows Search 4.0��. . .
".\nt5.1\Windows XP\other\windowssearch-kb940157-xp-x86-chs_9df57daf8814565225b7a2a02c9fe71ffa25f482.exe" /passive /norestart
echo ��װWindows Media Player 11��. . .
".\nt5.1\Windows XP\other\wmp11-windowsxp-x86-zh-cn_12bd089cfe7ef1889ea589d158e338b77ed10863.exe" /Q
echo 
cls
echo ��װ�ɹ���������ֶ��������ļ������
echo ��������˻���������. . .
pause >nul
goto menu

:tlss
goto menu
cls
echo �ڰ�װ����ǰ����ȷ����
echo 1.����ϵͳΪWindows XP Professional��x86��Edition��32λרҵ�棩Service Pack 3����SP3��
echo 
echo Ϊ�˲��������ԣ����²����᣺
echo 1.αװ����Windows XPΪPOSReady 2009���Ҳ��ɳ���
::echo 2.ǿ�ƽ�����Windows XP�汾����ΪSP3���ò������ܵ�����������������
::echo �����������������������������Ҫ���밲ȫģʽ��ִ�������ϵ�xptls-cleanup.bat
echo �������Ķ�����Ը�е����Ϻ�����밴�������ʼ����. . .
pause >nul
::echo ���ڸ����������. . .
::copy ".\nt5.1\Windows XP\XPTLS1.1and1.2\xptls-cleanup.bat" "%systemdrive%\Documents and Settings\%username%\����\xptls-cleanup.bat"
::copy ".\nt5.1\Windows XP\XPTLS1.1and1.2\xptls-cleanup.bat" "%systemdrive%\Documents and Settings\Administrator\����\xptls-cleanup.bat"
cls
echo ���ٴ�ȷ�������Ķ�����Ը�е����Ϻ�����ò������ɳ�����������ܵ��£������������ڣ����������������޷���װ��������
echo ��ȷ�������Ķ�����Ը�е����Ϻ�������밴��������������������رհ�ť���رճ���
pause >nul
echo ���ڵ�������. . .
echo �����ֵ���������"��"����Ҫ�����룬������y���س�
".\nt5.1\Windows XP\XPTLS1.1and1.2\XPfakePOSReady2009.reg"
::reg add 
echo ���ڰ�װ����. . .
".\nt5.1\Windows XP\XPTLS1.1and1.2\ie8-windowsxp-kb4316682-x86-embedded-chs_94c33f73e5c7b2f9e28ea5938c7ddd6f7f6e4cf2.exe" /passive /nobackup /norestart
".\nt5.1\Windows XP\XPTLS1.1and1.2\windowsxp-kb4019276-x86-embedded-chs_ee3cfa70df143266959b276395529eae17178821.exe" /passive /nobackup /norestart
copy ".\nt5.1\Windows XP\XPTLS1.1and1.2\XPuseTLS1.1and1.2.bat" "%systemdrive%\Documents and Settings\%username%\����\XPuseTLS1.1and1.2.bat"
echo 
cls
echo ��װ�ɹ���������ֶ��������ļ������
echo ��������������ֶ����������ϵ�XPuseTLS1.1and1.2.bat
echo ��������˻���������. . .
pause >nul
goto menu

:7
cls
echo ��ѡ������ϵͳ�ܹ�
echo --------------------
echo ��1��ֱ�Ӱ�װsha256���޸������ް�ȫ�ṩ�����������VMtools���⣩
echo ��2��x86�ܹ���32λ���������VMtools��Windows Update���⣩
echo ��3��x64�ܹ���64λ���������VMtools��Windows Update���⣩
echo --------------------
set /p a="ѡ��һ��ѡ���԰�װ��"
if /i "%a%" EQU "1" ".\nt6.1\Windows 7\sha256_fix.exe"
if /i "%a%" EQU "2" goto 732
if /i "%a%" EQU "3" goto 764
pause
goto menu

:732
cls
dir ".\nt6.1\Windows 7\x86" /b
echo ȷ�ϰ�װ�������£����������ʼ����. . .
pause >nul
echo ��װ������. . .
".\nt6.1\Windows 7\x86\windows6.1-kb3020369-x86_82e168117c23f7c479a97ee96c82af788d07452e.msu" /quiet /norestart
".\nt6.1\Windows 7\x86\windows6.1-kb3172605-x86_ae03ccbd299e434ea2239f1ad86f164e5f4deeda.msu" /quiet /norestart
".\nt6.1\Windows 7\x86\windows6.1-kb3177467-v2-x86_abd69a188878d93212486213990c8caab4d6ae57.msu" /quiet /norestart
".\nt6.1\Windows 7\x86\windows6.1-kb4474419-v3-x86_0f687d50402790f340087c576886501b3223bec6.msu" /quiet /norestart
".\nt6.1\Windows 7\x86\windows6.1-kb4490628-x86_3cdb3df55b9cd7ef7fcb24fc4e237ea287ad0992.msu" /quiet /norestart
echo 
cls
echo ��װ�ɹ���������ֶ��������ļ������
echo ��������˻���������. . .
pause >nul
goto menu

:764
cls
dir ".\nt6.1\Windows 7\x64" /b
echo ȷ�ϰ�װ�������£����������ʼ����. . .
pause >nul
echo ��װ������. . .
".\nt6.1\Windows 7\x64\windows6.1-kb3020369-x64_5393066469758e619f21731fc31ff2d109595445.msu" /quiet /norestart
".\nt6.1\Windows 7\x64\windows6.1-kb3172605-x64_2bb9bc55f347eee34b1454b50c436eb6fd9301fc.msu" /quiet /norestart
".\nt6.1\Windows 7\x64\windows6.1-kb3177467-v2-x64_b9df2405e7e034e3ffda160fff99a36ab96ba187.msu" /quiet /norestart
".\nt6.1\Windows 7\x64\windows6.1-kb4474419-v3-x64_b5614c6cea5cb4e198717789633dca16308ef79c.msu" /quiet /norestart
".\nt6.1\Windows 7\x64\windows6.1-kb4490628-x64_d3de52d6987f7c8bdc2c015dca69eac96047c76e.msu" /quiet /norestart
echo 
cls
echo ��װ�ɹ���������ֶ��������ļ������
echo ��������˻���������. . .
pause >nul
goto menu

:81
cls
echo ��ѡ������ϵͳ�ܹ�
echo --------------------
echo ��1��x86�ܹ���32λ���������Windows Update���⣩
echo ��2��x64�ܹ���64λ���������Windows Update���⣩
echo --------------------
set /p a="ѡ��һ��ѡ���԰�װ��"
if /i "%a%" EQU "1" goto 8132
if /i "%a%" EQU "2" goto 8164
pause
goto menu

:8132
cls
dir ".\nt6.3\Windows 8.1\x86" /b
echo ȷ�ϰ�װ�������£����������ʼ����. . .
pause >nul
echo ��װ������. . .
".\nt6.3\Windows 8.1\x86\windows8.1-kb3021910-x86_7e70173bec00c3d4fe3b0b8cba17b095b4ed2d20.msu" /quiet /norestart
".\nt6.3\Windows 8.1\x86\windows8.1-kb3172614-x86_d11c233c8598b734de72665e0d0a3f2ef007b91f.msu" /quiet /norestart
".\nt6.3\Windows 8.1\x86\windows8.1-kb3173424-x86_fcf7142a388a08fde7c54f23e84450f18a8aaec5.msu" /quiet /norestart
echo 
cls
echo ��װ�ɹ���������ֶ��������ļ������
echo ��������˻���������. . .
pause >nul
goto menu

:8164
cls
dir ".\nt6.3\Windows 8.1\x64" /b
echo ȷ�ϰ�װ�������£����������ʼ����. . .
pause >nul
echo ��װ������. . .
".\nt6.3\Windows 8.1\x64\windows8.1-kb3021910-x64_e291c0c339586e79c36ebfc0211678df91656c3d.msu" /quiet /norestart
".\nt6.3\Windows 8.1\x64\windows8.1-kb3172614-x64_e41365e643b98ab745c21dba17d1d3b6bb73cfcc.msu" /quiet /norestart
".\nt6.3\Windows 8.1\x64\windows8.1-kb3173424-x64_9a1c9e0082978d92abee71f2cfed5e0f4b6ce85c.msu" /quiet /norestart
echo 
cls
echo ��װ�ɹ���������ֶ��������ļ������
echo ��������˻���������. . .
pause >nul
goto menu