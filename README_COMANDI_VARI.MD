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
        dir /A /b *.*  > A.TXT           = salvo su a.txt le cartelle senza path
        dir /A /B /S *.* > A.TXT         = salvo su a.txt le cartelle + le sottocartelle senza path
            /A → mostra tutti i file, compresi quelli nascosti e di sistema.
            /B → usa il formato “bare”, cioè solo il percorso e il nome del file senza intestazioni o sommari.
            /S → include tutte le sottocartelle.
            *.* → tutti i file.





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

   IMPOSTAZIONI DI BASE DI TOTAL COMMANDER SALVATE NEL FILE  wincmd.ini 
      Note
         Il file wincmd.ini contiene tutte le impostazioni del total commader e che possono essere modificate anche manualmente
         con il menu:
            Impostazioni ----> Modifica diretta delle impostazioni.
         tutte questa impostazioni di base sono salvate nel file sopra citato, per cui possono essere trasportata da un 
         total commander all'altro, anche copiando da file di testo che si apre con la modifca diretta, senza dover 
         spostare il file .ini da un pc all'altro.
         La procedura è la seguente.
      Procedura passo passo (come l’hai descritta, con qualche dritta in più)
         1. Sul PC dell’ufficio:
            Apri Total Commander
            Vai su Impostazioni → Modifica diretta file impostazioni
            Si apre il file wincmd.ini in Blocco Note
            Seleziona tutto (Ctrl + A) → Copia (Ctrl + C)
            Incolla il contenuto in un file .txt o .md per trasportarlo a casa (USB, email, cloud...)

      IMPOSTAZIONI FILE WINCMD.INI - UFFICIO -
            @wincmd@impostazioni@comandi_(le impostazione dei @comandi di @totalcommander dell'@ufficio)

         
         [Configuration]
               InstallDir=C:\Program Files\totalcmd
               languageini=wcmd_ita.lng
               Mainmenu=wcmd_ita.mnu
               UseNewDefFont=1
               SetEncoding=äö.do.not.remove
               firstmnu=2106
               FirstTime=0
               FirstTimeIconLib=0
               test=49
               DirMenuLast=2
               TabDir=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\
               DirTabOptions=819
               DirTabLimit=32
               DirTabRevert=1
               DirTabFilters=1
               FirstTimeUnpack=0
               FirstTimeZIP=0
               Viewer=""C:\Program Files\TextPad 8\TextPad.exe" "%1""
               Editor=""C:\Program Files\TextPad 8\TextPad.exe" "%1""
               Viewertype=1
               AltSearch=2
               QuickSearchMatchBeginning=1
               QuickSearchExactMatch=0
               UseEverything=0
               LastSearchOptions=32
               AssociationMultiVerbs=0
               SeparateTree=0
               PanelsVertical=0
               AutoSizeDialogs=1
               onlyonce=0
               TrayIcon=0
               UseRightButton=1
               Savepath=1
               Savepanels=1
               MarkDirectories=1
               AlwaysToRoot=0
               SingleClickStart=0
               RenameSelOnlyName=0
               SaveCommands=1
               EverythingForSize=0
               GetDirSize=0
               CountSpace=1
               CountMarked=1
               1hourdif=0
               AutoUpdateCheck=0
               CopyComments=6
               CommentPreferredFormat=4
               IconClickSelection=1
               ExplorerForCopy=0
               Win95Delete=0
               UseTrash=1
               Aligned extension=1
               LogOptions=7198
               LogRotateLimit=0
               LogKeepCount=30
               HistoryIcons=1
               SaveHistory=1
               SaveFrequentlyUsed=1
               ShowFrequentlyUsedMaxInMiddle=0
               ShowLastVisitedInMiddle=1
               HistoryLenStored=200
               HistoryLen=26
               FrequentlyUsedLenStored=200
               FrequentlyUsedLen=30
               HistoryScrollTo=0
               HistoryMaxWidth=120
               [ButtonbarCache]
               IconDll_default.bar=
               IconDll_vertical.bar=
               [FileSystemPlugins64]
               $checksum$=3014672
               [Buttonbar]
               Buttonbar=D:\CASA\PROGRAMMI\TOTALCMD_64\BARRA_PERSONALE\DEFAULT.BAR
               Buttonheight=29
               Buttonheight96=29
               FlatIcons=1
               SmallIcons=0
               SmallIconSize=16
               SmallIconSize96=16
               DefaultDpi=96
               XPstyle=1
               [1920x1080 (8x16)]
               MenuChangeX=621
               MenuChangeY=389
               MenuChangeDX=640
               MenuChangeDY=400
               MenuChangeMax=0
               FontSize=14
               FontName=Courier New
               FontSizeWindow=14
               FontNameWindow=Times New Roman
               FontWeight=700
               FontWeightWindow=400
               FontNameDialog=Courier New
               FontSizeDialog=11
               SearchX=454
               SearchY=388
               SearchDX=1080
               SearchDY=303
               SearchMax=1
               maximized=1
               x=410
               y=120
               dx=1100
               dy=800
               Divider=500
               DividerQuickView=500
               DividerComments=500
               Tabstops=268,271,327,214,704,102
               FontCharset=1
               FontCharsetWindow=1
               [AllResolutions]
               FontSize=14
               FontName=Courier New
               FontSizeWindow=14
               FontNameWindow=Times New Roman
               FontWeight=700
               FontWeightWindow=400
               FontNameDialog=Courier New
               FontSizeDialog=11
               FontCharset=1
               FontCharsetWindow=1
               [MkDirHistory]
               0=25_GESTIONE_LLPP
               1=TMP
               2=25_GESTIONE_LLPP***
               3=ARCHIVI_DA_SISTEMARE_IN_CARTELLA
               4=DOS_COMANDI
               5=TOTAL_COMMANDER
               6=LINGUAGGI
               7=SALVATAGGI_BAT
               8=GESTIONE_LLPP
               9=GeTributi
               10=TRIBUTI
               11=CASA
               [ContentPlugins64]
               $checksum$=3014672
               [SearchName]
               0=*SALVATAGGI*
               [SearchIn]
               0=h:\Gestioni\ARCHIVI_LLPP\Y
               [Selection]
               0=*.txt
               [Associations]
               Filter1=*.txt
               Filter1_open=""C:\Program Files\TextPad 8\TextPad.exe" "%1""
               [left]
               path=c:\
               ViewMode=0
               activepanelcolor=-1
               activepanelcolor2=-1
               activepanelcolordark=-1
               activepanelcolordark2=-1
               ShowAllDetails=1
               SpecialView=0
               show=1
               sortorder=0
               negative Sortorder=0
               [right]
               path=Y:\Valter\Scanner\Backup\
               ViewMode=0
               activepanelcolor=-1
               activepanelcolor2=-1
               activepanelcolordark=-1
               activepanelcolordark2=-1
               ShowAllDetails=1
               SpecialView=0
               show=1
               sortorder=3
               negative Sortorder=0
               [Command line history]
               0=Valter\
               1=v
               [RightHistory]
               0=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\96_ARCHIVI_LLPP_MDB\25_GESTIONE_LLPP\
               1=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\96_ARCHIVI_LLPP_MDB\ #01,25_GESTIONE_LLPP
               2=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\96_ARCHIVI_LLPP_MDB\ #1,25_GESTIONE_LLPP
               3=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\   #027,96_ARCHIVI_LLPP_MDB
               4=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\96_ARCHIVI_LLPP_MDB\ #1,ARCHIVI_DA_SISTEMARE_IN_CARTELLA
               5=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\96_ARCHIVI_LLPP_MDB\ARCHIVI_DA_SISTEMARE_IN_CARTELLA\
               6=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\96_ARCHIVI_LLPP_MDB\DOS_COMANDI\ #2,ZIP_RAGGRUPPATO_SALVA_TUTTO_ARCHIVI_Y.bat
               7=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\96_ARCHIVI_LLPP_MDB\ #1,DOS_COMANDI
               8=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\96_ARCHIVI_LLPP_MDB\DOS_COMANDI\ #1,APRI_PNRR_(Disco+Path+File)_(Parametri_SET).bat
               9=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\96_ARCHIVI_LLPP_MDB\TOTAL_COMMANDER\
               10=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\96_ARCHIVI_LLPP_MDB\   #01,TOTAL_COMMANDER
               11=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\  #14,96_ARCHIVI_LLPP_MDB
               12=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\96_ARCHIVI_LLPP_MDB\   #1,TOTAL_COMMANDER
               13=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\  #2,96_ARCHIVI_LLPP_MDB
               14=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\   #0
               15=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\  #17,ZZ99_SALVATAGGI_BACKUP
               16=Y:\Valter\Scanner\Backup\  #3,User
               17=d:\CASA\PROGRAMMI\GITHUB_DESKTOP\
               18=d:\CASA\PROGRAMMI\   #08,GITHUB_DESKTOP
               19=d:\CASA\ #012,PROGRAMMI
               20=d:\CASA\PROGRAMMI\   #07,GITHUB
               21=d:\CASA\PROGRAMMI\GITHUB\  #07,LINGUAGGI
               22=d:\CASA\PROGRAMMI\GITHUB\LINGUAGGI\ #5,GITHUB
               23=d:\CASA\PROGRAMMI\GITHUB\LINGUAGGI\GITHUB\   #1,SoluzioneGithubImpossibileFareCommit.pdf
               24=d:\CASA\PROGRAMMI\GITHUB\LINGUAGGI\ #05,GITHUB
               25=d:\CASA\PROGRAMMI\GITHUB\GESTIONE_UFFICIO\   #01,25_GESTIONE_LLPP
               26=d:\CASA\PROGRAMMI\GITHUB\GESTIONE_UFFICIO\25_GESTIONE_LLPP\ #0
               27=d:\CASA\PROGRAMMI\GITHUB\  #04,GESTIONE_UFFICIO
               28=d:\CASA\PROGRAMMI\GITHUB\GESTIONE_UFFICIO\25_GESTIONE_LLPP\
               29=d:\CASA\PROGRAMMI\GIT_DESKTOP\   #01,CASA
               30=d:\CASA\PROGRAMMI\GIT_DESKTOP\CASA\ #07,PROGRAMMI
               31=d:\CASA\PROGRAMMI\GIT_DESKTOP\CASA\PROGRAMMI\   #04,Sqlite
               32=d:\CASA\PROGRAMMI\GIT_DESKTOP\CASA\GESTIONI\ #0
               33=d:\CASA\PROGRAMMI\GIT_DESKTOP\CASA\ #05,GESTIONI
               34=d:\CASA\PROGRAMMI\GIT_DESKTOP\CASA\GE_CASA\  #0
               35=d:\CASA\PROGRAMMI\GIT_DESKTOP\CASA\ #04,GE_CASA
               36=d:\CASA\PROGRAMMI\GIT_DESKTOP\CASA\DA_SISTEMARE\   #0
               37=d:\CASA\PROGRAMMI\GIT_DESKTOP\CASA\ #03,DA_SISTEMARE
               38=d:\CASA\PROGRAMMI\   #06,GIT_DESKTOP
               39=d:\   #01,CASA
               40=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\96_ARCHIVI_LLPP_MDB\
               41=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\  #15,96_ARCHIVI_LLPP_MDB
               42=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\   #12,OPERE_PUBBLICHE
               43=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\  #0
               44=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\   #26,OPERE_PUBBLICHE
               45=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\ #030,Valter
               46=Y:\   #027,LAVORI_PUBBLICI_FINO_AL_30_09_2019
               47=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\ #10,SUSANNA
               48=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\   #4,DA_SIMONA_TOSTI
               49=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\  #23,TCMD_TAB_CASA_SX_UFFICIO_DX_CASA.tab
               50=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\
               51=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\96_ARCHIVI_LLPP_MDB\   #011,2024_04_23_ZIP_SALVATAGGI_GHISLER.rar
               52=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\96_ARCHIVI_LLPP_MDB\2024_04_23_ZIP_SALVATAGGI_GHISLER.rar/ #5,vertical.bar
               53=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\96_ARCHIVI_LLPP_MDB\PNRR.rar/   #0
               54=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\96_ARCHIVI_LLPP_MDB\   #02,PNRR.rar
               55=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\96_ARCHIVI_LLPP_MDB\   #16,ZIP_PRES3000_GESTIONE_ARCHIVI_MDB_SALVATAGGI.rar
               56=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\96_ARCHIVI_LLPP_MDB\PRES3000_GESTIONE.ZIP/  #01,PRES3000_GESTIONE
               57=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\96_ARCHIVI_LLPP_MDB\PRES3000_GESTIONE.ZIP/PRES3000_GESTIONE\  #01,PRES3000_GESTIONE\ARCHIVI_PRES3000
               58=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\96_ARCHIVI_LLPP_MDB\PRES3000_GESTIONE.ZIP/PRES3000_GESTIONE\ARCHIVI_PRES3000\
               59=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\96_ARCHIVI_LLPP_MDB\   #22,PRES3000_GESTIONE.ZIP
               60=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\  #7,96_ARCHIVI_LLPP_MDB
               61=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\AA_SALVATAGGI\   #5,02_CASALENO.rar
               62=Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\  #20,AA_SALVATAGGI
               63=Y:\   #019,LAVORI_PUBBLICI_FINO_AL_30_09_2019
               64=Y:\ELENCO PROCEDIMENTI LAVORI PUBBLICI 2024\ #0
               65=Y:\   #13,ELENCO PROCEDIMENTI LAVORI PUBBLICI 2024
               66=Y:\Valter\  #0
               67=Y:\
               68=c:\Casa\
               69=c:\
               70=h:\Gestioni\ARCHIVI_LLPP\Y\96_ARCHIVI_LLPP_MDB\ZIP_SALVATAGGI_10_LEGGI.GE614/
               71=h:\Gestioni\ARCHIVI_LLPP\Y\96_ARCHIVI_LLPP_MDB\ #21,ZIP_SALVATAGGI_10_LEGGI.GE614
               72=h:\Gestioni\ARCHIVI_LLPP\Y\   #27,96_ARCHIVI_LLPP_MDB
               73=h:\Gestioni\ARCHIVI_LLPP\Y\96_ARCHIVI_LLPP_MDB\ #1,ZIP_SALVATAGGI_10_LEGGI.rar
               74=h:\Gestioni\ARCHIVI_LLPP\Y\96_ARCHIVI_LLPP_MDB\PRES3000_GESTIONE.ZIP/   #01,PRES3000_GESTIONE
               75=h:\Gestioni\ARCHIVI_LLPP\Y\96_ARCHIVI_LLPP_MDB\PRES3000_GESTIONE.ZIP/PRES3000_GESTIONE\   #01,PRES3000_GESTIONE\ARCHIVI_PRES3000
               76=h:\Gestioni\ARCHIVI_LLPP\Y\96_ARCHIVI_LLPP_MDB\PRES3000_GESTIONE.ZIP/PRES3000_GESTIONE\ARCHIVI_PRES3000\ #0
               77=h:\Gestioni\ARCHIVI_LLPP\Y\96_ARCHIVI_LLPP_MDB\ #6,PRES3000_GESTIONE.ZIP
               78=h:\Gestioni\ARCHIVI_LLPP\Y\96_ARCHIVI_LLPP_MDB\ZIP_SALVATAGGI_10_LEGGI.rar/   #01,01_TRIBUTI_LOCALI
               79=h:\Gestioni\ARCHIVI_LLPP\Y\96_ARCHIVI_LLPP_MDB\ZIP_SALVATAGGI_10_LEGGI.rar/01_TRIBUTI_LOCALI\   #01,01_TRIBUTI_LOCALI\02_IMU
               80=h:\Gestioni\ARCHIVI_LLPP\Y\96_ARCHIVI_LLPP_MDB\ZIP_SALVATAGGI_10_LEGGI.rar/01_TRIBUTI_LOCALI\02_IMU\  #0
               81=h:\Gestioni\ARCHIVI_LLPP\Y\96_ARCHIVI_LLPP_MDB\ZIP_SALVATAGGI_10_LEGGI.rar/02_EELL_ENTI_LOCALI\ #0
               82=h:\Gestioni\ARCHIVI_LLPP\Y\96_ARCHIVI_LLPP_MDB\ZIP_SALVATAGGI_10_LEGGI.rar/   #02,02_EELL_ENTI_LOCALI
               83=h:\Gestioni\ARCHIVI_LLPP\Y\96_ARCHIVI_LLPP_MDB\ZIP_SALVATAGGI_10_LEGGI.rar/04_FINANZIARIE\   #0
               84=h:\Gestioni\ARCHIVI_LLPP\Y\96_ARCHIVI_LLPP_MDB\ZIP_SALVATAGGI_10_LEGGI.rar/   #03,04_FINANZIARIE
               85=h:\Gestioni\ARCHIVI_LLPP\Y\96_ARCHIVI_LLPP_MDB\ZIP_SALVATAGGI_10_LEGGI.rar/05_LEGGI_DI_STABILITA\  #0
               86=h:\Gestioni\ARCHIVI_LLPP\Y\96_ARCHIVI_LLPP_MDB\ZIP_SALVATAGGI_10_LEGGI.rar/   #04,05_LEGGI_DI_STABILITA
               87=h:\Gestioni\ARCHIVI_LLPP\Y\96_ARCHIVI_LLPP_MDB\ZIP_SALVATAGGI_10_LEGGI.rar/06_LAVORI_PUBBLICI\  #0
               88=h:\Gestioni\ARCHIVI_LLPP\Y\96_ARCHIVI_LLPP_MDB\ZIP_SALVATAGGI_10_LEGGI.rar/   #5,06_LAVORI_PUBBLICI
               89=h:\Gestioni\ARCHIVI_LLPP\Y\96_ARCHIVI_LLPP_MDB\ZIP_LLPP_ATTI_Tb01_GESTIONE_SALVATAGGI.RAR/   #01,MDB
               90=h:\Gestioni\ARCHIVI_LLPP\Y\96_ARCHIVI_LLPP_MDB\ZIP_LLPP_ATTI_Tb01_GESTIONE_SALVATAGGI.RAR/MDB\  #0
               91=h:\Gestioni\ARCHIVI_LLPP\Y\96_ARCHIVI_LLPP_MDB\ #9,ZIP_LLPP_ATTI_Tb01_GESTIONE_SALVATAGGI.RAR
               92=h:\Gestioni\ARCHIVI_LLPP\Y\96_ARCHIVI_LLPP_MDB\ZIP_PRES3000_GESTIONE_ARCHIVI_MDB_SALVATAGGI.GE614/ #01,ARCHIVI_PRES3000
               93=h:\Gestioni\ARCHIVI_LLPP\Y\96_ARCHIVI_LLPP_MDB\ZIP_PRES3000_GESTIONE_ARCHIVI_MDB_SALVATAGGI.GE614/ARCHIVI_PRES3000\  #0
               94=h:\Gestioni\ARCHIVI_LLPP\Y\96_ARCHIVI_LLPP_MDB\ZIP_PRES3000_GESTIONE_ARCHIVI_MDB_SALVATAGGI.GE614/SALVATAGGI_PRES3000\  #0
               95=h:\Gestioni\ARCHIVI_LLPP\Y\96_ARCHIVI_LLPP_MDB\ZIP_PRES3000_GESTIONE_ARCHIVI_MDB_SALVATAGGI.GE614/ #02,SALVATAGGI_PRES3000
               96=h:\Gestioni\ARCHIVI_LLPP\Y\96_ARCHIVI_LLPP_MDB\ #7,ZIP_PRES3000_GESTIONE_ARCHIVI_MDB_SALVATAGGI.GE614
               97=h:\Gestioni\ARCHIVI_LLPP\Y\96_ARCHIVI_LLPP_MDB\ZIP_WALTER_ATTI_ARCHIVI_MDB_SALVATAGGI.GE614/ #13,2025_07_25_MALATTIA_WALTER_{GG_1}.BAT
               98=h:\Gestioni\ARCHIVI_LLPP\Y\96_ARCHIVI_LLPP_MDB\ #026,ZIP_WALTER_ATTI_ARCHIVI_MDB_SALVATAGGI.GE614
               99=h:\Gestioni\ARCHIVI_LLPP\Y\
               100=h:\Gestioni\ARCHIVI_LLPP\ #01,Y
               101=h:\Gestioni\  #01,ARCHIVI_LLPP
               102=h:\Gestioni\GESTIONE_LLPP\   #01,25_GESTIONE_LLPP
               103=h:\Gestioni\GESTIONE_LLPP\25_GESTIONE_LLPP\ #0
               104=h:\Gestioni\  #2,GESTIONE_LLPP
               105=h:\Gestioni\  #02,GESTIONE_LLPP
               106=h:\Gestioni\ARCHIVI_LLPP\Y\  #03,03_ASCENSORE_INCLINATO
               107=y:\Valter\
               108=y:\Valter\DIRIGENTE\
               109=y:\Valter\ #1,DIRIGENTE
               110=y:\Valter\NUOVA_PROCEDURA_PIANO_FERIE\   #0
               111=y:\Valter\ #02,NUOVA_PROCEDURA_PIANO_FERIE
               112=y:\Valter\PRES3000_NUMERI_TELEFONICI_DIPENDENTI-calcolo\
               113=y:\Valter\ #03,PRES3000_NUMERI_TELEFONICI_DIPENDENTI-calcolo
               114=y:\Valter\SALVATAGGI_DESKTOP\   #3,TMP
               115=y:\Valter\ #04,SALVATAGGI_DESKTOP
               116=y:\  #16,Valter
               117=y:\AAA.LL.PP\ #03,LL.PP._SERVIZIO.7z
               118=y:\AAA.LL.PP\LL.PP._SERVIZIO.7z/   #01,LL.PP._SERVIZIO
               119=y:\AAA.LL.PP\LL.PP._SERVIZIO.7z/LL.PP._SERVIZIO\  #0
               120=y:\AAA.LL.PP\ #3,LL.PP._SERVIZIO.7z
               121=y:\AAA.LL.PP\NORMATIVE LL.PP\
               122=y:\AAA.LL.PP\ #02,NORMATIVE LL.PP
               123=y:\AAA.LL.PP\LL.PP. SERVIZIO\   #0
               124=y:\AAA.LL.PP\ #01,LL.PP. SERVIZIO
               125=y:\  #4,AAA.LL.PP
               126=y:\Valter\ #4,SALVATAGGI_DESKTOP
               127=y:\Valter\SALVATAGGI_DESKTOP\   #01,BKP_Desktop
               128=y:\Valter\SALVATAGGI_DESKTOP\BKP_Desktop\   #2,ZIP
               129=y:\Valter\SALVATAGGI_DESKTOP\BKP_Desktop\ZIP\  #0
               130=y:\Valter\SALVATAGGI_DESKTOP\Outlook\ #01,Accounts
               131=y:\Valter\SALVATAGGI_DESKTOP\Outlook\Accounts\ #0
               132=y:\Valter\SALVATAGGI_DESKTOP\Outlook\ #1,Accounts
               133=y:\Valter\SALVATAGGI_DESKTOP\   #02,Outlook
               134=y:\Valter\SALVATAGGI_DESKTOP\TMP\  #0
               135=y:\  #15,Valter
               136=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\   #027,Valter
               137=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\  #022,OPERE_PUBBLICHE
               138=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ #21,Valter
               139=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\Valter\
               140=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ #027,Valter
               141=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\Valter\   #0
               142=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ #17,Valter
               143=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\121_LEGGI\   #0
               144=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ #17,121_LEGGI
               145=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\  #30,ZZ_FIRME_DIGITALI.rar
               146=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\SALVATAGGI\
               147=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\  #02,SALVATAGGI
               148=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\ #01,CASA
               149=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\CASA\  #013,PRES3000_07
               150=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\CASA\PRES3000_07\  #0
               151=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\CASA\  #13,PRES3000_07
               152=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\ #06,TRIBUTI
               153=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\TRIBUTI\  #0
               154=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\SALVATAGGI\  #04,A00_MENU_PRINCIPALE_____________________________________.txt
               155=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\ #04,SALVATAGGI
               156=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\  #12,GestioneLLPP_N70____________________________________________CRIPTA_DECODIFICA.txt
               157=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\98_DESKTOP\   #0
               158=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\  #17,98_DESKTOP
               159=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\01_POSTA_BOZZE\  #030,WR_scuola materna via arno.doc
               160=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\  #01,01_POSTA_BOZZE
               161=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\02_SCANNER\   #03,ScannerTmp
               162=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\02_SCANNER\ScannerTmp\ #30,ZZ_Folium_XXXX_MODELLO_2019.zip
               163=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\  #02,02_SCANNER
               164=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\03_FATTURE_SCARICATE\  #030,ZEPPIERI_COSTRUZIONI_FATTURA_ELETTRONICA_2015_09_(Nro_362)_(25_190_74)_Accettata.pdf
               165=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\  #03,03_FATTURE_SCARICATE
               166=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\04_ANAC_ATTESTAZIONI\  #0
               167=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\  #04,04_ANAC_ATTESTAZIONI
               168=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\07_EMAIL\  #0
               169=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\  #5,07_EMAIL
               170=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\AA_SALVATAGGI\   #011, 25_GESTIONE_LLPP.rar
               171=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\AA_SALVATAGGI\ 25_GESTIONE_LLPP.rar/  #01,25_GESTIONE_LLPP
               172=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\AA_SALVATAGGI\ 25_GESTIONE_LLPP.rar/25_GESTIONE_LLPP\
               173=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\AA_SALVATAGGI\   #11, 25_GESTIONE_LLPP.rar
               174=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\  #13,AA_SALVATAGGI
               175=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\10_LEGGI\  #0
               176=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\  #7,10_LEGGI
               177=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\11_OUTLOOK\   #1,CartellePersonali_2015.pst
               178=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\  #8,11_OUTLOOK
               179=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\02_SCANNER\ScannerTmp\ #8,DCC_54_2014.zip
               180=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\  #1,01_POSTA_BOZZE
               181=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\25_GESTIONE_LLPP\
               182=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\  #012,25_GESTIONE_LLPP
               183=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\25_GESTIONE_LLPP\   #03,LLPP_ARCHVI_MDB
               184=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\25_GESTIONE_LLPP\LLPP_ARCHVI_MDB\  #01,LLPP_GESTIONE
               185=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\25_GESTIONE_LLPP\LLPP_ARCHVI_MDB\LLPP_GESTIONE\   #01,LPP_ANALISI
               186=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\25_GESTIONE_LLPP\LLPP_ARCHVI_MDB\LLPP_GESTIONE\LPP_ANALISI\   #6,DEFINIZIONI_CODICI_LLPP
               187=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\25_GESTIONE_LLPP\PRES3000_GESTIONE\   #02,SALVATAGGI_PRES3000
               188=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\25_GESTIONE_LLPP\PRES3000_GESTIONE\SALVATAGGI_PRES3000\ #0
               189=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\25_GESTIONE_LLPP\PRES3000_GESTIONE\ARCHIVI_PRES3000\ #0
               190=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\25_GESTIONE_LLPP\PRES3000_GESTIONE\   #01,ARCHIVI_PRES3000
               191=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\25_GESTIONE_LLPP\   #9,PRES3000_GESTIONE
               192=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\25_GESTIONE_LLPP\LLPP_ARCHIVI_MDB\
               193=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\25_GESTIONE_LLPP\   #02,LLPP_ARCHIVI_MDB
               194=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\  #12,25_GESTIONE_LLPP
               195=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\2024_04_16_SALVATAGGIO_PC_UFFICIO\GESTIONI\GESTIONE_LLPP\99_GESTIONI_SERVIZI\   #030,UTIL25_n02_COSTRUISCI_QUERY_SELECT_TERRENI_PER_SOGGETTO.bas
               [LeftHistory]
               0=d:\GESTIONI\GESTIONE_LLPP\25_GESTIONE_LLPP\BAR\MDB\
               1=d:\GESTIONI\GESTIONE_LLPP\25_GESTIONE_LLPP\BAR\  #01,MDB
               2=d:\GESTIONI\GESTIONE_LLPP\25_GESTIONE_LLPP\   #09,BAR
               3=d:\GESTIONI\GESTIONE_LLPP\25_GESTIONE_LLPP\AFFIDAMENTI\   #0
               4=d:\GESTIONI\GESTIONE_LLPP\25_GESTIONE_LLPP\   #5,AFFIDAMENTI
               5=c:\GESTIONE_LLPP\
               6=c:\GESTIONE_LLPP\25_GESTIONE_LLPP\
               7=c:\GESTIONE_LLPP\  #1,25_GESTIONE_LLPP
               8=c:\ #01,GESTIONE_LLPP
               9=c:\GESTIONE_LLPP\  #01,SALVATAGGI_BAT_DA_RISISTEMARE
               10=d:\GESTIONI\GESTIONE_LLPP\25_GESTIONE_LLPP\
               11=d:\GESTIONI\GESTIONE_LLPP\ #01,25_GESTIONE_LLPP
               12=d:\GESTIONI\   #03,GESTIONE_LLPP
               13=d:\   #02,GESTIONI
               14=h:\Gestioni\ARCHIVI_LLPP\  #0
               15=h:\Gestioni\ARCHIVI_LLPP\Y\   #0
               16=h:\Gestioni\ARCHIVI_LLPP\  #01,Y
               17=h:\Gestioni\   #1,ARCHIVI_LLPP
               18=h:\   #00,Gestioni
               19=c:\CASA\LINGUAGGI\SUBLIMETEXT\IMPOSTAZIONI_USER\
               20=c:\CASA\LINGUAGGI\SUBLIMETEXT\IMPOSTAZIONI_USER\IMPOSTAZIONI_USER.ZIP/  #01,IMPOSTAZIONI_USER
               21=c:\CASA\LINGUAGGI\SUBLIMETEXT\IMPOSTAZIONI_USER\IMPOSTAZIONI_USER.ZIP/IMPOSTAZIONI_USER\  #5,IMPOSTAZIONI_USER\.gitignore
               22=c:\CASA\LINGUAGGI\SUBLIMETEXT\IMPOSTAZIONI_USER\   #7,IMPOSTAZIONI_USER.ZIP
               23=c:\CASA\LINGUAGGI\SUBLIMETEXT\IMPOSTAZIONI_USER\IMPOSTAZIONI_USER.ZIP/IMPOSTAZIONI_USER\
               24=c:\CASA\LINGUAGGI\SUBLIMETEXT\   #4,IMPOSTAZIONI_USER
               25=c:\CASA\LINGUAGGI\   #01,SUBLIMETEXT
               26=c:\CASA\ #01,LINGUAGGI
               27=c:\   #,CASA
               28=c:\CASA\LINGUAGGI\
               29=c:\   #0,CASA
               30=c:\   #00,CASA
               31=c:\
               32=Y:\
               33=C:\USERS\walter.rossi\AppData\Local\Microsoft\Outlook\
               34=c:\CASA\LINGUAGGI\   #01,TMP
               35=c:\CASA\LINGUAGGI\TMP\  #2,ZZ________________________________________________________________________ZZ.txt
               36=c:\GESTIONE_LLPP\ #1,SALVATAGGI_BAT_DA_RISISTEMARE
               37=c:\GESTIONE_LLPP\SALVATAGGI_BAT\ #0
               38=c:\GESTIONE_LLPP\ #1,SALVATAGGI_BAT
               39=c:\GESTIONE_LLPP\TMP\
               40=c:\GESTIONE_LLPP\ #2,TMP
               41=c:\CASA\LINGUAGGI\TMP\  #1,APRI_PNRR_(Disco+Path+File)_(Parametri_SET).bat
               42=c:\CASA\LINGUAGGI\   #1,TMP
               43=c:\CASA\ #1,LINGUAGGI
               44=c:\GESTIONE_LLPP\ #01,SALVATAGGI_BAT
               45=c:\GESTIONE_LLPP\SALVATAGGI_BAT\
               46=c:\   #1,GESTIONE_LLPP
               47=c:\CASA\
               48=c:\CASA\TRIBUTI\  #01,GeTributi
               49=c:\CASA\TRIBUTI\GeTributi\ #3,C_IciImu
               50=c:\CASA\TRIBUTI\  #1,GeTributi
               51=c:\CASA\ #1,TRIBUTI
               52=h:\Gestioni\   #0
               53=h:\Gestioni\ARCHIVI_LLPP\Y\   #11,90_POLO_NATATORIO
               54=h:\Gestioni\   #01,ARCHIVI_LLPP
               55=h:\Gestioni\GESTIONE_LLPP\ #01,25_GESTIONE_LLPP
               56=h:\Gestioni\GESTIONE_LLPP\25_GESTIONE_LLPP\  #0
               57=h:\Gestioni\   #2,GESTIONE_LLPP
               58=h:\   #0,Gestioni
               59=d:\CASA\PROGRAMMI\TEXPAD\SORGENTI\txpita812-64_(TexPad_8_ULTIMO_INSTALLATO).zip/
               60=d:\CASA\PROGRAMMI\TEXPAD\SORGENTI\  #02,txpita812-64_(TexPad_8_ULTIMO_INSTALLATO).zip
               61=d:\CASA\PROGRAMMI\TEXPAD\  #01,SORGENTI
               62=d:\CASA\PROGRAMMI\TEXPAD\TEXPAD_08\ #5,setup.exe
               63=d:\CASA\PROGRAMMI\TEXPAD\  #02,TEXPAD_08
               64=d:\CASA\PROGRAMMI\   #25,TEXPAD
               65=d:\CASA\PROGRAMMI\STAMPANTI\  #01,DRIVER
               66=d:\CASA\PROGRAMMI\STAMPANTI\DRIVER\ #0
               67=d:\CASA\PROGRAMMI\   #25,STAMPANTI
               68=d:\CASA\PROGRAMMI\NOTEPAD\ #1,npp.7.3.1.Installer.exe
               69=d:\CASA\PROGRAMMI\   #14,NOTEPAD
               70=d:\CASA\PROGRAMMI\INTERNET\
               71=d:\CASA\PROGRAMMI\   #10,INTERNET
               72=d:\CASA\PROGRAMMI\   #013,INTERNET
               73=d:\CASA\PROGRAMMI\Immagini_Dischi\  #0
               74=d:\CASA\PROGRAMMI\   #11,Immagini_Dischi
               75=d:\CASA\ #012,PROGRAMMI
               76=d:\CASA\2023_12_22_SALVATAGGI\   #5,2023_12_22_SALVATAGGI_GE_CASA
               77=d:\CASA\2023_12_22_SALVATAGGI\2023_12_22_SALVATAGGI_GE_CASA\   #01,GE_CASA.ZIP
               78=d:\CASA\2023_12_22_SALVATAGGI\2023_12_22_SALVATAGGI_GE_CASA\GE_CASA.ZIP/   #01,GE_CASA
               79=d:\CASA\2023_12_22_SALVATAGGI\2023_12_22_SALVATAGGI_GE_CASA\GE_CASA.ZIP/GE_CASA\ #0
               80=d:\CASA\2023_12_22_SALVATAGGI\   #05,2023_12_22_SALVATAGGI_GE_CASA
               81=d:\CASA\2023_12_22_SALVATAGGI\2023_12_22_SALVATAGGI_PROGRAMMI\ #01,PROGRAMMI
               82=d:\CASA\2023_12_22_SALVATAGGI\2023_12_22_SALVATAGGI_PROGRAMMI\PROGRAMMI\   #03,Texpad
               83=d:\CASA\2023_12_22_SALVATAGGI\   #07,2023_12_22_SALVATAGGI_PROGRAMMI
               84=d:\CASA\2023_12_22_SALVATAGGI\2023_12_22_SALVATAGGI_PROGRAMMI\ #0
               85=d:\CASA\2023_12_22_SALVATAGGI\   #7,2023_12_22_SALVATAGGI_PROGRAMMI
               86=d:\CASA\ #1,2023_12_22_SALVATAGGI
               87=d:\CASA\PROGRAMMI\   #5,JAVA
               88=d:\CASA\PROGRAMMI\   #7,INTERNET
               89=d:\CASA\PROGRAMMI\PDF\  #03,PDFXVwer.zip
               90=d:\CASA\PROGRAMMI\PDF\PDFXVwer.zip/ #1,PDFXVwer.exe
               91=d:\CASA\PROGRAMMI\PDF\PDFXVE5.zip/  #1,PDFXVE5.exe
               92=d:\CASA\PROGRAMMI\PDF\  #04,PDFXVE5.zip
               93=d:\CASA\PROGRAMMI\PDF\  #3,PDFXVwer.zip
               94=d:\CASA\PROGRAMMI\PDF\PDFCreator-3_5_1-Setup.zip/  #1,PDFCreator-3_5_1-Setup.exe
               95=d:\CASA\PROGRAMMI\PDF\  #1,PDFCreator-3_5_1-Setup.zip
               96=d:\CASA\PROGRAMMI\PDF\PDFXVwer.zip/ #2,PDFXVW1.xml
               97=d:\CASA\PROGRAMMI\PDF\PDFXVE5.zip/  #0
               98=d:\CASA\PROGRAMMI\   #02,PDF
               99=d:\CASA\PROGRAMMI\SublimeText\   #03,sublime_text_build_4121_x64.zip
               100=d:\CASA\PROGRAMMI\SublimeText\sublime_text_build_4121_x64.zip/   #3,sublime_text_build_4121_x64_setup.exe
               101=d:\CASA\PROGRAMMI\  #8,SublimeText
               102=d:\  #01,CASA
               103=d:\CASA\   #0
               104=Y:\Valter\
               105=C:\Program Files\totalcmd\
               106=C:\Program Files\totalcmd\BARRA_PERSONALE\  #04,DEFAULT.br2
               107=C:\  #3,Program Files
               108=C:\Program Files\   #013,totalcmd
               109=C:\Program Files\totalcmd\   #01,BARRA_PERSONALE
               110=C:\Program Files\totalcmd\BARRA_PERSONALE\  #7,TCMD_TAB_CASA_SX_UFFICIO_DX_CASA.tab
               111=C:\Program Files\totalcmd\   #1,BARRA_PERSONALE
               112=C:\Program Files\totalcmd\BARRA_PERSONALE\  #0
               [Tabstops]
               0=268
               1=271
               3=327
               4=214
               6=704
               5=102
               AdjustWidth=1
               [lefttabs]
               0_path=C:\USERS\walter.rossi\AppData\Local\Microsoft\Outlook\
               0_options=1|0|0|0|0|2|0|
               1_path=c:\GESTIONI\GESTIONE_LLPP\02_SCANNER\ScannerTmp\
               1_options=1|3|1|0|0|2|0|
               2_path=c:\TMP\
               2_options=1|0|0|0|0|2|0|
               3_path=c:\Gestioni\
               3_options=1|0|0|0|0|2|0|
               4_path=c:\CASA\
               4_options=1|3|1|0|0|2|0|
               5_path=c:\CASA\CDM\
               5_options=1|0|0|0|0|0|0|
               6_path=c:\CASA\LTT\
               6_options=1|0|0|0|0|2|0|
               7_path=c:\CASA\BRS\
               7_options=1|0|0|0|0|2|0|
               8_path=c:\CASA\IUC\
               8_options=1|0|0|0|0|2|0|
               9_path=c:\Gestioni\GeTributi\GeTributi\TributiArchivi\
               9_options=1|0|0|0|0|2|0|
               10_path=c:\Gestioni\TRIBUTI\TT_FILE\
               10_options=1|0|0|0|0|2|0|
               11_path=Y:\SCANSIONI\
               11_options=1|0|0|0|0|2|0|
               12_path=c:\
               12_caption=Backup_Y
               12_options=1|0|0|0|0|2|0|
               13_path=c:\GESTIONI\GESTIONE_LLPP\01_POSTA_BOZZE\
               13_options=1|0|0|0|0|2|0|
               14_path=C:\Users\walter.rossi\AppData\Roaming\Microsoft\Windows\Recent\
               14_options=1|3|1|0|0|2|0|
               15_path=C:\Users\walter.rossi\Downloads\
               15_options=1|3|1|0|0|1|0|
               16_path=c:\CASA\LINGUAGGI\ACCESS\ACCESS_PROGETTI_MDB\ACCESS_GESTIONE_OGGETTI_DB_MDB\MODELLO_FILTRO\MODELLO_FILTRO_MDB\
               16_options=0|0|0|0|0|0|0|
               17_path=C:\TMP\
               17_options=1|0|0|0|0|0|0|
               18_path=C:\CASA\PRES3000_07\AUTOMOBILI\
               18_options=1|0|0|0|0|2|0|
               19_path=c:\CASA\PRES3000_07\
               19_options=1|0|0|0|0|2|0|
               20_path=C:\Users\walter.rossi\
               20_options=1|3|1|0|0|2|0|
               21_path=C:\Users\walter.rossi\AppData\Local\Temp\
               21_caption=Walter.rossi\AppData\Local\Temp
               21_options=1|0|0|0|0|2|0|
               22_path=c:\TMP\TMP_oggi\
               22_options=1|3|1|0|0|0|0|
               23_path=c:\CASA\LINGUAGGI\ACCESS\ACCESS_PROGETTI_MDB\ACCESS_GESTIONE_OGGETTI_DB_MDB\GESTIONE_OGGETTI\GESTIONE_OGGETTI_MDB\
               23_options=1|0|0|0|0|0|0|
               24_path=C:\CASA\LINGUAGGI\
               24_options=1|3|1|0|0|0|0|
               activetab=1
               activelocked=2
               [righttabs]
               0_path=c:\GESTIONI\GESTIONE_LLPP\02_SCANNER\ScannerTmp\
               0_options=1|1|0|0|0|2|0|
               1_path=C:\TMP\
               1_options=0|0|0|0|0|2|0|
               2_path=C:\Users\walter.rossi\Desktop\
               2_options=1|0|0|0|0|2|0|
               3_path=c:\GESTIONI\
               3_options=1|3|1|0|0|2|0|
               4_path=Y:\Valter\Scanner\Backup\
               4_caption=Backup_Y
               4_options=1|0|0|0|0|2|0|
               5_path=c:\CASA\CDM\
               5_options=1|3|1|0|0|2|0|
               6_path=c:\GESTIONI\GESTIONE_LLPP\
               6_options=1|0|0|0|0|2|0|
               7_path=Y:\SCANSIONI\
               7_caption=SCANSIONI_Y
               7_options=1|3|1|0|0|2|0|
               8_path=c:\GESTIONI\GESTIONE_LLPP\01_POSTA_BOZZE\
               8_options=1|3|1|0|0|2|0|
               9_path=c:\GESTIONI\GESTIONE_LLPP\10_LEGGI\
               9_caption=c:
               9_options=1|0|0|0|0|2|0|
               10_path=C:\CASA\
               10_options=1|3|1|0|0|2|0|
               11_path=c:\GESTIONI\GESTIONE_LLPP\10_LEGGI\
               11_options=1|3|1|0|0|2|0|
               12_path=c:\GESTIONI\
               12_options=1|0|0|0|0|2|0|
               13_path=c:\CASA\PRES3000_07\
               13_options=1|0|0|0|0|2|0|
               14_path=c:\Casa\LEGGI\
               14_options=1|4|0|0|0|2|0|
               15_path=C:\Users\walter.rossi\AppData\Roaming\Microsoft\Windows\Recent\
               15_options=1|0|0|0|0|2|0|
               16_path=c:\GESTIONI\GESTIONE_LLPP\02_SCANNER\ScannerTmp\
               16_options=1|0|0|0|0|2|0|
               17_path=Y:\
               17_options=1|3|1|0|0|1|0|
               18_path=y:\
               18_options=1|3|1|0|0|0|0|
               activetab=11
               activelocked=2
               activecaption=Backup_Y
               [Colors]
               InverseCursor=0
               ThemedCursor=0
               InverseSelection=0
               BackColor=-1
               BackColor2=-1
               ForeColor=-1
               MarkColor=255
               CursorColor=16711680
               CursorText=-1
               [DirMenu]
               menu1=Y_WALTER_OPERE_PUBBLICHE
               cmd1=cd Y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE
               path1=c:\GESTIONE_LLPP\SALVATAGGI_BAT\
               menu2=Y_UFFICIO_OPERE_PUBBLICHE
               cmd2=cd Y:\OPERE PUBBLICHE
               path2=c:\GESTIONE_LLPP\
                  
