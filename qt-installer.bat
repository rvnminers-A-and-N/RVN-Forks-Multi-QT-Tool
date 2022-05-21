@ECHO OFF
:WELCOME
ECHO LOADING ALPHA'S MULTI-QT INSTALLER...
timeout 10

:SET-HD
echo %homedrive%
CHOICE /C YN /N /M "IS THIS YOUR DESIRED WORKING HOMEDRIVE? Y/N"%1
IF %ERRORLEVEL%==1 GOTO SET-HD_YES
IF %ERRORLEVEL%==2 GOTO SET-HD_NO

:SET-HD_YES
GOTO SET-HP

:SET-HD_NO
set /p h_d=ENTER YOUR DESIRED HOMEDRIVE HERE (EX. D:): 
set homedrive=%h_d%
ECHO HOMEDRIVE IS NOW %homedrive%
timeout 10
GOTO SET-HP

:SET-HP
echo %homepath%
CHOICE /C YN /N /M "IS THIS YOUR DESIRED WORKING HOMEPATH? Y/N"%1
IF %ERRORLEVEL%==1 GOTO SET-HP_YES
IF %ERRORLEVEL%==2 GOTO SET-HP_NO

:SET-HP_YES
GOTO SET-UP

:SET-HP_NO
set /p h_p=ENTER YOUR DESIRED HOMEPATH HERE (Ex. \Users\user): 
set homepath=%h_p%
ECHO HOMEPATH IS NOW %homepath%
timeout 10
GOTO SET-UP

:SET-UP
echo %userprofile%
CHOICE /C YN /N /M "IS THIS YOUR DESIRED WORKING USERPROFILE? Y/N"%1
IF %ERRORLEVEL%==1 GOTO SET-UP_YES
IF %ERRORLEVEL%==2 GOTO SET-UP_NO

:SET-UP_YES
GOTO DIR_CHECK

:SET-UP_NO
set /p u_p=ENTER YOUR DESIRED USERPROFILE HERE (Ex. C:\Users\user): 
set userprofile=%u_p%
ECHO USERPROFILE IS NOW %userprofile%
timeout 10
GOTO DIR_CHECK

:DIR_CHECK
ECHO IF YOU ARE NOT RUNNING THIS FROM %userprofile%\Desktop\RVN-and-Forks-Multi-QT-Tool\Windows Bash Scripts YOU NEED TO MOVE THE GITHUB PACKAGE FROM DOWNLOADS (OR WHERVER IT WENT) TO THE DESKTOP TO ENSURE THE SCRIPTS WORK!!!
CHOICE /C YN /N /M "ARE YOU RUNNING THIS FROM %userprofile%\Desktop\RVN-and-Forks-Multi-QT-Tool\Windows Bash Scripts? Y/N"%1
IF %ERRORLEVEL%==1 GOTO 7ZIP
IF %ERRORLEVEL%==2 GOTO CANCEL

:7ZIP
CHOICE /C YNC /N /M "DO YOU HAVE 7-ZIP INSTALLED? Y/N or C to Cancel"%1
IF %ERRORLEVEL%==1 GOTO 7ZIP_YES
IF %ERRORLEVEL%==2 GOTO 7ZIP_NO
IF %ERRORLEVEL%==3 GOTO CANCEL

:7ZIP_YES
GOTO DIR_WALLET

:7ZIP_NO
cd %userprofile%\Desktop
mkdir 7-ZIP
cd %userprofile%\Desktop\7-ZIP
CHOICE /C YN /N /M "IS YOUR WINDOWS SYSTEM 64-BIT? Y/N"%1
IF %ERRORLEVEL%==1 GOTO 64-W
IF %ERRORLEVEL%==2 GOTO 32-W

:64-W
ECHO FETCHING 7z-64 PACKAGE...
powershell -Command "Invoke-WebRequest https://www.7-zip.org/a/7z2107-x64.exe -OutFile 7z-64.exe"
ECHO INITIATING 7z-64...
START %userprofile%\Desktop\7-ZIP\7z-64.exe /S /D="C:\Program Files\7-Zip"
GOTO DIR_WALLET

