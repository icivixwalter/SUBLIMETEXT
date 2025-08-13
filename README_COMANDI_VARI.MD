# @README_TUTOTORIAL_RUST.MD
   qui vengono riportati i comandi brevi su per git, dos, sublimetex e makdown.
      per aprire il progetto di sublimetex: 

            START "APRI CARTELLA PROGETTO SUBLIMETEXT" "C:\CASA\LINGUAGGI\SUBLIMETEXT\"  

            START "APRI PROGETTO SUBLIMETEXT" "C:\CASA\LINGUAGGI\SUBLIMETEXT\SUBLIMETEXT.sublime-project"  

## APERTURA COMANDI SUBLIMETEXT
   Note
      Tutti i file che verrano descritti si trovano in questa path: 
         Directory di CHE PUO ESSERE APERTA con questo comando:
          START "APRI PAKCAGER USER" "C:\Users\icivi\AppData\Roaming\Sublime Text\Packages\User\"
      
      Nella directory use sono stati creati 3 file Build_*.* dei seguenti tipi:
         1) Build_ESEGUI_DOS.sublime-build
               questo è il comando sublime text che attiva il seconda file .python
         2) Build_ESEGUI_Python.py
               Tale file *.py crea almeno 3 scelte nel menu di sublime text e passa
               la scelta come parametro al successivo file *.bat

         3) Build_APRI_CMD.BAT
               Questo è il bat che esegue il comandodi apertura del file o progetto
               scelto.
         4) Default.sublime-commands
            questo file contiene il menu da attivare con il comando: CTRL+SHIFT+P

      FLUSSO DEL PROGRAMMA
         ✅ SISTEMA DI APERTURA FILE README IN SUBLIME TEXT
            Ecco una guida ordinata e chiara per gestire e ampliare il sistema di apertura file README in Sublime Text usando menu, Python e batch.

            📁 1. STRUTTURA DEI FILE
            Tipo  Nome file   Descrizione
            .sublime-build Build_ESEGUI_DOS.sublime-build   Attiva il comando Python personalizzato apri_readme.
            .py   Build_ESEGUI_Python.py  Mostra il menu delle opzioni e avvia lo script .BAT con il numero scelto.
            .BAT  Build_APRI_CMD.BAT   Apre il file README corrispondente al numero ricevuto.
         
         
            ⚙️ 2. COME FUNZIONA IL FLUSSO
               [Sublime Build] ─▶ [Python Command: apri_readme] ─▶ [Menu: scegli un file] ─▶ [Esecuzione BAT] ─▶ [Apertura file README]
            
            🪛 3. MODIFICHE PER AGGIUNGERE NUOVE OPZIONI
                     qui poi aggiungere altre righe in python
            
                3.1 Modifica Build_ESEGUI_Python.py
                  self.options = [
                         "1. Apri README TUTORIAL RUST",
                         "2. Apri README COMANDI VARI",
                         "3. Apri TUTORIAL POCKET OPTION"
                     ]
         
         
            🔹 3.2 Modifica Build_APRI_CMD.BAT
                  qui puoi aggiugere le altre voci da chiamare con i 
                  parametri passati da python:
                        @echo off
         
                        if "%1"=="1" start "" "C:\path\to\README_TUTORIAL_RUST.md"
                        if "%1"=="2" start "" "C:\path\to\README_COMANDI_VARI.md"
                        if "%1"=="3" start "" "C:\path\to\TUTORIAL_POCKET_OPTION.md"
                        if "%1"=="4" start "" "C:\path\to\------"
   Apri cartelle
      I COMANDI DEI LINGUAGGI
         gli originali si trova qui NELLA CARTELLA DI SUBLIMETEXT e possono essere aperti con il progetto di seguito indicato:
      Apro con cartella Windows
            START "APRI PROGETTO SUBLIMETEXT" "c:\CASA\LINGUAGGI\SUBLIMETEXT\README.SUBLIMETEXT.sublime-project"
      Apro con total commander
            START "APRI SUBLIMETEX CON TOTALCOMMANDER " "C:\Program Files\totalcmd\TOTALCMD64.EXE" /L="C:\Users\icivi\AppData\Roaming\Sublime Text\Packages" /R="C:\Users\icivi\AppData\Roaming\Sublime Text\Packages\User"


      menu a 3 livelli, mantenendo i due comandi esistenti e aggiungendo i nuovi segnaposto per 
      “Utile 3.1 / 3.2” e le nuove voci.

            // TABELLA COMANDI:
            // ---------------------------------------------------------------------------------------------------------|//
            // Menu Caption                     | Command JSON                  | Classe Python                         |
            // ---------------------------------------------------------------------------------------------------------|//
            // DELIBERE LLPP                    | "apri_delibere_llpp"          | ApriDelibereLlppCommand               |
            // Utile 3.1 (DETERMINE LLPP)       | "utile_llpp_determine_31"     | UtileLlppDetermine31Command           |
            // Utile 3.2 (DETERMINE LLPP)       | "utile_llpp_determine_32"     | UtileLlppDetermine32Command           |
            // Elenco Dipendenti                | "apri_elenco_dipendenti"      | ApriElencoDipendentiCommand           |
            // APRI_RUST_TONY_CHAN              | "open_pdf_bat"                | OpenPdfBatCommand                     |
            // README_COMANDI_VARI              | "open_readme"                 | OpenReadmeCommand                     |
            // Utile 3.1 (Approfondimenti)      | "utile_tutorial_31"           | UtileTutorial31Command                |
            // Utile 3.2 (Approfondimenti)      | "utile_tutorial_32"           | UtileTutorial32Command                |
            // Parametri Sublimetext            | "apri_parametri_sublime"      | ApriParametriSublimeCommand           |
            // Visualizza File Corrente in Text | "visualizza_corrente_txt"     | VisualizzaCorrenteTxtCommand          |
            // Visualizza File Corrente in Md   | "visualizza_corrente_md"      | VisualizzaCorrenteMdCommand           |
            // ----------------------------------------------------------------------------------------------------------//
            

