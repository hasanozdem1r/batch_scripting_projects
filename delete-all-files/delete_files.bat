@echo off
setlocal enabledelayedexpansion 
set paths[0]=C:\Windows\Temp
set paths[1]=C:\Users\%USERNAME%\AppData\Local\Temp
set paths[2]=C:\Windows\Prefetch
cd /d %paths[0]%
for /F "delims=" %%i in ('dir /b') do (rmdir "%%i" /s/q || del "%%i" /s/q)
cd /d %paths[1]%
for /F "delims=" %%i in ('dir /b') do (rmdir "%%i" /s/q || del "%%i" /s/q)
cd /d %paths[2]%
for /F "delims=" %%i in ('dir /b') do (rmdir "%%i" /s/q || del "%%i" /s/q)
echo SUCCESSFULLY DELETED
pause
