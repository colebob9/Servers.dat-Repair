@ECHO OFF
ECHO Server.dat Repair
ECHO Written by colebob9
ECHO Released under the MIT license.
ECHO.
ECHO Looking for the broken servers.dat file. (servers.dat_tmp)
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