:32-W
ECHO FETCHING 7z-32 PACKAGE...
powershell -Command "Invoke-WebRequest https://www.7-zip.org/a/7z2107.exe -OutFile 7z-32.exe"
ECHO INITIATING 7z-32...
START %userprofile%\Desktop\7-ZIP\7z-32.exe /S /D="C:\Program Files\7-Zip"
GOTO DIR_WALLET

:DIR_WALLET
ECHO MOVING TO DESKTOP...
cd %userprofile%\Desktop
ECHO %cd%
set /p w_n=ENTER YOUR DESIRED WALLET DIRECTORY NAME HERE (ex. Wallets): 
mkdir %w_n%
ECHO WALLET DIRECTORY MADE ON DESKTOP!
GOTO RVN

:RVN
CHOICE /C YNC /N /M "INSTALL RVN WALLET? Y/N OR C TO CANCEL"%1
IF %ERRORLEVEL%==1 GOTO RVN_YES
IF %ERRORLEVEL%==2 GOTO RVN_NO
IF %ERRORLEVEL%==3 GOTO CANCEL

:RVN_YES
ECHO MOVING TO DESIRED WALLET DIRECTORY AND FETCHING RAVENCORE...
cd %userprofile%\Desktop\%w_n%
ECHO %cd%
powershell -Command "Invoke-WebRequest https://github.com/RavenProject/Ravencoin/releases/download/v4.3.2.1/raven-4.3.2.1-win64.zip -OutFile RVN.zip"
ECHO PACKAGE INSTALLED!
ECHO PREPARING TO UNZIP PACKAGE...
timeout 10
ECHO LOCATING 7-ZIP...
"%homedrive%\Program Files\7-Zip\7z.exe" x RVN.zip
ECHO PACKAGE UNZIPPPED AND RAVENCORE INSTALLED!
GOTO RITO

:RVN_NO
ECHO RAVENCORE NOT INSTALLED!
GOTO RITO

:RITO
CHOICE /C YNC /N /M "INSTALL RITO WALLET? Y/N OR C TO CANCEL"%1
IF %ERRORLEVEL%==1 GOTO RITO_YES
IF %ERRORLEVEL%==2 GOTO RITO_NO
IF %ERRORLEVEL%==3 GOTO CANCEL

:RITO_YES
ECHO MOVING TO DESIRED WALLET DIRECTORY AND FETCHING RITOCORE
cd %userprofile%\Desktop\%w_n%
ECHO %cd%
powershell -Command "Invoke-WebRequest https://github.com/RitoProject/Ritocoin/releases/download/2.4.2.0/rito-2.4.2.0-win64.zip -OutFile RITO.zip"
ECHO PACKAGE INSTALLED!
ECHO PREPARING TO UNZIP PACKAGE...
timeout 10
ECHO LOCATING 7-ZIP...
"%homedrive%\Program Files\7-Zip\7z.exe" x RITO.zip
ECHO PACKAGE UNZIPPPED AND RITOCORE INSTALLED!
GOTO PGN

:RITO_NO
ECHO RITOCORE NOT INSTALLED!
GOTO PGN

:PGN
CHOICE /C YNC /N /M "INSTALL PGN WALLET? Y/N OR C TO CANCEL"%1
IF %ERRORLEVEL%==1 GOTO PGN_YES
IF %ERRORLEVEL%==2 GOTO PGN_NO
IF %ERRORLEVEL%==3 GOTO CANCEL

:PGN_YES
ECHO MOVING TO DESIRED WALLET DIRECTORY AND FETCHING PIGEONCORE...
cd %userprofile%\Desktop\%w_n%
ECHO %cd%
powershell -Command "Invoke-WebRequest https://github.com/Pigeoncoin/pigeoncoin/releases/download/1.18.2.0/pigeon-win-1.18.2.0.zip -OutFile PGN.zip"
ECHO PACKAGE INSTALLED!
ECHO PREPARING TO UNZIP PACKAGE...
timeout 10
ECHO LOCATING 7-ZIP...
"%homedrive%\Program Files\7-Zip\7z.exe" x PGN.zip
ECHO PACKAGE UNZIPPPED AND PIGEONCORE INSTALLED!
GOTO RTM

