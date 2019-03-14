@echo off

if '%*'=='' call :help & exit /b
if '%1'=='off' (
    alias /d cd
) else if '%1'=='on' (
    alias cd=cdhook.bat $*
)
exit /b

:help
echo This is the cdhook alias batch
echo.
echo ucd on  : use cdhook.bat as cd
echo ucd off : use windows orig cd
