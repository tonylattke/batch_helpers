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
set /a value = 7
call :factorial %value%
echo Factorial of %value% is %aux_output%

:: fibonacci
set /a value = 7
call :fibonacci %value%
echo Fibonacci of %value% is %errorlevel%

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
:: @return : Factorial value of parameter
:factorial
	if "%~1" LEQ "1" (
		set aux_output=%~1
		goto :eof
	)
	set /a aux=%~1 - 1
	call :factorial %aux%
	set /a aux_output=%~1 * %aux_output%
	goto :eof

:: Fibonacci
:: @parameter 1 : Number
:: @return : Fibonacci value of parameter
:fibonacci
	setlocal  enabledelayedexpansion
	if  %1 geq  2 goto  :fibonacci_aux 
	exit  /b %1
 
:fibonacci_aux
	set  /a r1 = %1 - 1
	set  /a r2 = %1 - 2
	call  :fibonacci !r1!
	set  r1=%errorlevel%
	call  :fibonacci !r2!
	set  r2=%errorlevel%
	set  /a r0 = r1 + r2
	exit  /b !r0!