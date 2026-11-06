@echo off
setlocal
REM ====================================================================
REM  NOME FILE : git_STATUS+PULL+ADD+COMMIT+PUSH.BAT
REM  SCOPO     : allineare il repository locale con GitHub in un colpo solo
REM              (salva le modifiche locali, scarica quelle dell'altro PC,
REM               invia tutto su GitHub) scrivendo un LOG passo passo.
REM  REPOSITORY: la cartella sopra GIT_BAT  (C:\CASA\LINGUAGGI\SUBLIMETEXT)
REM              il bat si posiziona da solo: basta il doppio clic.
REM  LOG       : GIT_BAT\log.txt  (aggiunto in coda ad ogni esecuzione,
REM              resta solo sul PC: e' escluso nel .gitignore)
REM ====================================================================
REM
REM  FLUSSO DEI PASSI
REM  --------------------------------------------------------------------
REM  PASSO 0 - CONTROLLO REPOSITORY      comando: git rev-parse --show-toplevel
REM            Verifica che la cartella sia un repository git.
REM            Se NON lo e': ERRORE e il bat si ferma.
REM
REM  PASSO 1 - STATUS                     comando: git status -s
REM            Mostra i file modificati, nuovi o cancellati.
REM            Solo informativo: non modifica nulla e non ferma il bat.
REM
REM  PASSO 2a - ADD                       comando: git add -A
REM            Prepara per il commit TUTTE le modifiche del repository
REM            (file modificati, file nuovi e file cancellati).
REM
REM  PASSO 2b - COMMIT                    comando: git commit -m "aggiornamento DATA ORA"
REM            Salva le modifiche nella storia LOCALE.
REM            Se non c'e' nulla da salvare scrive "commit non necessario"
REM            e prosegue senza errori.
REM
REM  PASSO 3 - PULL                       comando: git pull --no-edit
REM            Scarica da GitHub le modifiche fatte sull'altro PC
REM            (casa/ufficio) e le unisce alle nostre.
REM            Viene DOPO il commit: cosi' le modifiche locali sono gia'
REM            salvate e l'unione non viene rifiutata.
REM            Se ci sono CONFLITTI: ERRORE e il bat si ferma (niente push).
REM
REM  PASSO 4 - PUSH                       comando: git push
REM            Invia su GitHub i commit locali.
REM            Se GitHub lo rifiuta: ERRORE e il bat si ferma.
REM
REM  PASSO 5 - STATO FINALE               comando: git status -sb
REM            "## main...origin/main" senza altro = tutto allineato.
REM
REM  ESITO
REM  --------------------------------------------------------------------
REM  - per ogni passo il log riporta: ora, COMANDO, risposta di git
REM    ed  "ESITO: OK"  oppure  "ESITO: ERRORE - codice N"
REM  - alla fine:  "ESITO FINALE: TUTTO OK"  oppure  "*** ERRORE ***"
REM  - in caso di errore il bat salta i passi successivi e apre il log
REM    nel Blocco note
REM
REM  ROUTINE INTERNE (in fondo al file)
REM  --------------------------------------------------------------------
REM  :esegui "TITOLO" comando  -- esegue il comando, lo mostra a video,
REM                               lo scrive nel log con il suo esito
REM  :scrivi "testo"           -- scrive una riga a video e nel log
REM ====================================================================
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
