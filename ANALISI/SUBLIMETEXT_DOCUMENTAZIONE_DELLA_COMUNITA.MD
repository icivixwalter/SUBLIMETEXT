


SUBLIME_TEX_DOCUMENTAZIONE_DELLA_COMUNITA (@Sublime@Text Community Documentation)(@DOCUMENTAZIONE NON @UFFICIALE)
	LINK
		 https://docs.sublimetext.io/guide/#history
			@link@sublimetext@DOCUMENTAZIONE.NON.UFFICIALE
			@documentazione@NON@UFFICIALE


   1.0.INTRODUZIONE
			Testo sublime (apre una nuova finestra)è un editor di testo versatile, divertente e veloce per codice e prosa che automatizza le attività ripetitive Quindi puoi concentrarti sulle cose importanti. È supportato su macOS, Windows e Linux. La sua versatilità deriva da Una vasta gamma di pacchetti di terze parti sviluppati dalla comunità che forniscono evidenziazione della sintassi, frammenti, o altre automazioni supportate da Pitone (apre una nuova finestra)plugin. La distribuzione predefinita di Sublime Text mira a fornire un insieme di funzionalità di base ma molto funzionale, ma può essere facilmente trasformato in un IDE a tutti gli effetti, se lo si desidera.
	  1.2.STORIA
			La documentazione testuale sublime non ufficiale è stato avviato da Guillermo López-Anglada (apre una nuova finestra)nel 2010 e successivamente affiancato da FichteFoll (apre una nuova finestra)nel 2013, ricevere innumerevoli contributi da altri membri della comunità per tutta la sua vita. Nel 2014, è stato sostenuto da una raccolta fondi e supportato da individui e Sublime HQ Pty Ltd.
			   ....
	  1.2.CONTRIBUIRE ALLA DOCUMENTAZIONE
			Se vuoi contribuire a questa documentazione, vai al Repository GitHub (apre una nuova finestra). Troverai anche un link "Modifica questa pagina" nella parte inferiore di ogni pagina che ti reindirizzerà direttamente al file di origine della pagina attualmente visualizzata. Si prega di rivedere il nostro Linee guida per i contributi (apre una nuova finestra)per domande sulla formattazione.

   2.0.INTRODUTTIVA
		 2.1.INSTALLAZIONE
			Sublime Text è disponibile in due versioni (per Windows in particolare):
			Il processo di installazione di Sublime Text è diverso per ogni piattaforma.
			   2.2.32 o 64 bit?
			Le versioni a 64 bit dovrebbero essere preferite.  ...
			   2.3.macOS
					 C'è solo una versione di Sublime Text per macOS.
	  
			   2.3.Sistemi operativi Linux
					 Eseguire il comando seguente nel tuo terminale per verificare il tipo di sistema operativo. significa che sei su un sistema a 64 bit.x86_64
						   $ uname -m
			   2.4.Portatile o non portatile?
					Sublime Text è disponibile in due versioni (per Windows in particolare):                
					 normale
					 portatile.
					 La maggior parte degli utenti dovrebbe essere meglio servita da una normale installazione. Usa la versione portatile solo se sai di averne bisogno.
	  
				  Dati separati per le installazioni normali tra due cartelle: la cartella di installazione corretta, e la directory dei dati (directory specifica dell'utente per i dati; spiegato più avanti in questa guida). Installazioni normali integrare anche Sublime Text con Esplora file.
				  
				  Le installazioni portatili mantengono tutti i file necessario per Sublime Text in un'unica cartella. Questa cartella può essere spostata e l'editor funzionerà ancora.
	  
			   2.2.Come installare
					 macOS e Windows ...
					 ..
				  Sistemi operativi Linux
					 Installazione manuale
						   È possibile utilizzare la seguente sequenza di comandi Bash per installare Sublime Text manualmente. Sostituisci con l'ultima build disponibile (o qualsiasi numero di build precedente).3211
							  cd ~
								 wget https://download.sublimetext.com/sublime_text_3_build_3211_x64.tar.bz2
								 tar vxjf sublime_text_3_build_*_x64.tar.bz2
								 # Move the uncompressed files to an appropriate location.
								 sudo mv sublime_text_3 /opt/sublime_text
								 # Create a symbolic link to use at the command line.
								 sudo ln -s /opt/sublime_text_3/sublime_text /usr/local/bin/subl
								 # Create a symbolic link for the desktop entry.
								 sudo ln -s /opt/sublime_text_3/sublime_text.desktop /usr/share/applications/sublime_text.desktop
					 ..
				  Versioni precedenti
						Nel caso in cui desideri eseguire il downgrade del tuo Sublime Text, È possibile accedere ai file binari per qualsiasi versione rilasciata in precedenza sostituendo il numero di build nell'URL di download. Ad esempio, per recuperare la versione di Windows per Sublime Text 3.0, prendi l'ultimo URL di download fornito e sostituiscilo con quello della versione Sublime Text 3.0.
	  
						3.2.2 Build 3211 
						: https://download.sublimetext.com/Sublime%20Text%20Build%203211%20x64%20Setup.exe(apre una nuova finestra

		3.0 (Build 3143 
						: https://download.sublimetext.com/Sublime%20Text%20Build%203143%20x64%20Setup.exe
		2.3.CONCETTI BASE
			Per comprendere appieno il resto di questa guida, Devi avere familiarità con i concetti presentati in questa pagina.

			2.3.1.Convenzioni generali
			   Questa guida è scritta dal punto di vista di un utente Windows. La maggior parte delle istruzioni richiederà solo modifiche banali per lavorare su altre piattaforme.
			   Salvo diversa indicazione, Percorsi relativi (ad esempio, ) iniziare dalla directory dei dati.Packages/User
					 Windows: %APPDATA%\Sublime Text

			   Assumiamo associazioni di tasti predefinite quando si indicano le scorciatoie da tastiera. ...


			2.3.2.Padroneggiare un testo sublime richiede tempo
			   Padroneggiare il testo sublime richiede tempo e pratica. Fortunatamente, è costruito intorno Una manciata di concetti che rendono coerente sistema una volta che tutti i pezzi si uniscono.

			   Questa guida ti insegnerà come utilizzare e configurare Sublime Text.
			   ..
			2.3.3.The DirectoryData(LA DIRECTORY DATI)
			   Quasi tutti i file interessanti per gli utenti vivere sotto la directory dei dati. La directory dei dati è una posizione dipendente dalla piattaforma:
				  Windows: %APPDATA%\Sublime Text
				  macOS: ~/Library/Application Support/Sublime Text
				  Linux: ~/.config/sublime-text
					 ...
			2.3.4.La directory dei pacchetti
			   Questa è una directory chiave situato sotto la directory dei dati. Tutte le risorse per la programmazione supportata e linguaggi di markup sono memorizzati qui.
				  @DOVE@SI.TROVANO@I@PACCHETTI

			   È possibile accedere alla directory dei pacchetti dal menu principale (Preferenze → Sfoglia pacchetti...), mediante una chiamata API (), e con altri mezzi Questo sarà spiegato negli argomenti successivi.sublime.packages_path()

			   In questa guida, facciamo riferimento alla cartella dei pacchetti come pacchetti, percorso pacchetti, cartella pacchetti o directory pacchetti.

			   IL PACCHETTO UTENTE
			   Packages/User è una directory catch-all per plugin personalizzati, frammenti, macro, ecc. Considerala la tua area personale nella cartella pacchetti. Inoltre, conterrà la maggior parte delle impostazioni personali dell'applicazione o del plug-in.  
				  @USER@pacchetti@utente @utenti@pacchetti

			   Sublime Text espone i suoi interni tramite un'interfaccia di programmazione delle applicazioni (API) con cui i programmatori possono interagire utilizzando Le Linguaggio di programmazione Python (apre una nuova finestra).

			   LA CONSOLE
			   Sublime Text e plugin inviano informazioni di debug alla console. Per aprire la console, premere o selezionare Visualizza → Mostra console dal menu principale.   
				  Ctrl+` (View → Show Console )
						@apri@console@Python
				  attenzione Ctrl + apice non funzione perchè è un codice diverso

			   Ecco la console Python in Sublime Text: View → Show Console )
				  @console@Python @programmazione@python


			   È incluso un interprete Python incorporato nell'editor. L'interprete incorporato è utile per controllare le impostazioni dell'editor e per testare rapidamente le chiamate API durante lo sviluppo di plugin.
				  @Python@incorporato
			2.4.5.Pacchetti, plugin, risorse e altri termini
			   Quasi ogni aspetto di Sublime Text può essere esteso o personalizzato. È possibile modificare il comportamento dell'editor, Aggiungere macro e frammenti, estendere i menu e molto altro ancora. Puoi persino creare funzionalità completamente nuove utilizzo dell'API dell'editor per creare complessi plugin.
			   La grande flessibilità di Sublime Text è la ragione Perché imparerai Informazioni su così tanti file di configurazione: ci deve essere semplicemente un posto per specificare tutte le preferenze e le impostazioni disponibili.
			   File di configurazione in Sublime Text sono file di testo conformi a una struttura o a un formato predefinito: Predomina JSON, ma troverai anche file XML e YAML. Per i più avanzati opzioni di estensibilità, Vengono utilizzati i file di codice 
			   sorgente Python.

			   In questa guida, per brevità, A volte ci riferiamo collettivamente a tutti questi file di configurazione diversi come risorse.

			   Sublime Text cercherà risorse all'interno della cartella pacchetti. Parleremo a lungo dei pacchetti più avanti, ma la versione breve è che, per mantenere le cose in ordine, Sublime Text ha una nozione di pacchetto, cioè, una cartella (o archivio zip) che contiene risorse che appartengono insieme. (Forse aiutano comporre e-mail più velocemente, scrivere HTML in modo efficiente, migliorare l'esperienza di codifica per C, Ruby, Go, ...).

				  @file@di@configurazione@json@xml@YAML
				  @estensione@sublimetex
				  @PACCHETTI
			2.3.6.Compatibilità con Textmate
			   Poiché Sublime Text è stato fortemente ispirato da TextMate 1, supporta la maggior parte delle estensioni fornite nei pacchetti TextMate, ....
			2.3.7.Emulazione vi/Vim
			   VI è un antico editor modale che consente all'utente di eseguire tutte le operazioni dalla tastiera. Vim, una versione moderna di vi, è ancora in uso diffuso.

			   Sublime Text fornisce vi emulazione attraverso il Vintage (apre una nuova finestra)pacco. Il pacchetto Vintage viene ignorato per impostazione predefinita e deve essere abilitato dall'utente. Per saperne di più Vintage (apre una nuova finestra)nella documentazione ufficiale.
			   Sono stati sviluppati diversi pacchetti di terze parti da implementare per integrare o sostituire L'emulazione VI integrata. Tratteremo l'installazione e l'utilizzo di pacchetti di terze parti in seguito.
				  @emulazione@di@vim
			2.3.8.Emulazione emacs
			   emacs è un altro popolare Editor per programmatori.

			   Sublime Text non offre Qualsiasi emulazione eMacs integrata, ma puoi provare pacchetti di terze parti creato da altri utenti di Sublime Text. Come con i pacchetti di terze parti per l'emulazione vi, Tratteremo l'installazione e l'utilizzo di questi in seguito.
  
   3.0.UTILIZZO DI BASE
		 3.1.REDAZIONE
			3.3.1.Selezioni multiple
			   Le selezioni multiple consentono di apportare modifiche radicali al testo in modo efficiente. Qualsiasi elogio sulle selezioni multiple è un eufemismo. Ecco perché:
			   Selezionate del testo e premete Ctrl D per aggiungere altre istanze. Se si desidera ignorare l'istanza corrente, premere Ctrl K, Ctrl D.
				  @CTRL+D@SELEZIONE@TESTO = selezione testo e trovo istanze
				  @CTRL+U = DESELEZIONE
				  @mantiele.la.selezione
				  @SELEZIONI@MULTIPLE



			3.3.2.Trasformazione di più selezioni in linee
			   Ctrl L 
			   espande le selezioni fino alla fine della riga. Ctrl ⇧ L divide le selezioni in righe.
			   È possibile copiare più righe selezionate in un buffer separato, modificarle lì, 
			   Selezionare nuovamente il contenuto come più righe, quindi incollarlo nuovamente in posizionare nel primo buffer. 
			   		@CTRL+l


			   Selezione colonna ..
			   Uso del mouse ..
			   Uso della tastiera ..
			   Altri modi di selezionare il testo
			   Trasporre le cose
				  Hai bisogno di scambiare due lettere o, meglio ancora, due parole? Sperimenta con Ctrl T.

			   Aritmetica   
				  Hai bisogno di creare una serie di numeri? Prova Ctrl ⇧ P e Arithmetic "Aritmetica".
					 puoi fare i calcoli nelle espressioni ...

			   E molto, molto altro ancora...
		 
		 3.2.GESTIONE NAVIGAZIONE DEI FILE
			   Sublime Text include una varietà di funzionalità per aiutarti a mantenere il tuo lavoro organizzato e orientati tra i tuoi progetti.
			3.2.1.Progetti
					 Insiemi di file e cartelle del gruppo Progetti per mantenere il tuo lavoro organizzato. Supportano impostazioni specifiche del progetto e sistemi di compilazione e puoi passare rapidamente da uno all'altro per continuare a lavorare da dove eri rimasto.
					 
					 L'aggiunta di cartelle a un progetto è necessaria per Goto Anything e Goto Definition a livello di progetto.
					 
					 C'è sempre un progetto attivo, anche se non ne hai creato o aperto uno. In questa situazione, stai lavorando con un progetto anonimo, che ha funzionalità limitate. Le nuove finestre utilizzano sempre un progetto anonimo quando si aprono per la prima volta.
					 
					 I metadati del progetto vengono archiviati in file JSON con un'estensione. Ovunque ci sia un file, Troverai anche un file ausiliario. Il file contiene i dati della sessione che non dovresti mai modificare. Maggiori informazioni sulle aree di lavoro più avanti..sublime-project.sublime-project.sublime-workspace.sublime-workspace

			  Creazione di un progetto
				  Inizia con un progetto anonimo aprendo una nuova finestra o chiudere qualsiasi progetto attivo con il menu Progetto → Chiudi progetto.
				  È possibile aggiungere e rimuovere cartelle a/da un progetto utilizzando il menu Progetto o il menu contestuale della barra laterale. Se trascinate una cartella in una finestra di testo Sublime, Sarà aggiunto anche al progetto.
					 @trascinare@cartella
				  Per salvare un progetto anonimo, passare a Project → Salva progetto con nome....
				  Dopo aver salvato il progetto, puoi modificarlo a mano per regolare ulteriori opzioni.

				  Progetti di apertura
				  Utilizzando il menu principale, È possibile aprire o cambiare progetto selezionando Progetti → Apri recenti (Open Recent), Progetti → Cambia progetto.(Switch Project).. o Progetti → Cambio rapido progetto (Quick Switch Project….)....
						Quick Switch Project…   Ctrl + Alt + P

				  Quando si cambia progetto, Sublime Text chiuderà l'attuale progetto e aprire quello specificato nella stessa finestra, Quando si apre un progetto, Sublime Text apre una nuova finestra e apri lì il progetto selezionato.

						L'associazione dei tasti è stata rimossa con la build 3096 per Windows e deve essere aggiunto manualmente, se lo si desidera. Per fare questo, Aggiungere il seguente binding di chiavi al file di associazione delle chiavi utente:
							  { "keys": ["ctrl+alt+p"], "command": "prompt_select_workspace" }
							  @non@funziona

						Inoltre È possibile aprire un progetto dalla riga di comando passando il file come argomento all'helper della riga di comando incluso con Sublime Text..sublime-projectsubl

			Configurazione avanzata per i file di progetto
				  Insieme a più opzioni per le singole directory, I progetti possono avere sistemi di compilazione specifici o sostituzioni delle impostazioni.

				  Vedi anche
				  
				  Progetti - Referenze
				  Documentazione sul formato e le opzioni del file di progetto.

			Impostazioni relative alla barra laterale e ai progetti
				  binary_file_patterns
					 Elenco di caratteri jolly. I file corrispondenti a questi caratteri jolly verranno visualizzati nella barra laterale, ma sarà escluso da Goto Anything e Trova nei file.

			Aree di lavoro
						@aree@di@lavoro
				  Le aree di lavoro contengono i dati della sessione associato a un progetto, che include informazioni informazioni sui file aperti, layout del riquadro, Trova la storia e altro ancora. Un progetto può avere più aree di lavoro.

				  Un caso d'uso comune per le aree di lavoro è lavorare su caratteristiche diverse all'interno dello stesso progetto, dove ogni funzionalità richiede un diverso insieme di file da aprire, e vuoi passare rapidamente da una funzionalità all'altra. In questo caso vorrai avere Una seconda area di lavoro disponibile. I test di scrittura potrebbero essere un esempio per questo.

				  Le aree di lavoro si comportano in modo molto simile ai progetti. Per creare una nuova area di lavoro, selezionare Progetto → Nuova area di lavoro per Project. Per salvare l'area di lavoro attiva, selezionare Progetto → Salva area di lavoro con nome....

				  I metadati dell'area di lavoro vengono archiviati in file JSON con l'estensione, che non dovresti modificare..sublime-workspace

				  Per passare da un'area di lavoro all'altra, usa Ctrl Alt P, esattamente come si fa con i progetti. @non@funziona??

				  Come per i progetti, È possibile aprire un'area di lavoro dalla riga di comando passando il file desiderato come argomento dell'helper della riga di comando incluso con Sublime Text..sublime-workspacesubl

				  AVVERTIMENTO

				  A differenza dei file, i file non sono pensati per essere condivisi o modificati manualmente. Non dovresti mai eseguire il commit dei file in un repository del codice sorgente..sublime-project.sublime-workspace.sublime-workspace

			Vai a qualsiasi cosa
				  Usando Goto Anything, È possibile navigare rapidamente tra i file del progetto.


				  Scorciatoie da tastiera relative a Goto Anything:

				  Descrizione                                           Scorciatoia
				  Apri Goto Anything                                       CTRL P
				  Apri elemento corrente                                      ⏎
				  Apri l'elemento corrente e mantieni aperto il pannello      →
				  Chiudi Goto Anything                                        Esc

				  Durante la digitazione nell'area di input di Goto Anything, Nomi dei file nel progetto corrente saranno perquisiti, e un'anteprima della migliore partita verrà mostrato. Questa anteprima è temporanea; cioè, non diventerà la visualizzazione attiva effettiva fino a quando non si esegue qualche operazione su di esso. Troverete viste transitorie in altre situazioni, Ad esempio, dopo aver fatto clic su un file nella barra laterale.

				  Goto Anything è all'altezza del suo nome - C'è molto di più che individuare i file.

				  Vai agli operatori di qualsiasi cosa
				  Goto Anything accetta diversi operatori. Tutti possono essere utilizzati da soli o dopo il termine di ricerca.

				  Esempio:
					 models:100

				  Questo istruisce Sublime Text Per cercare prima un file il cui percorso corrisponde a , e poi per andare alla riga 100 in detto file.models

			Operatori supportati
				  @symbol
				  Cerca il file attivo per il simbolo denominato .symbol

			   Nota
				  
				  I simboli di solito includono nomi di classi e funzioni.
				  
				  Le ricerche di simboli produrranno solo risultati Se il tipo di file attivo ha simboli definiti per esso. Per ulteriori informazioni sui simboli, vedere 

				  Simboli.

				  Gli operatori Goto Anything sono associati alle seguenti scorciatoie:

				  Descrizione Scorciatoia
				  **@**          CTRL R
				  #              Ctrl ;
				  :              Ctrl G

			Simbolo Vai a nel progetto

				  I tasti di scelta rapida Vai a qualsiasi elemento esplorano il file corrente. Se hai un progetto aperto, puoi premere Ctrl ⇧ R (@non@funziona??) per avviare Vai a qualsiasi cosa nel progetto. Questo comando cercherà per i simboli in ogni file del progetto.

			Barra laterale

				  La barra laterale fornisce una panoramica del progetto attivo (maggiori informazioni sui progetti più avanti). File e cartelle nella barra laterale sarà disponibile in Goto Anything e azioni a livello di progetto come, ad esempio, le ricerche a livello di progetto

				  I progetti e la barra laterale sono strettamente correlati. È importante notare che che c'è sempre un progetto attivo; Se non hai aperto un file di progetto, Al suo posto verrà utilizzato un progetto anonimo.

				  Descrizione                            Scorciatoia
				  Attiva/disattiva la barra laterale     Ctrl K, Ctrl B
				  Metti a fuoco la barra laterale        CTRL 0
				  Riportare lo stato attivo sulla vista  Esc
				  Navigare nella barra laterale          Tasti freccia

				  File aperti dalla barra laterale Creare viste semi-transitorie. A differenza delle viste transitorie, le viste semi-transitorie Viene visualizzata come una nuova scheda. Il titolo della tabulazione delle visualizzazioni semitemporanee viene visualizzato in corsivo. Prima di aprire una nuova vista semi-transitoria, qualsiasi altra vista semi-transitoria preesistente nello stesso riquadro viene chiuso automaticamente. 
						@viste@semi-transitoria
						@vista@transitoria

				  Ulteriori comandi di gestione dei riquadri si trova in Visualizza → Layout e relativi sottomenu.

			Riquadri
			   I riquadri sono gruppi di viste. In Sublime Text, puoi avere Più riquadri si aprono contemporaneamente.
			   Principali scorciatoie da tastiera correlate ai riquadri:

				  Descrizione             Scorciatoia
				  Crea nuovo riquadro     Ctrl K, Ctrl ↑
				  Chiudi riquadro attivo  Ctrl K, Ctrl ↓

			   Ulteriori comandi di gestione dei riquadri si trova in Visualizza → Layout e relativi sottomenu.



			Cerca e sostituisci
			   Caratteristiche di Sublime Text Due tipi principali di ricerca:
			   File singolo
			   File multipli
			   Entrambi supportano espressioni regolari, Un potente strumento per la ricerca e la sostituzione del testo.
			   		@sublimeText@cerca_(cerca e @sostituisce  su @file@singolo o su file @multipli)

			   File singolo
				  Indagatore
					 Scorciatoie da tastiera correlate al pannello di ricerca:

					 Descrizione                                                 Scorciatoia
					 Apri il pannello di ricerca                                 Ctrl F
					 Attiva/disattiva le espressioni regolari                    Alt R
					 Attiva/disattiva la distinzione tra maiuscole e minuscole   Alt C
					 Attiva / disattiva la corrispondenza esatta                 Alt W
					 Trova il @prossimo                                              ⏎
					 Trova @precedente                                              ⇧ ⏎
					 Trova @tutto Alt                                             ⏎
					 
			   Ricerca incrementale
				  Tasti di scelta rapida correlati al pannello di @ricerca@incrementale:

					 Descrizione                                                 Scorciatoia
					 Apri il pannello di ricerca incrementale                    Ctrl I
					 Attiva/disattiva le espressioni regolari                    Alt R
					 Attiva/disattiva la distinzione tra maiuscole e minuscole   Alt C
					 Attiva / disattiva la corrispondenza esatta                 Alt W
					 Trova il prossimo                                           ⏎
					 Trova precedente                                            ⇧ ⏎
					 Trova tutto                                                 Alt ⏎


				  L'unica differenza tra questo pannello e il normale pannello di ricerca sta nel comportamento del tasto ⏎. Nelle ricerche incrementali, selezionerà la corrispondenza successiva nel file e chiudi il pannello di ricerca per te. Scegliere tra questo pannello o il normale pannello di ricerca è una questione di preferenze.

			   Sostituzione del testo
					 Tasti di scelta rapida relativi al pannello di sostituzione:

						Descrizione                            Scorciatoia
						Apri il pannello di sostituzione          Ctrl H
						Sostituisci successivo                    Ctrl ⇧ H
						Sostituisci tutto                         Ctrl Alt ⏎
				  Suggerimenti
				  Altri modi di cercare nei file
				  Goto Anything fornisce l'operatore per eseguire la ricerca nel file filtrato.#

				  Altre associazioni di tasti correlate alla ricerca

				  Queste associazioni di tasti funzionano Quando il pannello di ricerca è nascosto:

						Descrizione                                                          Scorciatoia
						Ricerca in avanti utilizzando il modello più recente                    F3
						Ricerca all'indietro utilizzando il modello più recente                 ⇧ F3
						Seleziona tutte le corrispondenze utilizzando il modello più recente    Alt F3
				  Ricerca multilinea
				  È possibile digitare modelli di ricerca multiriga nei pannelli di ricerca. Per immettere caratteri di nuova riga, premere CTRL ⏎.

				  Si noti che anche i pannelli di ricerca sono ridimensionabili.

			   File multipli
			   Indagatore
					 Tasti di scelta rapida correlati a Trova nei file:

					 Descrizione                                                 Scorciatoia
					 Apri Trova nei file                                         Ctrl ⇧ F
					 Attiva/disattiva le espressioni regolari                    Alt R
					 Attiva/disattiva la distinzione tra maiuscole e minuscole   Alt C
					 Attiva/disattiva le corrispondenze esatte                    Alt W
					 Trova il prossimo                                           Enter
					 
			   Ambito di ricerca

					 Campo Dove in Trova nei file Limita l'ambito di ricerca. È possibile definire gli ambiti in diversi modi:

						Aggiunta di singole directory (percorsi in stile Unix, anche su Windows)
						Aggiunta/esclusione di file basati su caratteri jolly
						Aggiunta di posizioni simboliche (, ...)<open folders><open files>
						È anche possibile combinare questi filtri usando virgole; Per esempio:


			   Formato dei risultati
					 Nel pannello di ricerca, è possibile personalizzare Come vengono visualizzati i risultati. Queste sono le opzioni disponibili:

					 Mostra in vista separata
					 Mostra contesto

			   Navigazione dei risultati
					 Se la ricerca restituisce corrispondenze, È possibile spostarsi attraverso la sequenza utilizzando le seguenti associazioni di tasti:

					 Descrizione                   Scorciatoia
						Prossima partita              F4
						Partita precedente            ⇧ F4
						Partita aperta                 ⏎

					 Puoi anche fare doppio clic sulle linee con una partita.

			   Espressioni regolari
				  Le espressioni regolari trovano modelli complessi nel testo. Per sfruttare appieno i vantaggi delle strutture di ricerca e sostituzione in Sublime Text, dovresti almeno imparare le basi delle espressioni regolari. In questa guida Non spiegheremo come usare le espressioni regolari.

					 Il termine @espressione@regolare è solitamente abbreviato in regexp o regex.

					 Ecco come potrebbe apparire una regex:
						   (?:Sw|P)i(?:tch|s{2})\s(?:it\s)?of{2}!

					 Per usare espressioni regolari in Sublime Text, devi prima attivarli in i vari pannelli di ricerca. In caso contrario, i termini di ricerca verranno interpretati letteralmente.

   4.0.PERSONALIZZAZIONE
	  4.1.1.Panoramica
			Sublime Text può essere completamente personalizzato. Nei seguenti argomenti, viene illustrato il Opzioni più comuni. In particolare, non trattiamo temi, un'area immensamente configurabile di Sublime Text.
					@sublime@text_(@associazione di @tasti)

			   Impostazioni
			   Associazioni di tasti
			   Menu
			   Combinazioni di colori
	  4.1.2.Impostazioni
		 Nota
			Sublime Text memorizza i dati di configurazione in file. La flessibilità ha il prezzo di un sistema leggermente complesso per l'applicazione Impostazioni. TUTTAVIA, ECCO UNA REGOLA EMPIRICA:.SUBLIME-SETTINGS

			Inserisci sempre i tuoi FILE DELLE IMPOSTAZIONI PERSONALI sotto garantire che AVRANNO LA PRECEDENZA su qualsiasi altra impostazione in conflitto ﬁle.Packages/User
			   @file@personali@precenza@package@user

			Detto questo, sveliamo, per compiacere i lettori masochisti, I misteri di come funzionano le impostazioni.

		 Formato
			I file di impostazioni utilizzano JSON e hanno l'estensione..sublime-settings

		 Tipi di impostazioni
			Il nome di ogni file ne determina lo scopo. Nomi possono essere descrittivi (come o ), oppure possono essere correlati a ciò che le impostazioni Il file sta controllando. Ad esempio, le impostazioni del tipo di file devono contenere il Nome della definizione della sintassi per il tipo di file. Quindi, per Il tipo di file, la cui definizione della sintassi è contenuta in , i file di impostazioni corrispondenti verrebbero chiamati ..sublime-settingsPreferences (Windows).sublime-settingsMinimap.sublime-settings.tmLanguage.pyPython.tmLanguagePython.sublime-settings

			Inoltre, alcuni file di impostazioni si applicano solo a piattaforme specifiche. Questo può essere dedotto dai nomi dei file, ad esempio . I nomi validi per la piattaforma sono , , .Preferences ({platform}).sublime-settingsWindowsLinuxOSX

			Questo è importante: i file di impostazioni specifici della piattaforma nella cartella vengono ignorati. In questo modo, puoi essere sicuro di un singolo Il file delle impostazioni sostituisce tutti gli altri.
			   Packages/User

			Le modifiche alle impostazioni vengono solitamente aggiornate in tempo reale, ma potrebbe essere necessario riavviare Sublime Text per caricare nuovi file di impostazioni.

		 Come accedere e modificare i file delle impostazioni comuni
			A meno che tu non abbia bisogno di un controllo granulare sulle impostazioni, puoi accedere i principali file di configurazione tramite le 
			   Preferenze | Impostazioni- Utente e 
			   preferenze | Impostazioni 
			   - Altre voci di menu. Modifica delle preferenze | Impostazioni 

			- L'impostazione predefinita è sconsigliata, perché le modifiche verrà ripristinato con ogni aggiornamento del software. Tuttavia, è possibile utilizzare Quel file di riferimento: contiene commenti che spiegano lo scopo di Tutte le impostazioni globali e del tipo di file disponibili.

		 Ordine di precedenza dei file.sublime-settings
			   Lo stesso file di impostazioni (ad esempio ) può essere visualizzato in più luoghi. Tutte le impostazioni definite in file con nomi identicic saranno uniti insieme e sovrascritti secondo regole predefinite. Per ulteriori informazioni, vedere .Python.sublime-settingsmerging-and-order-of-precedence

			   Ricordiamo ancora una volta che ogni dato FILE DI IMPOSTAZIONI IN DEFINITIVA SOVRASCRIVE ogni altro file di impostazioni con lo stesso nome.Packages/User

			   Oltre ai file di impostazioni, Sublime Text mantiene i dati di sessione, che sono configurazione per il particolare set di file attualmente in fase di modifica. Sessione I dati vengono aggiornati man mano che si lavora sui file, quindi se si regolano le impostazioni per un particolare file in qualsiasi modo (principalmente tramite chiamate API), verranno registrati nella sessione e avrà la precedenza su qualsiasi file applicabile..sublime-settings

			   Per verificare il valore di un'impostazione per un determinato file in fase di modifica, utilizzare dalla console.view.settings().get("setting_name")

			   Infine, vale anche la pena notare che alcune impostazioni potrebbero essere automaticamente adattato per te. Tienilo a mente se sei perplesso su alcuni valore dell'impostazione. Ad esempio, questo è il caso di alcuni Impostazioni relative agli spazi vuoti e impostazione.syntax

			   Di seguito, puoi vedere l'ordine in cui Sublime Text elaborerebbe un gerarchia ipotetica delle impostazioni per i file Python su Windows:

						Packages/Default/Preferences.sublime-settings
						Packages/Default/Preferences (Windows).sublime-settings
						Pacchetti/Utente/Preferenze.sublime-impostazioni
						Packages/Python/Python.sublime-settings
						Packages/User/Python.sublime-settings
						Dati di sessione per il file corrente
						Impostazioni regolate automaticamente

		 Impostazioni globali dell'editor e impostazioni globali dei file
			Queste impostazioni sono memorizzate in e file. Le impostazioni predefinite possono essere trovato in:
				  (Le impostazioni GLOBALI sono sia per l'editor e sia per il tipo file)

			Preferences.sublime-settingsPreferences     = impostazion globali DEL FILE PER L'EDITOR
			Preferences ({platform}).sublime-settings   = impostazion globali dell'editor PER LA PIATTAFORMA

			Packages/Default
				  @impostazioni@globali@non.si.trovano??
					 @non.funziona??
			I nomi validi per la piattaforma sono , , .Windows Linux OSX 


		 Impostazioni del tipo di file
			Se si desidera scegliere come destinazione un tipo di file specifico, assegnare al file un nome in base alla definizione della sintassi del tipo di file. Ad esempio, se la nostra sintassi definizione PYTHON è stato chiamato , avremmo bisogno di chiamare il nostro file di impostazioni ..
			   .sublime-settings
			   Python.tmLanguage
			   Python.sublime-settings

			I file di impostazioni per tipi di file specifici di solito vivono in pacchetti, come Python, ma ci possono essere più file di impostazioni in separati posizioni per lo stesso tipo di file.Packages/Python
				  @file@di@impostazioni.in@Python

			FILE IMPOSTAZIONI GLOBALI PER PYTHON
			Analogamente alle impostazioni globali, è possibile stabilire una piattaforma specifica per Impostazioni per i tipi di file. Ad esempio, verrebbe consultato solo sotto Linux.Python (Linux).sublime-settings

			Inoltre, sottolineiamo che solo sotto verrebbe letto, ma non qualsiasi variante.Packages/UserPython.sublime-settingsPython ({platform}).sublime-settings

			IMPOSTAZIONI SPECIFICHE HANNO LA PRECEDENZA SULLE GLOBALI = Indipendentemente dalla sua posizione, qualsiasi file di impostazioni specifiche del tipo di file ha Precedenza su un file di impostazioni globali che influisce sui tipi di file.

		 La gerarchia delle impostazioni
			Di seguito, puoi vedere le fonti di impostazioni esaustive che Sublime Text elaborerebbe per i file Python su Windows. Come sempre, le specifiche successive sostituiscono quelle precedenti.

			   Impostazioni globali
				  Packages/Default/Preferences.sublime-settings
				  Packages/Default/Preferences (Windows).sublime-settings
				  Packages/AnyOtherPackage/Preferences.sublime-settings
				  Packages/AnyOtherPackage/Preferences (Windows).sublime-settings
				  Packages/User/Preferences.sublime-settings

			   Impostazioni dal progetto corrente

			   Impostazioni specifiche della sintassi
				  Packages/Python/Python.sublime-settings
				  Packages/Python/Python (Windows).sublime-settings
				  Packages/User/Python.sublime-settings

			   Dati di sessione per il file corrente (impostazioni specifiche della visualizzazione)

			   Impostazioni regolate automaticamente

			   Si noti che i file delle impostazioni possono anche apparire nelle sottodirectory dei pacchetti, che sono stati esclusi per brevità.

		 Dove memorizzare le impostazioni utente (ancora una volta)
			   Ogni volta che si desidera salvare le impostazioni, soprattutto se dovrebbero essere conservato tra gli aggiornamenti software, inserire il file corrispondente in ..sublime-settingsPackages/User
				  @DOVE@SALVARE@LE@IMPOSTAZIONI@UTENTE
	  4.1.3.Associazione Tasti
		 Formato file
			Le associazioni di chiavi sono definite in JSON e memorizzati in file..
				  sublime-keymap
			Nello stesso pacchetto, file keymap separati per Linux, OSX e Windows può esistere per una migliore integrazione del sistema operativo.   @come@fare@associazioni@chiavi
								 @esempio.di@associazioni@tasti

								 @KEY@apri@new@windows @key@open@file
				  (questo esempio di associazione è stato inserito nel file keymap)
			   [
				  { "keys": ["ctrl+shift+n"], "command": "new_window" },
				  { "keys": ["ctrl+o"], "command": "prompt_open_file" }
			   ]
		 Definizione e sostituzione delle associazioni di tasti
		 
			Sublime Text viene fornito con associazioni di tasti predefinite (ad esempio, . Per eseguire l'override delle associazioni di tasti predefinite o aggiungerne di nuovi, Utilizzare un file keymap separato con precedenza superiore: Per esempio.
				  Packages/Default/Default (Windows).sublime-keymap)       =dovrebbe essere con precedenza superiore
				  Packages/User/Default (Windows).sublime-keymap

		 Associazioni avanzate dei tasti

			Le associazioni di tasti semplici sono costituite da di una sequenza di una o più chiavi mappate a un comando. 
			Tuttavia, ci sono sintassi più complesse per passare argomenti ai comandi e Limitazione delle associazioni dei tasti a contesti specifici.

			   Passaggio di argomenti
					 Usa la chiave Per specificare gli argomenti:args
						(Esempio di associazione complessa CON LA QUALE viene associato al due comandi l'inserimento
						 di tre new lineq @esempio@associazione@complessa@passaggio@argomenti)
						la chiave   = shift+enter
						comand      = inserisce l'arghomento passato con arg ossia ----> \n

						   { "keys": ["shift+enter"], "command": "insert", "args": {"characters": "\n"} }

			   Contesti
				  I contesti determinano Se una determinata ASSOCIAZIONE DI CHIAVI È ABILITATA in base alla posizione del caret o qualche altro stato.
						esempio di contesto:             @da@comprendere

						   { "keys": ["escape"], "command": "clear_fields", "context":
								 [
									{ "key": "has_next_field", "operator": "equal", "operand": true }
								 ]
							  }

				  Questa associazione di tasti si traduce in :
						cancellare i campi dei frammenti e 
						riprendere la normale modifica se è disponibile un campo frammento successivo. 
				  Pertanto, premendo Esc sarà solo Attiva questa associazione di tasti se stai pedalando attraverso i campi di frammenti.

				  La stessa associazione di tasti può essere mappato a più contesti, Quindi una singola sequenza di pressioni di tasti può produrre risultati diversi in momenti diversi.

			   Accordi chiave
					 @accordi@chiave@esempio
					 @associazione@composta.da.piu.chiavi

				  È possibile creare associazioni di tasti composto da più chiavi. (unisce ctr+k e ctr+v)
						{ "keys": ["ctrl+k", "ctrl+v"], "command": "paste_from_history" }
							  @non@attivato

				  Qui, per attivare il comando , devi prima premere Ctrl K, quindi rilasciare K, e infine premere V.paste_from_history

						Nota: questo esempio è un'associazione di chiavi predefinita, Quindi puoi provarlo tu stesso.

	  4.1.4.Menu
			Sublime Text offre diversi menu che può essere modificato, Ad esempio, aggiungendo voci di menu.
				@dove.si.trova.il.menu Main.sublime-menu
				@file@menu
					(apri preferences e ricerca main.sublime-menu SI APRIRA IL FILE DEI MENU)
				@dove@si@trovano@i@menu
						menu si trovano qui:
							C:\Users\walter.rossi\AppData\Roaming\Sublime Text\Packages\Terminal
								Context.sublime-menu
								Main.sublime-menu
								Side Bar.sublime-menu

		 Formato file
				  Formato                                Descrizione
				  Formato                             JSON (con commenti)
				  Estensione                             .sublime-menu
				  Nome                             	Uno dalla lista dei menu disponibili. Vedere i tipi di menu per l'elenco
				   									completo dei nomi e il menu rappresentato da ciascun nome.
				  Ubicazione                       Qualsiasi sotto Packages
				  Contenuto                        Un elenco di menu-items

			   Esempio
			Quello che segue è un estratto dal file predefinito.Main.sublime-menu


				  [
					  {
						  "caption": "Edit",
						  "mnemonic": "E",
						  "id": "edit",
						  "children":
						  [
							  { "command": "undo", "mnemonic": "U" },
							  { "command": "redo_or_repeat", "mnemonic": "R" },
							  {
								  "caption": "Undo Selection",
								  "children":
								  [
									  { "command": "soft_undo" },
									  { "command": "soft_redo" }
								  ]
							  },
							  { "caption": "-", "id": "clipboard" },
							  { "command": "copy", "mnemonic": "C" },
							  { "command": "cut", "mnemonic": "t" },
							  { "command": "paste", "mnemonic": "P" },
							  { "command": "paste_and_indent", "mnemonic": "I" },
							  { "command": "paste_from_history", "caption": "Paste from History" }
						  ]
					  }
				  ]

		 Menù disponibili
			Il nome del file di un file Specifica il menu da modificare nell'applicazione.
				.sublime-menu
			Sono disponibili i seguenti menu:
					Nome file/menu                              Descrizione
					Principale                                  Menu principale
					Contesto                                    Menu contestuale nell'area di modifica
					Trova nei file                              Viene visualizzato quando si fa clic sul pulsante "..." nel 
																pannello Trova nei file.
					Barra laterale                              Menu contestuale per ogni nodo nella barra laterale
					Punto di montaggio della barra laterale     Voci aggiuntive del menu contestuale per i nodi di primo 
																livello nella barra laterale
					Contesto della scheda                       Menu di scelta rapida della barra delle schede
					Contesto del widget                         Menu contestuale dei campi di input in tutti i tipi di
																widget, tra cui Command Palette, Goto Anything, i pannelli Trova e i pannelli aperti dai plugin

			Inoltre Si aprono i seguenti quattro menu quando fai clic sulla rispettiva sezione Nella barra di stato:
			Codifica
			Terminazioni di riga
			Indentazione
			Sintassi

		Voci di menu
			Se selezionato, Una voce di menu può invocare un comando (con argomenti), oppure apri un sottomenu.
			Gli immobili disponibili sono:
				un nome di comando,
				argomenti per il comando,
				un documento d'identità,
				una didascalia,
				un mnemonico e
				un sottomenu.
			Per funzionare correttamente, Una voce di menu deve fornire almeno:
				un nome di comando,
				una didascalia e un sottomenu,
				solo una didascalia, o
				un ID (vedi sotto).
			Quando si analizza una voce di menu, Si applicano le seguenti regole:

				Una voce di menu con un sottomenu Impossibile richiamare un comando. Se viene utilizzata la didascalia del separatore, Verrà reso come un trattino letterale.

				Se non viene fornita alcuna didascalia, viene dedotta una didascalia dal metodo del comando. Se non vengono forniti né didascalie né comandi, La didascalia sarà una stringa vuota.description

				Il carattere utilizzato per il mnemonico deve essere contenuto nella didascalia dell'elemento. I mnemonici fanno distinzione tra maiuscole e minuscole.

				Menu che fanno riferimento ai comandi mancanti sono disabilitati.

				Le voci di menu possono essere nascoste o disabilitate dal loro comando di riferimento.

			Separatori

				I separatori sono voci di menu con la didascalia e nessun sottomenu. Sono comunemente usati Per raggruppare voci di menu con uno scopo simile o che sono altrimenti correlati. I separatori non possono richiamare comandi. La presenza di un sottomenu provoca il separatore di menu da rendere come elemento normale con un solo trattino come didascalia.-

				I separatori multipli consecutivi sono ridotti a uno, e separatori all'inizio o alla fine di un menu non vengono visualizzati.

			Unione di menu
				.sublime-menu I file vengono caricati nello stesso ordine dei pacchetti. I file di menu con lo stesso nome sono concatenati, a meno che non vengano specificati gli ID (vedi sotto).

				File di menu nello stesso pacchetto vengono caricati in ordine lessicografico a partire dalla cartella principale, e quindi attraversando le sottocartelle nello stesso modo.

				Come caso speciale, voci di menu del pacchetto Utente dichiarato nella sezione standard senza ID di un menu vengono sempre inseriti dopo eventuali elementi standard da altri pacchetti.


			ID articolo
				Quando una voce di menu specifica un ID, Viene cercata una sezione separata all'interno del menu e, se non esiste, creato alla fine del menu. Questa ricerca dell'ID è solo in corso.

				L'ID determina il nome della sezione, e la voce di menu con l'ID corrispondente sarà il primo elemento di questa sezione. Tutti i seguenti elementi nel file verrà quindi aggiunto alla sezione dell'ID, fino a quando non viene trovato un altro elemento con un ID.

				Se due voci di menu da file diversi fare riferimento allo stesso elemento tramite ID, Sublime Text sovrascriverà i parametri precedenti dell'elemento con i nuovi parametri, se ce ne sono. Gli elementi figlio estendono il sottomenu. Tutti i seguenti elementi vengono quindi aggiunti alla sezione dell'ID, fino a quando non viene trovato un altro elemento con un ID..sublime-menu

				È pratica comune per assegnare ID ai separatori e le voci aventi un sottomenu, in modo che altri pacchetti o l'utente stesso può facilmente personalizzare il menu. Ciò consente di aggiungere elementi alle sezioni introdotte dai separatori e aggiungendo elementi ai sottomenu.

					Nota

					A causa della rigorosa ricerca in avanti, è possibile avere più voci diverse con lo stesso ID in un unico menu. A causa della potenziale confusione che ciò può causare, è scoraggiato.

					Esempio: I seguenti tre ID sono definiti in un menu, nell'ordine seguente: .test, test2, test

					L'elemento con il secondo ID "test" può quindi essere mirato utilizzando le seguenti combinazioni di ID: ; o.test, test2, testtest, testtest2, test

				Sottomenu
					Ogni voce di menu può avere un sottomenu. Passare il puntatore del mouse su una voce di menu con un sottomenu rivelerà gli elementi raggruppati sotto di esso. I sottomenu sono menu indipendenti con la propria gerarchia di ID.

					Per estendere un sottomenu da un file di menu diverso, è necessario specificare un documento d'identità in entrambi i luoghi per scegliere come target l'elemento corretto.

				Il menu principale
					A differenza di tutti gli altri menu, il menu principale del menu principale rappresenta le voci di menu nella barra dei menu (File, Aiuto, ecc.).

				Interfaccia per i comandi
					Una voce di menu può essere dinamicamente
						nascosto							= is_visible
						disabilitare						= is_enabled
						controllato, o 						= is_checked
						assegnato un titolo diverso. 		= description

				Per questo I comandi devono implementare i metodi richiesti nella loro classe. Ogni metodo implementato verrà chiamato con gli argomenti specificati nella voce di menu corrispondente. Se la chiamata non riesce, Il metodo verrà immediatamente richiamato senza argomenti.
						is_visible
						is_enabled
						is_checked
						description
				Alcuni di questi metodi hanno anche un'influenza sulla tavolozza dei comandi.
						Vedi anche
						Documentazione API ufficiale sull'interfaccia di comando(apre una nuova finestra)
							https://www.sublimetext.com/docs/api_reference.html#sublime_plugin.ApplicationCommand

				Menu contestuali nella barra laterale
						Menu Barra laterale e Punto di montaggio barra laterale sono diversi dagli altri menu in quanto forniscono informazioni contestuali relative agli articoli selezionati. Le directory e i file selezionati vengono passati come elenco al comando specificato in una discussione.files

	  4.1.5.Combinazione Colori
	  			NOTE
	  				Sublime Text utilizza combinazioni di colori Per evidenziare il codice sorgente e per definire i colori di alcuni elementi nell'area di modifica: 
	  								@colori@sfondo@primo.piano@grondaia@caret@selezione
	  								@colori@selezione
	  					sfondo, 
	  					primo piano, 
	  					grondaia, 
	  					caret, 
	  					selezione...

					Le combinazioni di colori sono completamente personalizzabili.

					Diamo un'occhiata a un file Python come sottolinea Sublime Text utilizzando la combinazione di colori predefinita Monokai:

				Selezione di una combinazione di colori
					È possibile modificare la COMBINAZIONE DI COLORI CORRENTE tramite il menu Preferenze → Combinazione di colori.
						@Sublime@Text@Colori_(modificare la @combinazione di colori @corrente)
						

					Un modo comune di selezionare una combinazione di colori è associandolo a un tipo di file utilizzando impostazioni specifiche del tipo di file. 
						@Sublime@Text@associata@Colori_(@combinazione di colori @associata al @singolo@file)


						 Preferences → Settings - Syntax Specific
						 Selezionare Preferenze → Impostazioni - Sintassi specifica 
						 	@impostare.i.colori@Settings@Syntax-Specific

					per aprire il file delle impostazioni corrispondente e impostare l'impostazione.color_scheme

					Per ulteriori informazioni sulle impostazioni, vedere impostazioni.
							Vedi anche
							Documentazione ufficiale per le combinazioni di colori(apre una nuova finestra)
							Riferimento completo sulle impostazioni della combinazione di colori.
									https://www.sublimetext.com/docs/color_schemes.html
									@api@colori@personalizzati

														
														@come@modificare@la@selzione
														@monokai@modifica@impostazioni@user

							  	/* COME MODIFICARE IL FILE DI SCHEMA DEL THEMA MONOKAI
					        		Per recuperare il file occorre far riferimento alla seguente directory e file:
					        		C:\Users\walter.rossi\AppData\Roaming\Sublime Text\Packages\User
					        		Monokai.sublime-color-scheme

					        		1  Aprire il file Monokai.sublime-color-scheme nella directory User
					        		2  impostare i colori es. "name": "Comment" = SONO I COMMENTI   */

					        		Per aprire il file occorre attivare il menu
					        			Preference -----> Browse Package 
					        				selezionare il file nella path ed aprilo

   5.0.ESTENDIBILITA ED AUTOMAZIONE
	  5.1.1.Estensione di testo sublime
	  5.1.2.Tavolozza dei comandi
	  5.1.3.Comandi
	  5.1.4.Completamenti
	  5.1.5.Macro
	  5.1.6.Pacchetti
	  5.1.7.Plug in
	  5.1.8.Gestoridi Imput
	  5.1.9.Frammenti
	  5.1.10.Definizione della sintassi ???finre



 