---
layout: project_single
title: Brewing Timer 2.0
slug: brew-timer
published: true
---
- dávkový soubor -> timer pro přípravu kávy.
- 2 automatická nastavení času - Dripper 180 s a French press 200 s
- možnost nastavení odpočtu manuálně

> obsah souboru (kliknutím zobrazit, pro stažení -> uložit odkaz jako) [zde](https://raw.githubusercontent.com/zdenolab/zdenolab.github.io/master/static/projects/BrewingTimer_2.0.cmd)


Výběr 3 možností bez nutnosti potvrzení enterem
```
echo     Press 1 to set up timer for Dripper. (180 sec)
echo     Press 2 to set up timer for French Press (200 sec)
echo	 Press 3 to set up timer manually!
```
Limit 2 vteřiny (T2) na volbu

```
CHOICE /N /T 2 /D 3 /C:123 %1
IF ERRORLEVEL ==3 GOTO THREE
IF ERRORLEVEL ==2 GOTO TWO
IF ERRORLEVEL ==1 GOTO ONE
GOTO END
:THREE
```

Po uplynutí limitu je nutné nastavení odpočtu manuálně, případně možnost zvolit D nebo F (hodnoty odpočtu přednastaveny D ->T30 + 150 ; F -> T200) **-> zde již nutno potvrdit enter**

```
echo       * or use D for DRIPPER or F for FRENCH PRESS *
echo.

set/p "time=>

if "%time%" =="f" goto TWO
if "%time%" =="d" goto ONE

TIMEOUT /T %time% /NOBREAK
```

U možnosti D pro Dripper nastaven čas T30 na 'Blooming phase' a následně T150. T3 je mezičas na přečtění instrukcí a rezerva na přechod.
```
TIMEOUT /T 3 /NOBREAK>nul
echo.
echo.
TIMEOUT /T 30 /NOBREAK
TIMEOUT /T 2 /NOBREAK>nul
echo.
echo.
TIMEOUT /T 150 /NOBREAK
```
Po uplynutí času vytvoří MsgBox na potvrzení OK a následně ukončí dávku.
```
:timesup
MSG * /v "Your Coffee is ready!"
EXIT
GOTO exit
```
![msg.PNG](https://raw.githubusercontent.com/zdenolab/zdenolab.github.io/master/static/projects/msg.PNG)
