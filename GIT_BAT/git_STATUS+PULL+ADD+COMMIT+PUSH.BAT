@echo off
setlocal
REM ============================================================
REM  STATUS + ADD + COMMIT + PULL + PUSH  con LOG
REM  Ogni comando, il suo output e l'esito (OK / ERRORE) vengono
REM  scritti a video e aggiunti in coda al file GIT_BAT\log.txt
REM  (il log NON viene caricato su GitHub: e' escluso nel .gitignore)
REM ============================================================
set "LOG=%~dp0log.txt"
set "TMPOUT=%TEMP%\git_bat_output.tmp"
set "ESITO=OK"

cd /d "%~dp0.."

call :scrivi ""
call :scrivi "################################################################"
call :scrivi "### INIZIO  %date%  %time:~0,8%"
call :scrivi "### PC: %COMPUTERNAME%   UTENTE: %USERNAME%"
call :scrivi "### REPOSITORY: %CD%"
call :scrivi "################################################################"

call :esegui "0) CONTROLLO REPOSITORY" git rev-parse --show-toplevel || goto :errore
call :esegui "1) STATUS" git status -s
call :esegui "2a) ADD di tutte le modifiche" git add -A || goto :errore

git diff --cached --quiet
if errorlevel 1 (
   call :esegui "2b) COMMIT" git commit -m "aggiornamento %date% %time:~0,5%" || goto :errore
) else (
   call :scrivi ""
   call :scrivi "=== 2b) COMMIT"
   call :scrivi "    Nessuna modifica locale da salvare: commit non necessario."
   call :scrivi "    ESITO: OK"
)

call :esegui "3) PULL da GitHub" git pull --no-edit || goto :errore
call :esegui "4) PUSH su GitHub" git push || goto :errore
call :esegui "5) STATO FINALE" git status -sb

call :scrivi ""
call :scrivi "################################################################"
call :scrivi "### ESITO FINALE: TUTTO OK - repository allineato con GitHub"
call :scrivi "### FINE  %date%  %time:~0,8%"
call :scrivi "################################################################"
echo.
echo Log salvato in: %LOG%
pause
exit /b 0

:errore
call :scrivi ""
call :scrivi "################################################################"
call :scrivi "### ESITO FINALE: *** ERRORE *** operazione interrotta"
call :scrivi "### Leggere sopra il comando con ESITO: ERRORE"
call :scrivi "### FINE  %date%  %time:~0,8%"
call :scrivi "################################################################"
echo.
echo Log salvato in: %LOG%  (si apre ora nel Blocco note)
start "" notepad "%LOG%"
pause
exit /b 1

REM ------------------------------------------------------------
REM  :esegui "TITOLO" comando...  -> esegue, mostra, registra, esito
REM ------------------------------------------------------------
:esegui
set "TITOLO=%~1"
shift
set "CMD="
:esegui_args
if "%~1"=="" goto :esegui_run
set "CMD=%CMD% %1"
shift
goto :esegui_args
:esegui_run
call :scrivi ""
call :scrivi "=== %TITOLO%   [%time:~0,8%]"
echo(    COMANDO:%CMD%
>> "%LOG%" echo(    COMANDO:%CMD%
%CMD% > "%TMPOUT%" 2>&1
set "RC=%errorlevel%"
type "%TMPOUT%"
type "%TMPOUT%" >> "%LOG%"
if "%RC%"=="0" call :scrivi "    ESITO: OK"
if not "%RC%"=="0" call :scrivi "    ESITO: ERRORE - codice %RC%"
del "%TMPOUT%" >nul 2>&1
exit /b %RC%

REM ------------------------------------------------------------
REM  :scrivi "testo"  -> scrive a video e nel log
REM ------------------------------------------------------------
:scrivi
if "%~1"=="" goto :scrivi_vuoto
echo(%~1
>> "%LOG%" echo(%~1
exit /b 0
:scrivi_vuoto
echo.
>> "%LOG%" echo.
exit /b 0
