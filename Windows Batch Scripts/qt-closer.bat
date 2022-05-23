@ECHO OFF
:WELCOME
ECHO LOADING ALPHA'S MULTI-QT CLOSER...
timeout 10

:SET-HD
echo %homedrive%
CHOICE /C YN /N /M "IS THIS YOUR DESIRED WORKING HOMEDRIVE? Y/N"%1
IF %ERRORLEVEL%==1 GOTO SET-HD_YES
IF %ERRORLEVEL%==2 GOTO SET-HD_NO

:SET-HD_YES
GOTO SET-HP

:SET-HD_NO
set /p h_d=Enter Your Specified Homedrive Here (Ex. D:): 
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
set /p h_p=Enter Your Specified homepath Here (Ex. \Users\user): 
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
set /p u_p=Enter Your Specified Userprofile Here (Ex. C:\Users\user): 
set userprofile=%u_p%
ECHO USERPROFILE IS NOW %userprofile%
timeout 10
GOTO DIR_MOVE

:DIR_MOVE
ECHO MOVING TO DESKTOP...
cd %userprofile%\Desktop
set /p w_n=Enter Your Specified Wallet Directory Name From The Installer Here (ex. Wallets): 
cd %userprofile%\Desktop\%w_n%
GOTO RVN
timeout 10

:RVN
CHOICE /C YNC /N /M "CLOSE RVN QT-WALLET? Y/N OR C TO CANCEL"%1
IF %ERRORLEVEL%==1 GOTO RVN_YES
IF %ERRORLEVEL%==2 GOTO RVN_NO
IF %ERRORLEVEL%==3 GOTO CANCEL

:RVN_YES
ECHO CLOSING RVN-QT...
cd %userprofile%\Desktop\%w_n%\raven-4.3.2.1\bin
taskkill /IM raven-qt.exe /T
timeout 10
GOTO RITO

:RVN_NO
ECHO RVN-QT NOT CLOSED...
timeout 10
GOTO RITO

:RITO
CHOICE /C YNC /N /M "CLOSE RITO QT-WALLET? Y/N OR C TO CANCEL"%1
IF %ERRORLEVEL%==1 GOTO RITO_YES
IF %ERRORLEVEL%==2 GOTO RITO_NO
IF %ERRORLEVEL%==3 GOTO CANCEL

:RITO_YES
ECHO CLOSING RITO-QT... 
cd %userprofile%\Desktop\%w_n%\rito-2.4.2.0\bin
taskkill /IM rito-qt.exe /T
timeout 10
GOTO PGN

:RITO_NO
ECHO RITO-QT NOT CLOSED...
timeout 10
GOTO PGN

:PGN
CHOICE /C YNC /N /M "CLOSE PGN QT-WALLET? Y/N OR C TO CANCEL"%1
IF %ERRORLEVEL%==1 GOTO PGN_YES
IF %ERRORLEVEL%==2 GOTO PGN_NO
IF %ERRORLEVEL%==3 GOTO CANCEL

:PGN_YES
ECHO CLOSING PGN-QT... 
cd %userprofile%\Desktop\%w_n%\pigeon-build
taskkill /IM pigeon-qt.exe /T
timeout 10
GOTO RTM

:PGN_NO
ECHO PGN-QT NOT CLOSED...
timeout 10
GOTO RTM

:RTM
CHOICE /C YNC /N /M "CLOSE RTM QT-WALLET? Y/N OR C TO CANCEL"%1
IF %ERRORLEVEL%==1 GOTO RTM_YES
IF %ERRORLEVEL%==2 GOTO RTM_NO
IF %ERRORLEVEL%==3 GOTO CANCEL

:RTM_YES
ECHO CLOSING RTM-QT...
cd %userprofile%\Desktop\%w_n%\raptoreum_1.2.15.3_windows_64
taskkill /IM raptoreum-qt.exe /T
timeout 10
GOTO AVN

:RTM_NO
ECHO RTM-QT NOT CLOSED...
timeout 10
GOTO AVN

:AVN
CHOICE /C YNC /N /M "CLOSE AVN QT-WALLET? Y/N OR C TO CANCEL"%1
IF %ERRORLEVEL%==1 GOTO AVN_YES
IF %ERRORLEVEL%==2 GOTO AVN_NO
IF %ERRORLEVEL%==3 GOTO CANCEL

:AVN_YES
ECHO CLOSING AVN-QT... 
cd %userprofile%\Desktop\%w_n%\AVN x86_64-win 3.1.1
taskkill /IM avian-qt.exe /T
timeout 10
ECHO CAUTION! AVIAN-QT CAN TAKE UP TO 10 MINUTES TO FULLY SHUT DOWN, DO NOT SHUT THE PC DOWN UNTIL MAYBE FIVE MINUTES AFTER CLOSING AVIAN!
timeout 10
GOTO XRD

