@echo off
:start
set /p MATH=Calculation? 
set /a RESULT=%MATH%
echo %RESULT%
pause
cls
goto start