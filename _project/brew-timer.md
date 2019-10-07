---
layout: project_single
title: Brewing Timer 2.0
slug: brew-timer
published: true
---
- dávkový soubor -> timer pro přípravu kávy.
- 2 automatická nastavení času - Dripper 180 s a French press 200 s
- možnost nastavení odpočtu manuálně

> obsah souboru [zde](https://raw.githubusercontent.com/zdenolab/zdenolab.github.io/master/static/projects/BrewingTimer_2.0.cmd)


Výběr možností, limit 2 vteřiny (T2) na volbu


```
CHOICE /N /T 2 /D 3 /C:123 %1
IF ERRORLEVEL ==3 GOTO THREE
IF ERRORLEVEL ==2 GOTO TWO
IF ERRORLEVEL ==1 GOTO ONE
GOTO END
:THREE
```

Po uplynutí limitu je nutné nastavení odpočtu manuálně, případně možnost zvolit D nebo F (hodnoty odpočtu přednastaveny D ->T30 + 150 ; F -> T200)

```
echo       * or use D for DRIPPER or F for FRENCH PRESS *
echo.

set/p "time=>

if "%time%" =="f" goto TWO
if "%time%" =="d" goto ONE

TIMEOUT /T %time% /NOBREAK
```

U možnosti D pro Dripper nastaven čas T30 na 'Blooming phase' a následně T150. T3 na přečtění instrukcí a rezerva.
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
