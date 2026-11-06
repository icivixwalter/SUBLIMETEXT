@echo off
REM ============================================================
REM  Si posiziona da solo nella cartella principale del repo
REM  (la cartella sopra GIT_BAT), da qualunque punto venga lanciato
REM ============================================================
cd /d "%~dp0.."
git rev-parse --is-inside-work-tree >nul 2>&1 || (echo *** ERRORE: %CD% non e' un repository git & pause & exit /b 1)
echo REPOSITORY: %CD%
echo.
echo === 1) STATUS ===
git status -s
echo.
echo === 2) ADD + COMMIT delle modifiche locali ===
git add -A
git diff --cached --quiet
if errorlevel 1 (
   git commit -m "aggiornamento %date% %time:~0,5%"
   if errorlevel 1 goto :errore
) else (
   echo Nessuna modifica locale da salvare.
)
echo.
echo === 3) PULL: unisco le modifiche arrivate da GitHub ===
git pull --no-edit
if errorlevel 1 goto :errore
echo.
echo === 4) PUSH: invio tutto su GitHub ===
git push
if errorlevel 1 goto :errore
echo.
echo === COMPLETATO: repository allineato con GitHub ===
git status -sb
pause
exit /b 0

:errore
echo.
echo *** ERRORE: operazione interrotta, leggere i messaggi sopra ***
pause
exit /b 1
