@echo off
REM ============================================================
REM  Si posiziona da solo nella cartella principale del repo
REM  (la cartella sopra GIT_BAT), da qualunque punto venga lanciato
REM ============================================================
cd /d "%~dp0.."
git rev-parse --is-inside-work-tree >nul 2>&1 || (echo *** ERRORE: %CD% non e' un repository git & pause & exit /b 1)
echo REPOSITORY: %CD%
echo.
echo === ADD + COMMIT (tutto il repository) ===
git add -A
git diff --cached --quiet
if not errorlevel 1 (echo Nessuna modifica da salvare. & pause & exit /b 0)
git commit -m "aggiornamento %date% %time:~0,5%"
if errorlevel 1 (echo. & echo *** ERRORE COMMIT *** & pause & exit /b 1)
echo.
echo === COMMIT COMPLETATO (ricordati il PUSH) ===
pause
