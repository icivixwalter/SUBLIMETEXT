# @README_TUTOTORIAL_RUST.MD
   qui vengono riportati i comandi brevi su per git, dos, sublimetex e makdown.
      per aprire il progetto di sublimetex: 

            START "APRI CARTELLA PROGETTO SUBLIMETEXT" "C:\CASA\LINGUAGGI\SUBLIMETEXT\"  

            START "APRI PROGETTO SUBLIMETEXT" "C:\CASA\LINGUAGGI\SUBLIMETEXT\SUBLIMETEXT.sublime-project"  

## GUIDA MARK DOWN
 ### Note
         si trova qui: https://learnxinyminutes.com/it/markdown/
   
               esempio i titoli:
         
                        # Questo è un <h1>
                        ## Questo è un <h2>
                        ### Questo è un <h3>
                        #### Questo è un <h4>
                        ##### Questo è un <h5>
                        ###### Questo è un <h6>1
  

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

#### GIT ELENCO ERRORI
            Note
               elenco errori per iniziale di lettera. @ERRORI@GIT_(errori di gith in ordine alfabetico)
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
      L
         LF 
            @LF will be replaced by CRLF the next time Git touches it = 
            LF sarà sostituito da CRLF la prossima volta che Git lo toccherà.
                  ESEMPIO DI ERRORE:
                     warning: in the working copy of 'TUTORIAL_JAVA/JAVA_SCRIPT/TUTORIAL_JAVA_SCRIPT/TUTORIAL_JAVA_SCRIPT.iml', LF will be replaced by CRLF the next time Git touches it     
                     warning: in the working copy of 'TUTORIAL_JAVA/JAVA_SCRIPT/TUTORIAL_JAVA_SCRIPT/Tutorial_JAVASCRITP.MD', LF will be replaced by CRLF the next time Git touches it  


            Cosa significa
                  LF = Line Feed (\n), tipico dei sistemi Unix/Linux/macOS
                  CRLF = Carriage Return + Line Feed (\r\n), tipico di Windows
                  Git sta dicendo:
                  Quando toccherò questo file (ad esempio in un checkout o in un commit), convertirò le interruzioni di riga da LF a CRLF.
                  Questo succede perché in Windows Git è spesso configurato con core.autocrlf attivo, così converte automaticamente le fine-riga per compatibilità.

           Come puoi risolvere o ignorare
               
               Se vuoi mantenere la conversione automatica (di solito su Windows è ok)
               Puoi ignorare il warning, non rompe nulla.
               
               Se vuoi evitare il warning e mantenere sempre LF
               NO CONVERSIONE = Puoi dire a Git di non fare la conversione: 
                  git config core.autocrlf false
               FORZARE LA CONVERSIONE = Oppure, solo per quel file, puoi forzare lo stile in .gitattributes:
                  TUTORIAL_JAVA/JAVA_SCRIPT/TUTORIAL_JAVA_SCRIPT/TUTORIAL_JAVA_SCRIPT.iml text eol=lf

          SOLUZIONE PER ATTIVARE I CRL ED ELIMINARE IL WARNING SU LF
            1 Attivazione CRLF
               Imposta Git per convertire sempre in CRLF quando scrive nella working directory:

                  git config --global core.autocrlf true

               (Il --global vale per tutti i repository del tuo utente; puoi rimuoverlo se vuoi impostare solo per la repo attuale)

            2 Forzare CRLF per i file del progetto

               Per sicurezza, puoi creare/modificare il file .gitattributes nella root del progetto:
                     * text eol=crlf
               Questo dice a Git:
                  Per tutti i file di testo (* text), usa CRLF come fine riga in locale.
            3 Applicare la conversione
               
               Dopo aver impostato .gitattributes, normalizza i file già presenti:
                     git add --renormalize 
                     git commit -m "Update .gitattributes to enforce CRLF endings"

               se vuoi ricontrollare a quale file sono stati applicate le normalizzazione controlla
               con questo comando:
                     git ls-files --eol



            4 Controllo finale
               
               Per verificare che l’impostazione sia attiva:
                  git config core.autocrlf

                  TRUE = vuol dire che Git convertirà automaticamente LF → CRLF quando scarica i file.

            5 IMPOSTO GLI ATTRIBUTI DEL PROGETTO
                     Ecco un file .gitattributes pensato per mantenere CRLF nei file di testo, 
                     evitando di toccare i binari o altri formati che potrebbero rompersi.

                        # Imposta CRLF per tutti i file di testo
                           * text eol=crlf
                           
                           # Evita di modificare file binari
                           *.jpg  binary
                           *.jpeg binary
                           *.png  binary
                           *.gif  binary
                           *.ico  binary
                           *.pdf  binary
                           *.zip  binary
                           *.gz   binary
                           *.7z   binary
                           *.exe  binary
                           *.dll  binary
                           *.so   binary
                           *.class binary
                           
                           # File di configurazione IDE (spesso testo, ma tieni CRLF)
                           *.iml text eol=crlf
                           *.sublime-project text eol=crlf
                           *.sublime-workspace text eol=crlf
                           
                           # Script (anche se eseguiti su Windows, mantieni CRLF)
                           *.bat text eol=crlf
                           *.cmd text eol=crlf
                           *.ps1 text eol=crlf
                           
                           # File markdown e documentazione
                           *.md text eol=crlf
                           *.txt text eol=crlf
                           *.rst text eol=crlf
                           
                           # File sorgenti (Java, JavaScript, ecc.)
                           *.java text eol=crlf
                           *.js   text eol=crlf
                           *.ts   text eol=crlf
                           *.html text eol=crlf
                           *.css  text eol=crlf
                           *.xml  text eol=crlf
                           *.json text eol=crlf

            Come applicarlo
               1 Crea/modifica il file .gitattributes nella root del repository e incolla il contenuto sopra.
                     In questo caso come esempio avendo la cartella JAVA in 
                        C:\CASA\LINGUAGGI\JAVA\
                         ├─ src\
                         ├─ README.md
                         ├─ pom.xml        (se usi Maven)
                         ├─ .git\          (cartella nascosta di Git)
                         └─ .gitattributes (qui lo crei)
                     avendo la cartella il .git alloara viene IDENTFICATA COME @root del @repository.
                     Qui occorre creare il file .gitattributes.


               2 Salva.
               3 Normalizza i file per applicare le regole (dopo aver integrato il file : .gitattributes) 
                  git add --renormalize 
                        Aggiorni gli indici di Git applicando le nuove regole sugli EOL
                  git commit -m "Apply CRLF line ending rules"
                        Se ci sono molte modifiche di fine riga, vedrai tanti file “modificati” ma senza cambiamenti di contenuto vero (solo EOL).
               

               4 Nella colonna w (working directory) vedrai crlf per i file di testo.
                  git ls-files --eol
                     Nella colonna w (working directory) vedrai crlf per i file di testo.


                  ULTERIORI DEFINIZIONI:
                     1 Cosa fa * text=auto
                           
                           "Rileva automaticamente se un file è di testo o binario e normalizza i file di testo in LF all'interno del repository."
                           La conversione verso CRLF o LF nella tua working directory dipende da core.autocrlf nella tua configurazione di Git:
                           core.autocrlf true → converte LF (repo) → CRLF (locale, Windows)
                           core.autocrlf false → lascia LF anche in locale
                           📌 Quindi text=auto non forza CRLF, ma segue la configurazione globale/locale di Git.

                     2 Cosa fa * text eol=crlf
                           "Tratta questi file come testo e forza la conversione in CRLF nella working directory, 
                           indipendentemente da core.autocrlf."
                           Mantiene comunque LF nel repository (come raccomanda Git per coerenza e portabilità), 
                           ma garantisce CRLF quando lavori in locale.
                           📌 Qui non importa se core.autocrlf è true, false o input: Git seguirà sempre l’istruzione del .gitattributes.

                     3 Perché sostituire text=auto con text eol=crlf
                        text=auto → comportamento dipendente da configurazione di Git (non sempre prevedibile)
                        text eol=crlf → comportamento deterministico, sempre CRLF in locale
                        Se li metti entrambi (text=auto e poi regole CRLF), la prima riga diventa ridondante o può essere sovrascritta dalle regole successive.
                        Sostituendo direttamente * text=auto con * text eol=crlf, dai un’unica regola chiara per tutti i file di testo.

                     💡 In sintesi
                           * text eol=crlf = coerenza e zero sorprese.
                           * text=auto = dipende dalla config di Git → può cambiare da PC a PC.

          MODELLO FILE .GITATTRIBUTES
            nota
               il template per la normalizzazione da salvare in .gitattributes è IL SEGUENTE:

                  # NOME FILE : .gitattributes
                     #
                     # Auto detect text files and perform CRLF normalization  - 
                     * text eol=crlf
                     
                     
                     
                     # REGOLE AGGIUNTE per avere ELIMINAR IL WARNING sui file di testo LF
                     # dopo aver integrato con queste aggiunte occorre normalizzare i file applicando tali regole
                     # con i seguenti comandi git add --renormalize + git commit -m "Apply CRLF line ending rules"
                     # per ricontrollare la normalizzazione occorre applicare il comando: git ls-files --eol
                     # SINTESI : applicare la normalizzazione:
                     #        1) modifica il file              = .gitattributes
                     #        2) attiva la normalizzaione         = add --renormalize
                     #        3) memorizzo il file             = git commit -m "Update .gitattributes to enforce CRLF endings"
                     #           4) controllo la normalizzazione  = git ls-files --eol
                     
                     
                     # Evita di toccare i file binari
                     *.jpg  binary
                     *.jpeg binary
                     *.png  binary
                     *.gif  binary
                     *.ico  binary
                     *.pdf  binary
                     *.zip  binary
                     *.gz   binary
                     *.7z   binary
                     *.exe  binary
                     *.dll  binary
                     *.so   binary
                     *.class binary
                     
                     # File di configurazione IDE
                     *.iml text eol=crlf
                     *.sublime-project text eol=crlf
                     *.sublime-workspace text eol=crlf
                     
                     # Script Windows
                     *.bat text eol=crlf
                     *.cmd text eol=crlf
                     *.ps1 text eol=crlf
                     
                     # Documentazione
                     *.md text eol=crlf
                     *.txt text eol=crlf
                     *.rst text eol=crlf
                     
                     # Sorgenti
                     *.java text eol=crlf
                     *.js   text eol=crlf
                     *.ts   text eol=crlf
                     *.html text eol=crlf
                     *.css  text eol=crlf
                     *.xml  text eol=crlf
                     *.json text eol=crlf





      U
         DIRECTORY NON SICURA
            fatal: unsafe repository ('C:/...' is owned by someone else)
               risolvere con il comando @safe


