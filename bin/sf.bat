@echo off

dir /b /a:-D | peco | busybox tr -d '[:cntrl:]' | clip

