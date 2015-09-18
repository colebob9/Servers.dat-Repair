@ECHO OFF
ECHO Server.dat Repair
ECHO Version 2.0
ECHO Written by colebob9
ECHO Released under the MIT license.
ECHO GitHub: https://github.com/colebob9/Servers.dat-Repair
ECHO.
ECHO Looking for the broken servers.dat file. (servers.dat_tmp)
CD %HOMEPATH%\AppData\Roaming\.minecraft
IF EXIST servers.dat GOTO NOTBROKEN
IF EXIST servers.dat_tmp GOTO FOUND
IF NOT EXIST servers.dat_tmp GOTO CANTFIND
:FOUND
ECHO Found the broken file! Fixing....
ren servers.dat_tmp servers.dat
ECHO Fixed! Closing in 10 seconds.
TIMEOUT /t 10
EXIT
:CANTFIND
ECHO.
ECHO I can't find the broken file! Closing in 10 seconds.
TIMEOUT /t 10
EXIT
:NOTBROKEN
ECHO.
ECHO Looks like your servers.dat is already fixed!
ECHO Closing in 10 seconds.
TIMEOUT /t 10
EXIT
