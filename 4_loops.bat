@echo off

:: While .. then ..
echo While

set /a i = 1
:while_tag
if %i% leq 5 (
	echo %i%
	set /a i = %i% + 1
	goto :while_tag
)

:: For .. in .. then ..
echo for
for %%i IN (1 2 3 4 5) DO (
	echo %%i
)

pause