@echo off

:: ################################### Datetime ###################################### ::

:: Now
echo Date: %date%
echo Time: %time%

:: Now - 2 Hours
:: Get data
for /F "tokens=1-3 delims=:." %%a in ("%time%") do (
	set hour=%%a
	set minute=%%b
	set seconds=%%c
)
:: Substract 2 hours
set /a newTime=hour*60 - 60*2 + minute
:: Adjust hour
set /a hour  = newTime/60
if %hour% gtr 23 (
	set hour=0
)
if %hour% lss 10 (
	set hour=0%hour%
)
:: Print
echo %hour%:%minute%:%seconds%

:: ##################################### Random ###################################### ::

:: Random number is between 0 and 32767

:: Random int on range
:: Example 1: Value between 0 and 9
set /a foo = %RANDOM% %% 10

pause