### COMANDI GIT
 #### S
      SAFE DIRECTORY

         UTILITA DEL COMANDO:
                     @safe@directory@sicura_(comando git per includere in un elenco le directory sicure.)

            "Considera questa cartella come sicura, anche se normalmente Git non lo farebbe".
            Spiegazione passo-passo:
               git config → comanda Git di cambiare o leggere una configurazione.

            -- global → applica la modifica a tutti i repository dell’utente sul computer (non solo a quello corrente).
            -- add → aggiunge un nuovo valore alla lista (non sovrascrive valori esistenti).

            safe.directory → è una configurazione introdotta da Git per motivi di sicurezza (da Git 2.35 in poi).
            Serve a indicare quali cartelle di repository sono considerate sicure.
            C:/CASA/LINGUAGGI/JAVA → è il percorso della cartella che vuoi contrassegnare come sicura.
            📌 Perché serve?
               Git, per proteggere l’utente, non permette di lavorare in un repository se pensa che la directory possa
               appartenere a un altro utente o essere non affidabile (ad esempio su file system condivisi).
               Se ricevi un errore tipo:
                  fatal: unsafe repository ('C:/...' is owned by someone else)
               allora con questo comando stai dicendo a Git: "Tranquillo, quella cartella va bene, fidati."

            ✅ Quando usarla
                  L’opzione safe.directory conviene usarla solo in situazioni in cui sei sicuro che il repository sia davvero sotto il tuo controllo.

                  Repository creato o clonato da te
                  Sei certo che nessuno possa modificare i file all’insaputa tua.

                  Repository su disco esterno o in rete
                  Git a volte li segnala come “non sicuri” perché il file system è condiviso o con permessi diversi.

                  Repository spostato tra macchine
                  Ad esempio, se copi una cartella da un altro PC e Git non riconosce il proprietario.

                  Ambienti di sviluppo aziendali con utenti condivisi
                  Dove i permessi sono impostati dal reparto IT, ma tu sai che il codice è affidabile.

            ❌ Quando NON usarla

                  Repository ricevuto da fonte sconosciuta
                  Potrebbe contenere hook Git o script malevoli che si eseguono automaticamente.

                  Percorsi condivisi con utenti non fidati
                  Ad esempio, cartelle di rete dove altri possono inserire file o modificare Git hooks.

                  Repository scaricato e mai verificato
                  Prima di “segnarlo sicuro” dovresti controllare il contenuto, soprattutto nella cartella .git/hooks/.

         ESEMPIO AGGIUNGI SAFE PER DEFINIRE UNA CARTELLA SICURA
            Note
               indico a git che la cartella è sicura

               git config --global --add safe.directory C:/CASA/LINGUAGGI/JAVA

         ESEMPIO DI CONTROLLO DOPO IL SAFE
            Note
               controllo se e quali cartelle sono state definite sicure.

                  git config --global --get-all safe.directory

         ESEMPIO DI RIMOZIONE DELLA SINGOLA CARTELLA DEFINITA SICURA
            Note
               esempio di come eliminare dall'elenco le cartelle definite sicure:

                  git config --global --unset safe.directory C:/CASA/LINGUAGGI/JAVA

         ESEMPIO DI RIMOZIONE DI TUTTE LE CARTELLE DEFINITE SICURE
            Note
               con "unset" elimino tutte le cartelle definite sicure:

                  git config --global --unset-all safe.directory




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

            esempio  @TOTAL@COMMANDER
               START "" "C:\Program Files\totalcmd\TOTALCMD64.EXE" /L="C:\Program Files\totalcmd\" /R="C:\Program Files\totalcmd\"
