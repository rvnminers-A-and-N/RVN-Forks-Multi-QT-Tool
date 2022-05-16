@ECHO OFF
:7ZIP
CHOICE /C YNC /N /M "DO YOU HAVE 7-ZIP INSTALLED? Y/N or C to Cancel"%1
IF %ERRORLEVEL%==1 GOTO 7ZIP_YES
IF %ERRORLEVEL%==2 GOTO 7ZIP_NO
IF %ERRORLEVEL%==3 GOTO CANCEL

:7ZIP_YES
GOTO MAKE_DIR

:7ZIP_NO
cd C:\Users\your_user_here\Desktop
mkdir 7-ZIP
cd C:\Users\your_user_here\Desktop\7-ZIP
CHOICE /C YN /N /M "IS YOUR WINDOWS SYSTEM 64-BIT? Y/N"%1
IF %ERRORLEVEL%==1 GOTO 64-W
IF %ERRORLEVEL%==2 GOTO 32-W

:64-W
ECHO FETCHING 7z-64 PACKAGE...
powershell -Command "Invoke-WebRequest https://www.7-zip.org/a/7z2107-x64.exe -OutFile 7z-64.exe"
ECHO INITIATING 7z-64...
START C:\Users\your_user_here\Desktop\7-ZIP\7z-64.exe /S /D="C:\Program Files\7-Zip"
GOTO MAKE_DIR

:32-W
ECHO FETCHING 7z-32 PACKAGE...
powershell -Command "Invoke-WebRequest https://www.7-zip.org/a/7z2107.exe -OutFile 7z-32.exe"
ECHO INITIATING 7z-32...
START C:\Users\your_user_here\Desktop\7-ZIP\7z-32.exe /S /D="C:\Program Files\7-Zip"
GOTO MAKE_DIR

:MAKE_DIR
ECHO MAKING WALLET DIRECTORY...
mkdir C:\Users\your_user_here\Desktop\Wallets
ECHO WALLET DIRETCORY MADE!
GOTO RVN

:RVN
CHOICE /C YNC /N /M "INSTALL RVN WALLET? Y/N OR C TO CANCEL"%1
IF %ERRORLEVEL%==1 GOTO RVN_YES
IF %ERRORLEVEL%==2 GOTO RVN_NO
IF %ERRORLEVEL%==3 GOTO CANCEL

:RVN_YES
ECHO FETCHING RAVENCORE...
cd C:\Users\your_user_here\Desktop\Wallets
powershell -Command "Invoke-WebRequest https://github.com/RavenProject/Ravencoin/releases/download/v4.3.2.1/raven-4.3.2.1-win64.zip -OutFile RVN.zip"
ECHO PACKAGE INSTALLED!
timeout 10
ECHO PREPARING TO UNZIP PACKAGE...
timeout 10
ECHO LOCATING 7-ZIP...
"C:\Program Files\7-Zip\7z.exe" x RVN.zip
ECHO PACKAGE UNZIPPPED AND RAVENCORE INSTALLED!
timeout 10
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
ECHO FETCHING RITOCORE...
cd C:\Users\your_user_here\Desktop\Wallets
powershell -Command "Invoke-WebRequest https://github.com/RitoProject/Ritocoin/releases/download/2.4.2.0/rito-2.4.2.0-win64.zip -OutFile RITO.zip"
ECHO PACKAGE INSTALLED!
timeout 10
ECHO PREPARING TO UNZIP PACKAGE...
timeout 10
ECHO LOCATING 7-ZIP...
"C:\Program Files\7-Zip\7z.exe" x RITO.zip
ECHO PACKAGE UNZIPPPED AND RITOCORE INSTALLED!
timeout 10
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
ECHO FETCHING PIGEONCORE...
cd C:\Users\your_user_here\Desktop\Wallets
powershell -Command "Invoke-WebRequest https://github.com/Pigeoncoin/pigeoncoin/releases/download/1.18.2.0/pigeon-win-1.18.2.0.zip -OutFile PGN.zip"
ECHO PACKAGE INSTALLED!
timeout 10
ECHO PREPARING TO UNZIP PACKAGE...
timeout 10
ECHO LOCATING 7-ZIP...
"C:\Program Files\7-Zip\7z.exe" x PGN.zip
ECHO PACKAGE UNZIPPPED AND PIGEONCORE INSTALLED!
timeout 10
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
ECHO FETCHING RAPTOREUMCORE...
cd C:\Users\your_user_here\Desktop\Wallets
powershell -Command "Invoke-WebRequest https://github.com/Raptor3um/raptoreum/releases/download/1.3.17.99/raptoreum-win-1.3.17.99-SNAPSHOT.zip -OutFile RTM.zip"
ECHO PACKAGE INSTALLED!
timeout 10
ECHO PREPARING TO UNZIP PACKAGE...
timeout 10
ECHO LOCATING 7-ZIP...
"C:\Program Files\7-Zip\7z.exe" x RTM.zip
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
ECHO FETCHING AVIANCORE...
cd C:\Users\your_user_here\Desktop\Wallets
powershell -Command "Invoke-WebRequest https://github.com/AvianNetwork/Avian/releases/download/v3.1.1/AVN.x86_64-win.3.1.1.zip -OutFile AVN.zip"
ECHO PACKAGE INSTALLED!
timeout 10
ECHO PREPARING TO UNZIP PACKAGE...
timeout 10
ECHO LOCATING 7-ZIP...
"C:\Program Files\7-Zip\7z.exe" x AVN.zip
ECHO PACKAGE UNZIPPPED AND AVIANCORE INSTALLED!
timeout 10
GOTO END

:AVN_NO
ECHO AVIANCORE NOT INSTALLED!
GOTO END

:CANCEL
ECHO PROCESS CANCELLED...
ECHO THANKS FOR USING!!!
timeout 10
exit

:END
ECHO THANKS FOR USING, TIME TO RUN THE LAUNCHER!!!
timeout 10
exit
