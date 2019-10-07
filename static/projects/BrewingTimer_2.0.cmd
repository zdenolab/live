@ECHO off
mode 60,26
title Timer

:start
title Brewing Timer 2.0

cls
echo.
echo			           ) (
echo	  		          (   ) )
echo	   		           ) ( (
echo	 		        ._______)_
echo	 		      .-'---------l  
echo			     ( CI/\/\/\/\/l
echo	 		      '-./\/\/\/\/l
echo		   		'________'
echo		    		 '-------'
echo 	    +--------------------------------+
echo 	    - Enter Time to Brew your Coffee -
echo 	    +--------------------------------+
echo.
echo.
echo  ** 180 s = 3 mins -- 210 s = 3.5 mins -- 240 s = 4 mins **
::echo 210 s = 3.5 mins
::echo 240 s = 4 mins
echo.
echo.
echo       Press 1 to set up timer for Dripper. (180 sec)
echo.	
echo     Press 2 to set up timer for French Press (200 sec)
echo.
echo		     Press 3 to set up timer manually!

CHOICE /N /T 1 /D 1 /C:1 %1
IF ERRORLEVEL ==1 GOTO TED
:TED
echo.
echo  		.--------------------.
echo  		I  Set your time..   I
echo  		'--------------------'
echo      				:      (\_/)
echo      				'----- (O.o)
echo.            			       ( . )
echo.

CHOICE /N /T 2 /D 3 /C:123 %1
IF ERRORLEVEL ==3 GOTO THREE
IF ERRORLEVEL ==2 GOTO TWO
IF ERRORLEVEL ==1 GOTO ONE
GOTO END
:THREE

echo.
echo 	     *** Enter the time maually ***
echo.
echo       * or use D for DRIPPER or F for FRENCH PRESS *
echo.

set/p "time=>

if "%time%" =="f" goto TWO
if "%time%" =="d" goto ONE

TIMEOUT /T %time% /NOBREAK

:timesup

MSG * /v "Your Coffee is ready!"
REM:(EXIT /B 0)

EXIT
GOTO exit

:TWO
echo DO YOUR FRENCH PRESS BREWING !
TIMEOUT /T 200 /NOBREAK

:timesup

MSG * /v "Your Coffee is ready!"

EXIT
GOTO exit

:ONE
echo.
echo.
echo 	    	   -- BLOOMING PHASE --
echo.
echo  Pour in water, covering all the coffee, making it bloom...
echo.
echo 	... Pre-wet and let sit for 30 - 45 seconds
echo.

TIMEOUT /T 3 /NOBREAK>nul
echo.
echo.
TIMEOUT /T 30 /NOBREAK

echo.
echo.
echo 	 -- POUR THE WATER IN CONCERNTRIC CIRCLES --
echo.
echo       * Begin POURING from the CENTER OUT CLOCKWISE *
echo.
echo 		 * in a CIRCULAR MOTION *
echo.
echo 		* until VOLUME is REACHED *
echo.
echo     Concentrate the pour towards the center of the V60!
TIMEOUT /T 2 /NOBREAK>nul
echo.
echo.
TIMEOUT /T 150 /NOBREAK

:timesup

MSG * /v "Your Coffee is ready!"

EXIT
GOTO exit