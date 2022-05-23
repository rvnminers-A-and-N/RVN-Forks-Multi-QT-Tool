@ECHO OFF
:WELCOME
ECHO LOADING ALPHA'S MULTI-QT OPENER...
timeout 10

:SET-HD
echo %homedrive%
CHOICE /C YN /N /M "IS THIS YOUR DESIRED WORKING HOMEDRIVE? Y/N"%1
IF %ERRORLEVEL%==1 GOTO SET-HD_YES
IF %ERRORLEVEL%==2 GOTO SET-HD_NO

:SET-HD_YES
GOTO SET-HP

:SET-HD_NO
set /p h_d=ENTER YOUR DESIRED HOMEDRIVE HERE (Ex. D:): 
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
GOTO DIR_MOVE

:SET-UP_NO
set /p u_p=ENTER YOUR DESIRED USERPROFILE HERE (Ex. C:\Users\user): 
set userprofile=%u_p%
ECHO USERPROFILE IS NOW %userprofile%
timeout 10
GOTO DIR_MOVE

:DIR_MOVE
ECHO MOVING TO DESKTOP...
cd %userprofile%\Desktop
set /p w_n=ENTER YOUR SPECIFIED WALLET DIRECTORY FROM THE INSTALLER HERE (ex. Wallets): 
cd %userprofile%\Desktop\%w_n%
GOTO RVN
timeout 10

:RVN
CHOICE /C YNC /N /M "OPEN RVN QT-WALLET? Y/N OR C TO CANCEL"%1
IF %ERRORLEVEL%==1 GOTO RVN_YES
IF %ERRORLEVEL%==2 GOTO RVN_NO
IF %ERRORLEVEL%==3 GOTO CANCEL

:RVN_YES
ECHO OPENING RVN-QT...
cd %userprofile%\Desktop\%w_n%\raven-4.3.2.1\bin
START raven-qt.exe 
timeout 10
GOTO RITO

:RVN_NO
ECHO RVN-QT NOT OPENED...
timeout 10
GOTO RITO

:RITO
CHOICE /C YNC /N /M "OPEN RITO QT-WALLET? Y/N OR C TO CANCEL"%1
IF %ERRORLEVEL%==1 GOTO RITO_YES
IF %ERRORLEVEL%==2 GOTO RITO_NO
IF %ERRORLEVEL%==3 GOTO CANCEL

:RITO_YES
ECHO OPENING RITO-QT... 
cd %userprofile%\Desktop\%w_n%\rito-2.4.2.0\bin
START rito-qt.exe
timeout 10
GOTO PGN

:RITO_NO
ECHO RITO-QT NOT OPENED...
timeout 10
GOTO PGN

:PGN
CHOICE /C YNC /N /M "OPEN PGN QT-WALLET? Y/N OR C TO CANCEL"%1
IF %ERRORLEVEL%==1 GOTO PGN_YES
IF %ERRORLEVEL%==2 GOTO PGN_NO
IF %ERRORLEVEL%==3 GOTO CANCEL

:PGN_YES
ECHO OPENING PGN-QT... 
cd %userprofile%\Desktop\%w_n%\pigeon-build
START pigeon-qt.exe
timeout 10
GOTO RTM

:PGN_NO
ECHO PGN-QT NOT OPENED...
timeout 10
GOTO RTM

:RTM
CHOICE /C YNC /N /M "OPEN RTM QT-WALLET? Y/N OR C TO CANCEL"%1
IF %ERRORLEVEL%==1 GOTO RTM_YES
IF %ERRORLEVEL%==2 GOTO RTM_NO
IF %ERRORLEVEL%==3 GOTO CANCEL

:RTM_YES
ECHO OPENING RTM-QT...
cd %userprofile%\Desktop\%w_n%\raptoreum_1.2.15.3_windows_64
START raptoreum-qt.exe
timeout 10
GOTO AVN

:RTM_NO
ECHO RTM-QT NOT OPENED...
timeout 10
GOTO AVN

:AVN
CHOICE /C YNC /N /M "OPEN AVN QT-WALLET? Y/N OR C TO CANCEL"%1
IF %ERRORLEVEL%==1 GOTO AVN_YES
IF %ERRORLEVEL%==2 GOTO AVN_NO
IF %ERRORLEVEL%==3 GOTO CANCEL

:AVN_YES
ECHO OPENING AVN-QT... 
cd %userprofile%\Desktop\%w_n%\AVN x86_64-win 3.1.1
START avian-qt.exe
timeout 10
GOTO XRD

:AVN_NO
ECHO AVN-QT NOT OPENED...
timeout 10
GOTO XRD

:XRD
CHOICE /C YNC /N /M "OPEN XRD QT-WALLET? Y/N OR C TO CANCEL"%1
IF %ERRORLEVEL%==1 GOTO XRD_YES
IF %ERRORLEVEL%==2 GOTO XRD_NO
IF %ERRORLEVEL%==3 GOTO CANCEL

