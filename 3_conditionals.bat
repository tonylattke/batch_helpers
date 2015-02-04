@echo off

set /a aux = 42

:: Commpare Values

:: Equal 			value_1 == value_2		 or 	value_1 EQU value_2
:: Not Equal 		value_1 NEQ value_2

:: Less than 		value_1 <  value_2		 or 	value_1 LSS value_2
:: More than 		value_1 >  value_2		 or 	value_1 GTR value_2
:: Less equal than  value_1 <= value_2		 or 	value_1 LEQ value_2
:: More equal than  value_1 >= value_2 		 or 	value_1 GEQ value_2

:: Operators AND OR are simulated with if statements

:: If .. then .. else ..
if %aux% EQU 23 (
	echo Number is 23
) else ( 
	echo Number is not 23
)

:: If .. then .. else if .. then .. else ..
set /a foo=1
set /a bar=2
set /a baz=3

if %foo% EQU %baz% (
	echo It is 1
) else if %bar% EQU %baz% ( 
	echo It is 2
) else ( 
	echo It is not 1 or 2
)

pause