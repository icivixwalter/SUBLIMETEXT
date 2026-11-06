@echo off
REM ============================================================
REM  Copia la configurazione ATTUALE di Sublime Text 4 in questa cartella
REM  (da eseguire prima del commit/push su GitHub)
REM ============================================================
set "SRC=%APPDATA%\Sublime Text"
set "DEST=%~dp0"
robocopy "%SRC%\Packages"           "%DEST%Packages"           /MIR /NFL /NDL
robocopy "%SRC%\Installed Packages" "%DEST%Installed Packages" /MIR /NFL /NDL
robocopy "%SRC%\Lib"                "%DEST%Lib"                /MIR /NFL /NDL
echo Aggiornamento completato.
pause
