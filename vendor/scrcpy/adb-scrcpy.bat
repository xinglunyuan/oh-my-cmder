@echo on

set SCRCPY_ROOT=%CMDER_ROOT%\vendor\scrcpy
set OLDPWD="%cd%"

cd %SCRCPY_ROOT%
%SCRCPY_ROOT%/scrcpy.exe
cd %OLDPWD%
