@echo off
set curpath=%~dp0
if defined KBE_ROOT (echo %KBE_ROOT%) else set KBE_ROOT=%curpath:~0,-15%
if defined KBE_RES_PATH (echo %KBE_RES_PATH%) else set KBE_RES_PATH=%KBE_ROOT%kbe/res/;%KBE_ROOT%assets/;%KBE_ROOT%assets/scripts/;%KBE_ROOT%assets/res/
if defined KBE_BIN_PATH (echo %KBE_BIN_PATH%) else set KBE_BIN_PATH=%KBE_ROOT%kbe/bin/server/

set uid=%random%%%32760+1
call "!(win)kill.bat"

start machine.exe
#ping 127.0.0.1 -n 1
start interfaces.exe
#ping 127.0.0.1 -n 1
#start logger.exe
ping 127.0.0.1 -n 1
start dbmgr.exe
ping 127.0.0.1 -n 2
start baseappmgr.exe
ping 127.0.0.1 -n 1
start cellappmgr.exe
ping 127.0.0.1 -n 1
start baseapp.exe
ping 127.0.0.1 -n 1
start cellapp.exe
ping 127.0.0.1 -n 1
start loginapp.exe