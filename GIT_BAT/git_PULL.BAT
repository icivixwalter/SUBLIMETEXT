@echo off
REM ============================================================
REM  Si posiziona da solo nella cartella principale del repo
REM  (la cartella sopra GIT_BAT), da qualunque punto venga lanciato
REM ============================================================
cd /d "%~dp0.."
git rev-parse --is-inside-work-tree >nul 2>&1 || (echo *** ERRORE: %CD% non e' un repository git & pause & exit /b 1)
echo REPOSITORY: %CD%
echo.
echo === PULL: scarico le modifiche da GitHub ===
git pull --no-edit
if errorlevel 1 (echo. & echo *** ERRORE PULL: leggere i messaggi sopra *** & pause & exit /b 1)
echo.
echo === PULL COMPLETATO ===
pause
