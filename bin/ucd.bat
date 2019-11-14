@echo off

if '%*'=='' call :help & exit /b
if '%1'=='off' (
    alias /d cd
) else if '%1'=='on' (
    alias cd=j.bat $*
)
exit /b

:help
echo This is the cdhook alias batch
echo.
echo ucd on  : use j.bat as cd
echo ucd off : use windows orig cd
