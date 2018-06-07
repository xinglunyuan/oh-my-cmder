@echo on

set CYGWIN_ROOT=%CMDER_ROOT%\vendor\cygwin
set CYGWIN_SETUP=%CYGWIN_ROOT%\setup-x86.exe
set CYGWIN_MIRROR=http://mirrors.tuna.tsinghua.edu.cn/cygwin

"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "((New-Object System.Net.WebClient).DownloadFile('https://www.cygwin.com/setup-x86.exe','%CYGWIN_SETUP%'))"

::install base pkg and vim ssh git
%CYGWIN_SETUP% -q -g -n -W -s "%CYGWIN_MIRROR%" -R "%CYGWIN_ROOT%" -l "%CYGWIN_ROOT%\dist" ^
-P vim -P ssh -P git

rem assoc
::assoc .sh=Shell.File
::ftype Shell.File="%CYGWIN_ROOT%\bin\bash.exe" "%%1" %%*
::reg add "HKEY_CLASSES_ROOT\Shell.File\DefaultIcon" /ve /t REG_SZ /d "%CYGWIN_ROOT%\Cygwin-Terminal.ico,0" /f >nul
::
::assoc .py=Python.File
::ftype Python.File="%CYGWIN_ROOT%\bin\python2.7.exe" "%%1" %%*
::reg add "HKEY_CLASSES_ROOT\Python.File\DefaultIcon" /ve /t REG_SZ /d "%CYGWIN_ROOT%\Cygwin-Terminal.ico,0" /f >nul
::
::assoc .pl=Perl.File
::ftype Perl.File="%CYGWIN_ROOT%\bin\perl.exe" "%%1" %%*
::reg add "HKEY_CLASSES_ROOT\Perl.File\DefaultIcon" /ve /t REG_SZ /d "%CYGWIN_ROOT%\Cygwin-Terminal.ico,0" /f >nul
