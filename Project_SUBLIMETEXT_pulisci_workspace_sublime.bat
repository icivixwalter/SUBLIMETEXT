:: -------------------------------------------------------------------------
:: BAT DI CANCELLAZIONE DEL WORKSPACE DENOMINATO
:: Project_RUST_pulisci_workspace_sublime.bat
:: Il bat si deve trovare nella cartella corrente del progetto di sublimetex
:: e la bat cancellera il file .sublime-workspace che sara ricreato pulito
:: alla nuova apertura del progetto.
:: -------------------------------------------------------------------------
@echo off
    del "*.sublime-workspace"
    if %errorlevel% equ 0 (
        echo File cancellato con successo.
    ) else (
        echo Errore: il file non esiste o non è stato possibile cancellarlo.
    )
    pause
