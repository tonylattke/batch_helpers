@echo off

:: Load file
call 8_0_export_data.bat

:: Test Variables access
echo %name%

:: Test Functions
call 8_0_export_functions.bat hello Tony Lattke
call 8_0_export_functions.bat even 43
echo %aux_output%

pause