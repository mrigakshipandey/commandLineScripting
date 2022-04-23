@echo off
:start
cls
echo MENU
echo -create (create password)
echo -check (check password)
echo.
set /p PROGRAM= What would you like to do?: 
goto %PROGRAM%



:create
cls
set /p PASSWORD= What would you like your password to be?: 
echo %PASSWORD% > test.txt
pause
goto start



:check
cls
set /p PASSWORD1= What is your password?: 
for /f "Delims=" %%a in (test.txt) do (
	set TEXT=%%a
)
if %PASSWORD1%==%TEXT% (echo That's correct!) else (echo That's incorrect!)
pause
goto start