## GITHUB
   @Progetto@sublimetext@web
      si trova in questa posizione su github:
         https://github.com/icivixwalter/SUBLIMETEXT

   @comando@githu@unico_(esempio di @comando@unico)
      copiare il comando :
         con git status e pull      = controllo il locale e aggiorno prima da github
         con git add . e git commit = salvo nella respository locale
         con git push               = salvo su github
         con git pull               = riaggiorno da github e gitlocale 
         git status & git pull & git add . & git commit -m "agg" & git push & git pull
         
   @git@rebase
      git pull --rebase
         
         significato
            git pull --rebase = aggiorna il branch locale mettendo i tuoi commit sopra quelli remoti
            Quando fai un normale git pull, Git fa due cose:
            
            Scarica (fetch) le modifiche dal remoto.
            
            Fa un merge delle modifiche remote con quelle locali, creando un nuovo 
            commit di merge se ci sono divergenze.
            
            Con git pull --rebase, invece di fare un merge, Git:
            
            Scarica (fetch) le modifiche dal remoto.
            
            Prende i tuoi commit locali che hai fatto dopo l'ultimo commit 
            remoto comune e li "sposta" (rebase) sopra gli aggiornamenti remoti.
            
            Perché usare --rebase?
            La storia dei commit resta lineare, senza commit di merge extra.
            
            La cronologia è più pulita e facile da leggere.


   @ERRORI@GIT_(errori di gith in ordine alfabetico)
      A
         ALREADY
            Alreade up to date
               Già aggiornato
      C
         COMMIT
               nothing to commit, working tree clean
                  niente da impegnare, albero funzionante pulito
      B
         BRANCH IN AVANTI RISPETTO ALL'ORIGINE
            On branch main
            Your branch is ahead of origin/main by 1 commits (use git push to publish your local commits)
            noting to commit, working tree clean.

            Sul ramo principale
            Il tuo ramo è avanti rispetto a origin/main di 1 commit (usa git push per pubblicare i tuoi commit locali)
            notare di impegnarsi, lavora sull'albero in modo pulito.
      P
         PROFILO GIT
            per i profilo git questa è l'utenza
            email: icivixwalter@gmail.com
            passw: walter_01_

            per configurare il profilo per tutto utilizzo globale con questi comandi
               git config --global user.email "you@example.com"
               git config --global user.name "Your Name"

            se vuoi impostar il profilo solo per la  repository
            corrente utilizza:
            git config user.email "you@example.com"
            git config user.name "Your Name"

               esempio
               git config user.email "icivixwalter@gmail.com"
               git config user.name "walter"


