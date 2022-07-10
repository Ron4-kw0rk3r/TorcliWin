@ECHO OFF
:: incredible src in program controler tor 
:: complet  in test program 
:: # pre escrito batch coding fucked ani alone lost ....

:: ############### code arguments ############

set vom=--tor
set hostname=--nsup


if "%OS%" == "Windows_NT" (
	goto :banner
	
)else (
	echo end program...! 
	exit  /break 
)



:banner 

if exist "banner\bann_tor.txt" (
	set dirbase = %CD%
	popd
	color 0D
	timeout /t 1 > nul && type banner\bann_tor.txt
	echo 
	color 03
	goto :function 
	exit /break
)
if not exist "banner\bann_tor.txt" (
	color 03 
	timeout /t 1 > nul && echo " \##########   /@@@@@@@\     \444444444\         1111 
  	timeout /t 1 > nul && echo "     \###    /@@@     @@@\    \4444    44\       1111
	timeout /t 1 > nul && echo "	  \###   @@@      @@@\     \4444 444/         111
	timeout /t 1 > nul && echo "	   \###   @@@      @@@\     \4444   \444     1111 
	timeout /t 1 > nul && echo "	    \###   \@@@@@@@@\        \4444    \444   1111
	timeout /t 1 > nul && echo "                                                  \@/"
	echo
	goto :function
	exit /break

)

:jobs
color 0a 
echo default
timeout /T 1 > nul
type config/torrc  > nul 
cd Tor/ && echo proccessing...
echo Nodechange config 
echo " visit site --------------->" https://check.torproject.org/

echo [--[us] [fr] [eg]--]
echo [--[sg] [ca] [ru]--]
echo [--[tk] [es] [de] [gt]--] 
tor.exe --version
tor.exe -f ..\config\torrc_default
exit /break

:function

if exist "Tor\" (
	
	echo new ip configuring tor...
	echo " init --> " && dir /a | FIND  /I "Tor\tor.exe"
	timeout /T 1 > nul && echo "change ip ---> " && ipconfig  | FIND /I "IPV"
	echo "in directory --->"  [ %CD% ]
	if  exist "config/" (
		echo read  file config ...
		echo changed config file 
		if exist "config\torrc" (
			echo read file config 
			echo status: read file config
			echo Nodechange config 
			
			echo [--[us] [fr] [eg]--]
			echo [--[sg] [ca] [ru]--]
			echo [--[tk] [es] [de] [gt]--] 
			echo " visit site --------------->" https://check.torproject.org/
			cd Tor\ && echo "init torproxy --->" 
			tor.exe --version 
			tor.exe -f ..\config\torrc 
			exit /break
		)
		if not exist "config\torrc" (
			call :jobs
			
		)
		::
		rem timeout /t 1 > nul 		
	)

	if not exist "config/" (
	
		echo processing file default 
		if exist "%CD%\Tor" (
		
			set updatedir = %CD%
			popd 
			cd Tor\
			
			tor.exe  --version
			tor.exe
			
			
		
		)
	)
	
	
)

IF NOT EXIST "tor\" (
	color 0e
	echo end program...! 
	exit /break


)

REM timeout /t 1 > nul 
REM pause 
REM exit 


rem :function


:: :MAIN
:: borun code in syntax  

::if  "%1" EQU "%vom%"  (

rem	if EXIST "C:/tor/" (
rem		cd /d  C:/tor/
rem		echo init && tor.exe  > nul
rem		timeout /7 > nul &&  echo service runnig  
	REM pause
		REM exit /break 
	REM ) else (
		REM echo no exist directory program ... 
		REM exit 
		
	REM )
::)