:PGN_NO
ECHO PIGEONCORE NOT INSTALLED!
GOTO RTM

:RTM
CHOICE /C YNC /N /M "INSTALL RTM WALLET? Y/N OR C TO CANCEL"%1
IF %ERRORLEVEL%==1 GOTO RTM_YES
IF %ERRORLEVEL%==2 GOTO RTM_NO
IF %ERRORLEVEL%==3 GOTO CANCEL

:RTM_YES
ECHO MOVING TO DESIRED WALLET DIRECTORY AND FETCHING RAPTOREUMCORE...
cd %userprofile%\Desktop\%w_n%
ECHO %cd%
powershell -Command "Invoke-WebRequest https://github.com/Raptor3um/raptoreum/releases/download/1.3.17.99/raptoreum-win-1.3.17.99-SNAPSHOT.zip -OutFile RTM.zip"
ECHO PACKAGE INSTALLED!
ECHO PREPARING TO UNZIP PACKAGE...
timeout 10
ECHO LOCATING 7-ZIP...
"%homedrive%\Program Files\7-Zip\7z.exe" x RTM.zip
ECHO PACKAGE UNZIPPPED AND RAPTOREUMCORE INSTALLED!
timeout 10
GOTO AVN

:RTM_NO
ECHO RAPTOREUMCORE NOT INSTALLED!
GOTO AVN

:AVN
CHOICE /C YNC /N /M "INSTALL AVN WALLET? Y/N OR C TO CANCEL"%1
IF %ERRORLEVEL%==1 GOTO AVN_YES
IF %ERRORLEVEL%==2 GOTO AVN_NO
IF %ERRORLEVEL%==3 GOTO CANCEL

:AVN_YES
ECHO MOVING TO DESIRED WALLET DIRECTORY AND FETCHING AVIANCORE...
cd %userprofile%\Desktop\%w_n%
ECHO %cd%
powershell -Command "Invoke-WebRequest https://github.com/AvianNetwork/Avian/releases/download/v3.1.1/AVN.x86_64-win.3.1.1.zip -OutFile AVN.zip"
ECHO PACKAGE INSTALLED!
ECHO PREPARING TO UNZIP PACKAGE...
timeout 10
ECHO LOCATING 7-ZIP...
"%homedrive%\Program Files\7-Zip\7z.exe" x AVN.zip
ECHO PACKAGE UNZIPPPED AND AVIANCORE INSTALLED!
GOTO XRD

:AVN_NO
ECHO AVIANCORE NOT INSTALLED!
GOTO XRD

:XRD
CHOICE /C YNC /N /M "INSTALL XRD WALLET? Y/N OR C TO CANCEL"%1
IF %ERRORLEVEL%==1 GOTO XRD_YES
IF %ERRORLEVEL%==2 GOTO XRD_NO
IF %ERRORLEVEL%==3 GOTO CANCEL

:XRD_YES
CHOICE /C YN /N /M "IS YOUR WINDOWS SYSTEM 64-BIT? Y/N"%1
IF %ERRORLEVEL%==1 GOTO 64-W_XRD
IF %ERRORLEVEL%==2 GOTO 32-W_XRD

:64-W_XRD
ECHO MOVING TO DESIRED WALLET DIRECTORY AND FETCHING RAVENDARKCORE...
cd %userprofile%\Desktop\%w_n%
ECHO %cd%
powershell -Command "Invoke-WebRequest https://github.com/raven-dark/raven-dark/releases/download/0.3.2/ravendark-qt-win64-0.3.2.exe -OutFile ravendark-qt.exe"
ECHO PACKAGE INSTALLED!
mkdir xrd-0.3.2
move ravendark-qt.exe %userprofile%\Desktop\%w_n%\xrd-0.3.2
ECHO PACKAGE IS ALREADY AN EXE, RAVENDARKCORE INSTALLED!
timeout 10
GOTO FOXD