## DOS
     SALVATAGGI SU FILE DI TESTO
        dir /A /b *.*  >> A.TXT           = salvo su a.txt le cartellse senza path
        dir /s /b >> output.txt           = salvo tutte le sotto cartelle ed i file con la path completa
        dir *.* /w >a.txt                 = salvo
     COMANDO DOS CHE PULISICE IL WORKSPACE DI SUBLIMETEXT
         ::   QUESTO E' IL COMANDO .BAT DA INSERIRE NEL PROGETTO SUBLIMETEXT
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


## SUBLIMETEXT
   Comandi contenuti in Preferences-->Key Bindings

      ctrl+shift+t                     = terminale basso
      ctrl+shift+y                     = chiudo il terminale basso
      ctrl+shift+r                     = terminale a destra nuovo tab

 ### CREARE UN MENU PERSONALIZZATO
      Note
         per creare un menu personalizzatto occorre utilizzare python per attivare i comandi e creare
         un file per i menu personalizzati denominato Main.sublime-menu. La posizione del nuova gestione
         dei comandi deve trovarsi dento la path user:

            START "MENU PERSONALIZZATO" "C:\Users\walter.rossi\AppData\Roaming\Sublime Text\Packages\User\Main.sublime-menu"

      1. Ruolo dei due file
            Main.sublime-menu → È un file JSON che dice a Sublime Text:
            “Aggiungi un menu chiamato Strumenti Personalizzati e dentro ci metti queste voci,
            ognuna associata a un comando.”

            open_pdf_bat.py → È un plugin Python che implementa quei comandi:
               quando Sublime Text vede il nome del comando nel .sublime-menu,
               va a cercare la classe Python che lo gestisce.

      2. Come il menu trova la classe giusta
            Nel file menu hai scritto, ad esempio:

               {
                   "caption": "APRI_RUST_TONY_CHAN",
                   "command": "open_pdf_bat"
                     }
         Questo "command": "open_pdf_bat" si mappa automaticamente alla classe Python:
               class OpenPdfBatCommand(sublime_plugin.WindowCommand):

      🔹  Regola fondamentale:

            Il nome del comando (open_pdf_bat) viene dalla classe togliendo
               la parte Command finale e mettendo tutto minuscolo con gli underscore:

            OpenPdfBatCommand → open_pdf_bat
            Stessa cosa per l’altro:
            OpenReadmeCommand → open_readme

            Sublime Text fa questa traduzione in automatico.


         3. Come funziona il richiamo
            Flusso quando clicchi il menu:

            Sublime vede che hai cliccato "command": "open_pdf_bat".

            Cerca una classe Python che corrisponda → trova OpenPdfBatCommand.

            Esegue il metodo run(self) di quella classe.

            Dentro run() fai quello che vuoi (aprire un file, lanciare un comando, ecc.).


            Regola di naming:
               Classe → ApriTestoEsempioCommand
               Command nel menu → "apri_testo_esempio"

         4. Tipi di comandi
               Puoi usare varie classi base a seconda dell’uso:
               WindowCommand → comandi che agiscono su finestre / file aperti.
               TextCommand → comandi che agiscono sul testo selezionato nel buffer.
               ApplicationCommand → comandi generali che non dipendono da una finestra specifica.

         6. Consiglio pratico
            Quando crei più comandi, è comodo:
            Tenere tutti i comandi in uno stesso file .py nella cartella User
            oppure
            Creare un file .py separato per ogni gruppo di comandi, così restano ordinati.

      3. SCHEMA VISIVO

                      ┌─────────────────────┐
                      │ Main.sublime-menu   │
                      │ (JSON - definisce   │
                      │   voci di menu)     │
                      └─────────┬───────────┘
                                │
                    "command": "open_pdf_bat"
                                │
                                ▼
              ┌──────────────────────────────────────┐
              │ open_pdf_bat.py (Plugin Python)       │
              │                                       │
              │ class OpenPdfBatCommand               │
              │     ↓ naming convention               │
              │     open_pdf_bat (minuscolo, underscore)
              └──────────────────────────────────────┘
                                │
                        Clic sul menu
                                │
                                ▼
                      Sublime Text esegue
                      OpenPdfBatCommand.run()
                                │
                                ▼
                  Azione (apre file, mostra messaggi, ecc.)

            Legenda regole di collegamento:

               Nome comando in JSON = Nome classe in Python (senza Command, minuscolo, con _ al posto delle maiuscole).

               OpenPdfBatCommand → "open_pdf_bat"

               OpenReadmeCommand → "open_readme"

               Il metodo run() è ciò che viene eseguito quando clicchi la voce di menu.

               I file .py e .sublime-menu devono stare entrambi in Packages/User.


      CONSIDERAZIONE FINALI PER I FILE DI MENU
         1) I file dei gestione dei menu devono rimanere nella cartella Packages/User/ (o comunque in una cartella che Sublime carica).  
         2) Le classi Python all’interno (es. OpenPdfBatCommand, ApriDelibereLlppCommand, ecc.) mantengano lo stesso nome.
         Sublime Text non guarda il nome del file .py per i comandi, ma solo i nomi delle classi e   
         il relativo comando JSON associato.
         3) Non ci siano duplicati di classi con lo stesso nome in altri file .py caricati da Sublime.

         💡 In pratica:
         Il JSON nel Main.sublime-menu contiene righe tipo "command": "open_pdf_bat".
         Sublime trova quel comando cercando una classe chiamata OpenPdfBatCommand in qualsiasi file .py caricato.
         Il nome del file .py non influisce, quindi puoi rinominarlo tranquillamente.

      📌 Nota organizzativa
            Rinominare in Main_attiva_comandi.py è una buona idea per ordine e leggibilità.
            Io ti consiglio anche di mantenere l’associazione con il menu, ad esempio:
               Main.sublime-menu
               Main_attiva_comandi.py
            così a colpo d’occhio si capisce che sono collegati.




