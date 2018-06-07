# oh-my-cmder

`oh-my-cmder` is my cmder env with Cygwin and Chocolatey.

It is very easy to use, follow me.

1. [Download](https://github.com/kiddlu/oh-my-cmder/archive/master.zip) and unzip it on your windows.


## Install busybox tools
- if you don't want cygwin env, you can easy install busybox tools

- open cmder.exe, then `cd @` to your `%CMDER_ROOT%` dir.

- `vendor\busybox\install.bat`

- then your can use busybox tools in cmder

## Install Cygwin
- open cmder.exe, then `cd @` to your `%CMDER_ROOT%` dir
- `vendor\cygwin\install.bat`
- then you install cygwin in `%CMDER_ROOT%\vendor\cygwin`, tools will include because `%CMDER_ROOT%\config\user-profile.cmd`
- modify any package and config on your own.
- [Cygwin Web](http://www.cygwin.com/)

## Install Chocolatey
- open cmder.exe, then `cd @` to your `%CMDER_ROOT%` dir.
- `vendor\chocolatey\install.bat`
- then your can use `choco install everything` to install windows [packages](https://chocolatey.org/packages) you like.
- if install request Administrator privileges, use `sudo choco install ...`, windows sudo is taken from [https://github.com/mattn/sudo](https://github.com/mattn/sudo)

## About cd
- I use a cd hook batch to ack as `cd` cmd, it has some bugs when `cd PATH with space `
- `ucd.bat off` to turn it off

## Customize
- `cd @` to your `%CMDER_ROOT%` dir.
- modify `config/user-aliases.cmd  config/user-profile.cmd...` on your own.