:32-W_XRD
ECHO MOVING TO DESIRED WALLET DIRECTORY AND FETCHING RAVENDARKCORE...
cd %userprofile%\Desktop\%w_n%
ECHO %cd%
powershell -Command "Invoke-WebRequest https://github.com/raven-dark/raven-dark/releases/download/0.3.2/ravendark-qt-win32-0.3.2.exe -OutFile ravendark-qt.exe"
ECHO PACKAGE INSTALLED!
mkdir xrd-0.3.2
move ravendark-qt.exe %userprofile%\Desktop\%w_n%\xrd-0.3.2
ECHO PACKAGE IS ALREADY AN EXE, RAVENDARKCORE INSTALLED!
GOTO FOXD

:XRD_NO
ECHO RAVENDARKCORE NOT INSTALLED!
GOTO FOXD

:FOXD
CHOICE /C YNC /N /M "INSTALL FOXD WALLET? Y/N OR C TO CANCEL"%1
IF %ERRORLEVEL%==1 GOTO FOXD_YES
IF %ERRORLEVEL%==2 GOTO FOXD_NO
IF %ERRORLEVEL%==3 GOTO CANCEL

:FOXD_YES
ECHO MOVING TO DESIRED WALLET DIRECTORY AND FETCHING FOXDCORE...
cd %userprofile%\Desktop\%w_n%
ECHO %cd%
powershell -Command "Invoke-WebRequest https://github.com/foxdproject/foxdcoin/releases/download/v.1.0.1/foxdcoin-1.0.1-win64.zip -OutFile FOXD.zip"
ECHO PACKAGE INSTALLED!
ECHO PREPARING TO UNZIP PACKAGE...
timeout 10
ECHO LOCATING 7-ZIP...
"%homedrive%\Program Files\7-Zip\7z.exe" x FOXD.zip
mkdir foxd-1.0.1
move foxdcoin-qt.exe %userprofile%\Desktop\%w_n%\foxd-1.0.1
move foxdcoin-cli.exe %userprofile%\Desktop\%w_n%\foxd-1.0.1 
move foxdcoind.exe %userprofile%\Desktop\%w_n%\foxd-1.0.1
ECHO PACKAGE UNZIPPPED AND FOXDCORE INSTALLED!
GOTO RUN

:FOXD_NO
ECHO FOXDCORE NOT INSTALLED!
GOTO RUN

:RUN
ECHO TIME TO RUN THE LAUNCHER!!!
CHOICE /C YNC /N /M "OPEN QT-LAUNCHER? Y/N OR C TO CANCEL"%1
IF %ERRORLEVEL%==1 GOTO QO_YES
IF %ERRORLEVEL%==2 GOTO QO_NO
IF %ERRORLEVEL%==3 GOTO CANCEL

:QO_YES
ECHO OPENING QT-LAUNCHER...
cd %userprofile%\Desktop\RVN-and-Forks-Multi-QT-Tool\Windows Bash Scripts
START qt-launcher.bat
ECHO QT-LAUNCHER STARTED! 
GOTO END

:QO_NO
ECHO QT-LAUNCHER NOT OPENED...
timeout 10
GOTO END

:CANCEL
ECHO PROCESS CANCELLED...
ECHO THANKS FOR USING THIS TOOL, CONSIDER CHECKING OUT THE GITHUB, DISCORD, PERHAPS CONTRIBUTE, OR EVEN DONATE!!!
timeout 10
exit

:END
ECHO THANKS FOR USING THIS INSTALLER TOOL, READ OUR GITHUB, CHECK THE DISCORD OUT, PARTICIPATE IN CODE CONTRIBUTION, OR MAYBE EVEN DONATE!!!
timeout 10
exit