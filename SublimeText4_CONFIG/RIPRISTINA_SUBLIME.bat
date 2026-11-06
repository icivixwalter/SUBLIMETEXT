@echo off
REM ============================================================
REM  Ripristina la configurazione di Sublime Text 4 da questa cartella
REM  CHIUDERE SUBLIME TEXT PRIMA DI ESEGUIRE
REM ============================================================
set "DEST=%APPDATA%\Sublime Text"
set "SRC=%~dp0"

tasklist /FI "IMAGENAME eq sublime_text.exe" | find /I "sublime_text.exe" >nul && (
  echo Sublime Text e' aperto: chiuderlo e rilanciare questo file.
  pause & exit /b 1
)

if exist "%DEST%" (
  echo Backup della configurazione attuale in "%DEST%_BACKUP_%DATE:~6,4%%DATE:~3,2%%DATE:~0,2%"
  robocopy "%DEST%" "%DEST%_BACKUP_%DATE:~6,4%%DATE:~3,2%%DATE:~0,2%" /E /NFL /NDL /NJH /NJS >nul
)

robocopy "%SRC%Packages"           "%DEST%\Packages"           /E /NFL /NDL
robocopy "%SRC%Installed Packages" "%DEST%\Installed Packages" /E /NFL /NDL
robocopy "%SRC%Lib"                "%DEST%\Lib"                /E /NFL /NDL

echo.
echo Ripristino completato. Avviare Sublime Text.
pause
