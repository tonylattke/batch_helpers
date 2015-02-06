@echo off

:: Testing Functions

:: even
set /a value = 42
call :even %value%
if %aux_output% EQU 0 (
	echo %value% - Even
) else (
	echo %value% - Odd 
)

:: factorial
call :factorial 5
echo result: %aux_output%

pause & goto :eof

:: ########################## Example 1 - Create a function ########################### ::

:: Even or not
:: @parameter 1: Number to decide
:: @return : 0 if the number is even, otherwise 1
:even
	set /a aux = %~1
	set /a aux_output = %aux% %% 2
	goto :eof

:: ############################## Example 2 - Recursion ############################### ::

:: Factorial of number
:: @parameter 1 : Number
:: @return : Factorial value of number
:factorial
	if "%~1" LEQ "1" (
		set aux_output=%~1
		goto :eof
	)
	set /a aux=%~1 - 1
	call:factorial %aux%
	set /a aux_output=%~1 * %aux_output%
	goto :eof