---
layout: project_single
title: Brewing Timer 2.0
slug: brew-timer
published: true
---
### Brewing Timer 2.0 (batch / cmd)

- vytvořeno jako jednoduchý dávkový soubor -> timer pro přípravu kávy.

```
CHOICE /N /T 1 /D 1 /C:1 %1
IF ERRORLEVEL ==1 GOTO TED
:TED
echo.
(...)
echo.

CHOICE /N /T 2 /D 3 /C:123 %1
IF ERRORLEVEL ==3 GOTO THREE
IF ERRORLEVEL ==2 GOTO TWO
IF ERRORLEVEL ==1 GOTO ONE
```
