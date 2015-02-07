@echo off

:: ################################ Input reading #################################### ::

set "name="
set /p "name=Introduce the file name: "

:: ################################# Create file ##################################### ::

set filename=%name%.txt

:: Create and write the text into the file
echo test text > %filename%

:: Write the text at the end of file
echo second text >> %filename%
echo third text >> %filename%

:: ################################## Read file ###################################### ::

:: Read line by line
for /F "tokens=*" %%A in (%filename%) do (
	echo %%A
)

pause