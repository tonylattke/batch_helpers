@echo off

:: ############################### Printing Variables ################################ ::

:: Using Strings
set Foo=World
echo Hello %Foo%

:: Using numbers
set Minutes=60
echo 1 Hour have %Minutes% minutes.

:: Using Floating point numbers
set Celcius=0
set /a Farenheit=32 + %Celcius% * 9/5
echo %Celcius% Celcius are %Farenheit% Farenheit grades

:: Using Floating point numbers with fixed amount digits of the right
:: To do
echo 1.618033988749894848

:: Representation Hexadecimal of numbers
set /a Red=0xFF0000
set /a Green=0x00FF00
set Blue=0x0000FF
echo %Red% %Blue%
:: Red is an integer value. Blue is an string value

:: Print text with multiline string
setlocal EnableDelayedExpansion
set multiLine=Lorem ipsum dolor sit amet, consectetur adipiscing elit. ^
Phasellus mattis ac tortor sed fringilla. Etiam aliquam^
turpis sit amet nisi molestie, nec accumsan massa tempus.
echo !multiLine!

:: ############################### Operating Variables ############################### ::

:: Numbers

rem Plus
@set foo=23
@set bar=19
@set /a baz=%foo% + %bar%
@echo %foo% + %bar% is: %baz% 

rem Minus
@set foo=69
@set bar=27
@set /a baz=%foo% - %bar%
@echo %foo% - %bar% is: %baz% 

rem Multiply
@set foo=7
@set bar=6
@set /a baz=%foo% * %bar%
@echo %foo% * %bar% is: %baz% 

rem Divide
@set foo=420
@set bar=10
@set /a baz=%foo% / %bar%
@echo %foo% / %bar% is: %baz% 

rem Module
@set foo=429
@set bar=43
@set /a baz=%foo% %% %bar%
@echo %foo% mod %bar% is: %baz% 

set foo=2
set bar=10
set baz=1
for /L %%i IN (1,1,%bar%) DO set /A baz*=foo
echo %foo% to the power of %bar% is: %baz% 

:: Strings
set foo=Batch
set bar=Works
echo %foo% %bar%

:: Replace spaces with _
setlocal EnableDelayedExpansion
set foo=_
set bar=Lorem ipsum dolor sit amet
set baz=%bar: =!foo!%
echo %baz%

:: Length of string
set foo=Lorem ipsum dolor sit amet
set bar=%foo%
set baz=0
:loop_counter
if defined bar (
	set bar=%bar:~1%
	set /A baz += 1
	goto loop_counter
)
echo %baz%

:: Substrings
set foo=Lorem ipsum dolor sit amet
:: First char on string "Lorem ipsum dolor sit amet"
echo %foo:~0,1%
:: 6 till 12 chars on string "Lorem ipsum dolor sit amet"
echo %foo:~6,12%
:: First 5 chars on string "Lorem ipsum dolor sit amet"
echo %foo:~0,5%
:: 6 till the end chars on string "Lorem ipsum dolor sit amet"
echo %foo:~6,20%

PAUSE