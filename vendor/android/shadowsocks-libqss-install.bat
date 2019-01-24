@echo on

set EXE_ROOT=%CMDER_ROOT%\vendor\android
set EXE_SETUP=%EXE_ROOT%\shadowsocks-libqss.zip

"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "((New-Object System.Net.WebClient).DownloadFile('https://github.com/shadowsocks/libQtShadowsocks/releases/download/v2.0.2/shadowsocks-libqss-v2.0.2-win64.7z','%EXE_SETUP%'))"

7z e %EXE_SETUP%