:AVN_NO
ECHO AVN-QT NOT CLOSED...
timeout 10
GOTO XRD

:XRD
CHOICE /C YNC /N /M "CLOSE XRD QT-WALLET? Y/N OR C TO CANCEL"%1
IF %ERRORLEVEL%==1 GOTO XRD_YES
IF %ERRORLEVEL%==2 GOTO XRD_NO
IF %ERRORLEVEL%==3 GOTO CANCEL

:XRD_YES
ECHO CLOSING XRD-QT... 
cd %userprofile%\Desktop\%w_n%\xrd-0.3.2
taskkill /IM ravendark-qt.exe /T
timeout 10
GOTO FOXD

:XRD_NO
ECHO XRD-QT NOT CLOSED...
timeout 10
GOTO FOXD

:FOXD
CHOICE /C YNC /N /M "CLOSE FOXD QT-WALLET? Y/N OR C TO CANCEL"%1
IF %ERRORLEVEL%==1 GOTO FOXD_YES
IF %ERRORLEVEL%==2 GOTO FOXD_NO
IF %ERRORLEVEL%==3 GOTO CANCEL

:FOXD_YES
ECHO CLOSING FOXDCOIN-QT... 
cd %userprofile%\Desktop\%w_n%\foxd-1.0.1
taskkill /IM foxdcoin-qt.exe /T
timeout 10
GOTO HVQ

:FOXD_NO
ECHO FOXDCOIN-QT NOT CLOSED...
timeout 10
GOTO HVQ

:HVQ
CHOICE /C YNC /N /M "CLOSE HVQ QT-WALLET? Y/N OR C TO CANCEL"%1
IF %ERRORLEVEL%==1 GOTO HVQ_YES
IF %ERRORLEVEL%==2 GOTO HVQ_NO
IF %ERRORLEVEL%==3 GOTO CANCEL

:HVQ_YES
ECHO CLOSING HIVE-QT... 
cd %userprofile%\Desktop\%w_n%\hvq-4.4.4.2
taskkill /IM hive-qt.exe /T
timeout 10
GOTO SATO

:HVQ_NO
ECHO HIVE-QT NOT CLOSED...
timeout 10
GOTO SATO

:SATO
CHOICE /C YNC /N /M "CLOSE SATO QT-WALLET? Y/N OR C TO CANCEL"%1
IF %ERRORLEVEL%==1 GOTO SATO_YES
IF %ERRORLEVEL%==2 GOTO SATO_NO
IF %ERRORLEVEL%==3 GOTO CANCEL

:SATO_YES
ECHO CLOSING SATO-QT... 
cd %userprofile%\Desktop\%w_n%\sato-1.1.5
taskkill /IM sato-qt.exe /T
timeout 10
GOTO ARL

:SATO_NO
ECHO SATO-QT NOT CLOSED...
timeout 10
GOTO ARL

:ARL
CHOICE /C YNC /N /M "CLOSE ARL QT-WALLET? Y/N OR C TO CANCEL"%1
IF %ERRORLEVEL%==1 GOTO ARL_YES
IF %ERRORLEVEL%==2 GOTO ARL_NO
IF %ERRORLEVEL%==3 GOTO CANCEL

:ARL_YES
ECHO CLOSING ARIELCOIN-QT... 
cd %userprofile%\Desktop\%w_n%\arl-0.18.1
taskkill /IM arielcoin-qt.exe /T
timeout 10
GOTO END

:ARL_NO
ECHO ARIELCOIN-QT NOT CLOSED...
timeout 10
GOTO END

:CANCEL
ECHO PROCESS CANCELED!
ECHO ECHO THANKS FOR USING THIS TOOL, CONSIDER CHECKING OUT THE GITHUB, DISCORD, AND PERHAPS CONTRIBUTE TO THE CODE OR EVEN DONATE!!!

timeout 10
exit

:END
ECHO BE PATIENT AND LET THE WALLETS FULLY CLOSE BEFORE SHUTTING THE PC DOWN!!!
timeout 600
ECHO STOPPING COMPLETE... MULTI-QT CLOSER SUCCESSFUL! ENJOY AND THANKS FOR USING, CONSIDER VISITING THE GITHUB TO CONTRIBUTE OR MAYBE EVEN DONATE!!!
ECHO THANKS FOR USING THIS TOOL, CONSIDER CHECKING OUT THE GITHUB, DISCORD, AND PERHAPS CONTRIBUTING OR EVEN DONATING!!!
timeout 10
exit
