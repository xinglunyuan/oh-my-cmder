@echo on

set SCRCPY_ROOT=%CMDER_ROOT%\vendor\scrcpy
set SCRCPY_SETUP=%SYSINTERNALS_ROOT%\scrcpy.zip

"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "((New-Object System.Net.WebClient).DownloadFile('https://github.com/Genymobile/scrcpy/releases/download/v1.6/scrcpy-win32-v1.6.zip','%SCRCPY_SETUP%'))"

%~dp0\..\busybox\busybox.exe unzip %SCRCPY%\scrcpy.zip -d %SCRCPY%
%~dp0\..\busybox\busybox.exe rm %SCRCPY%\scrcpy.zip