:XRD_YES
ECHO OPENING XRD-QT... 
cd %userprofile%\Desktop\%w_n%\xrd-0.3.2
START ravendark-qt.exe
timeout 10
GOTO FOXD

:XRD_NO
ECHO XRD-QT NOT OPENED...
timeout 10
GOTO FOXD

:FOXD
CHOICE /C YNC /N /M "OPEN FOXD QT-WALLET? Y/N OR C TO CANCEL"%1
IF %ERRORLEVEL%==1 GOTO FOXD_YES
IF %ERRORLEVEL%==2 GOTO FOXD_NO
IF %ERRORLEVEL%==3 GOTO CANCEL

:FOXD_YES
ECHO OPENING FOXDCOIN-QT... 
cd %userprofile%\Desktop\%w_n%\foxd-1.0.1
START foxdcoin-qt.exe
timeout 10
GOTO HVQ

:FOXD_NO
ECHO FOXD-QT NOT OPENED...
timeout 10
GOTO HVQ

:HVQ
CHOICE /C YNC /N /M "OPEN HVQ QT-WALLET? Y/N OR C TO CANCEL"%1
IF %ERRORLEVEL%==1 GOTO HVQ_YES
IF %ERRORLEVEL%==2 GOTO HVQ_NO
IF %ERRORLEVEL%==3 GOTO CANCEL

:HVQ_YES
ECHO OPENING HIVE-QT... 
cd %userprofile%\Desktop\%w_n%\hvq-4.4.4.2
START hive-qt.exe
timeout 10
GOTO SATO

:HVQ_NO
ECHO HIVE-QT NOT OPENED...
timeout 10
GOTO SATO

:SATO
CHOICE /C YNC /N /M "OPEN SATO QT-WALLET? Y/N OR C TO CANCEL"%1
IF %ERRORLEVEL%==1 GOTO SATO_YES
IF %ERRORLEVEL%==2 GOTO SATO_NO
IF %ERRORLEVEL%==3 GOTO CANCEL

:SATO_YES
ECHO OPENING SATO-QT... 
cd %userprofile%\Desktop\%w_n%\sato-1.1.5
START sato-qt.exe
timeout 10
GOTO ARL

:SATO_NO
ECHO SATO-QT NOT OPENED...
timeout 10
GOTO ARL

:ARL
CHOICE /C YNC /N /M "OPEN ARL QT-WALLET? Y/N OR C TO CANCEL"%1
IF %ERRORLEVEL%==1 GOTO ARL_YES
IF %ERRORLEVEL%==2 GOTO ARL_NO
IF %ERRORLEVEL%==3 GOTO CANCEL

:ARL_YES
ECHO OPENING ARIELCOIN-QT... 
cd %userprofile%\Desktop\%w_n%\arl-0.18.1
START arielcoin-qt.exe
timeout 10
GOTO RUN

:ARL_NO
ECHO ARIELCOIN-QT NOT OPENED...
timeout 10
GOTO RUN

:RUN
ECHO BE PATIENT AND LET THE BLOCK INDEXES LOAD!!!
timeout 120
ECHO LOADING COMPLETE... MULTI-QT OPENER SUCCESSFUL! ENJOY AND KEEP THOSE KEYS SAFE!!!
ECHO USE THIS TO RUN THE QT-CLOSER BY LEAVING IT OPEN UNTIL READY, OR CANCEL AND CLOSE LATER BY OPENING THE QT-CLOSER.BAT!!!
CHOICE /C YNCE /N /M "OPEN QT-CLOSER? Y/N, C TO CANCEL SCRIPT, or E TO GO TO SCRIPT END MESSAGE"%1
IF %ERRORLEVEL%==1 GOTO QC_YES
IF %ERRORLEVEL%==2 GOTO QC_NO
IF %ERRORLEVEL%==3 GOTO CANCEL
IF %ERRORLEVEL%==4 GOTO END

:QC_YES
ECHO OPENING QT-CLOSER...
cd %userprofile%\Desktop\RVN-and-Forks-Multi-QT-Tool\Windows Batch Scripts
echo %cd%
START qt-closer.bat
ECHO QT-CLOSER STARTED!
GOTO END

:QC_NO
ECHO QT-CLOSER NOT OPENED...
timeout 10
GOTO END

:CANCEL
ECHO PROCESS CANCELED!
ECHO THANKS FOR USING THIS TOOL, CONSIDER CHECKING OUT THE GITHUB, DISCORD, PERHAPS CONTRIBUTE, OR EVEN DONATE!!!
timeout 10
exit

:END
ECHO BE PATIENT AND LET THE BLOCK INDEXES LOAD IF NOT STARTING THE QT-CLOSER!!!
timeout 120
ECHO LOADING COMPLETE... MULTI-QT OPENER SUCCESSFUL!!! ENJOY AND KEEP THOSE KEYS SAFE!!!
ECHO THANKS FOR USING THIS TOOL, CONSIDER CHECKING OUT THE GITHUB, DISCORD, PERHAPS CONTRIBUTING, OR EVEN DONATING!!!
timeout 10
exit
