@echo off

:: ##################################### Tuples ###################################### ::

:: Tuple
set mytuple=(Bruce Wayne)
echo %mytuple%

:: Triplet
set mytriplet=(Red Green Blue)
echo %mytriplet%

:: N-Tuple
set ntuple=(Batman Superman Flash J'onn)
echo %ntuple%

:: ##################################### Array ####################################### ::

:: Empty array
set empty_array=() 

:: Append elements to the array
set empty_array[0]=1
set empty_array[2]=2
set empty_array[3]=3

:: Access
echo %empty_array[0]%

:: Delete element
set empty_array[0]=0

:: Length
:: To do

:: Concat
:: To do

pause