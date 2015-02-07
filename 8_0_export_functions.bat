@echo off

call :%*
	exit /b

:: Say hello and print the first 2 args
:hello
	echo called hello
	echo arg1=%1
	echo arg2=%2
	goto :eof

:: Even or not
:: @parameter 1: Number to decide
:: @return : 0 if the number is even, otherwise 1
:even
	set /a value = %~1
	set /a aux_output = %value% %% 2
	if %aux_output% EQU 0 (
		echo %value% - Even
	) else (
		echo %value% - Odd 
	)
	goto :eof