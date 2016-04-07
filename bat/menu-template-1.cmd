@echo off

:reset


set titleName=WHATEVER

set clear=cls

set debug=0


:menuMain
title %titleName%

set option=99
%clear%
echo Choose an option and press ENTER:
echo.
echo.
echo 1) Test 1
echo.
echo 2) Test 2
echo.

set /p option=

:: Check for higher than highest menu item
if %option% gtr 2 goto menuMain

if %option%==1 goto test1
if %option%==2 goto test2
goto menuMain

:: A FUCKING FUNCTION WALL MAN!!!---------------------------------

:test1
echo I AM TEST 1
if %debug%==1 pause
goto menuMain


:test2
echo I AM TEST 2
if %debug%==1 pause
goto menuMain



:end
pause