## COMANDI MARKDOWN
   Preview
      per aprire in visualizzazine diretta scrivere:

         view ---> row2                 = visualizzo in orizzontale pannello 1 sopra e 2 sotto
         ctrl+shift+p+ OPEN PREVIEW     = command palette + OPEN PREVIEW ---> PREVIEW IN MARKDOWN IN 
                                          UNA TAB SEPARATA,   @visualizza@markdown@preview
         alt+shift+1                    = a 1 scheda
         ctrl+shift+p                   = command palette
         cr                             = ritorno a capo con 2 spazi
                                        oppure <br> come forzatura
         grassetto                      = puoi utilizzare doppio asterisco o doppio undescore
                                          es.   **grassetto** oppure __grassetto__
         dimensione carattere           = non esiste in mardown la possibilita di aumentare la   
                                        dimensione del carattere ma si puo utilizzare Html es:  
                                        grassetto + carattere 24 px
                                        **<span style="font-size: 24px;">trait</span>**

         alt+shift+8                   = visualizzo in 2 pannelli orizzontali

## TRASFORMARE .MD IN @WORD CON PANDOC
      Attiva Pandoc
         pandoc  = scarica pandoc come programma esterno +
                  1) installa pandoc: https://github.com/jgm/pandoc/releases/tag/3.7.0.2
                  2) Crea un Build System in Sublime
                     Vai su:Tools > Build System > New Build System
                     Incolla questo codice
                        {
                         "cmd": ["pandoc", "$file", "-o", "${file_base_name}.docx"],
                         "file_regex": "^(...*?):([0-9]*):?([0-9]*)",
                         "selector": "text.html.markdown"
                        }

                  3) per attivare pandoc e trasformare il file aperto corrente
                  da .md a docx attivare lo script :
                     Tools --> Builds with --> Pandoc
                     e verra creato il file .docs nella stessa cartella.
                        @creare@file@doc@docs

## TOTALCOMMANDER
   APRI PANNELLO DX E SX
      Spiegazione dei parametri:
            /L= → apre la cartella nel pannello sinistro.

            /R= → apre la cartella nel pannello destro.

            Le virgolette sono necessarie se ci sono spazi nei percorsi.

            esempio
               START "" "C:\Program Files\totalcmd\TOTALCMD64.EXE" /L="C:\Program Files\totalcmd\" /R="C:\Program Files\totalcmd\"
