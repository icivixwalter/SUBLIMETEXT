path_progetto
	c:\CASA\LINGUAGGI\SUBLIMETEXT\
		@path@progetto_(la path del progetto il MIO PROGETTO SU SUBLIMETEX)

	  		//@DOVE@SI@TROVANO.I@PROGETTI   
        //@TUTTI.I.PROGETTI_(tutti i progetti Dos, React, SublimeTex, Java, C++, Powershell ecc.)
	    	//----------------------------------------------------------------------------------------//
		
			Se vuoi trovare tutti progetti devi aprire la path in cui c'e il riepilo di tutti i progetti
			quali il DOS, PAWERSHELL, REACT ecc..

			Per aprire questa cartella fare riferimento a queste chiavi di ricerca:
		
			Questo è il progetto di TUTTI@PROGETTI 
			TROVA_PROGETTI.MD
			@TUTTI@I@PROGETTI_(questo è il file contiene i riferimenti a tutti progetti)
			
			Apro il progetto con TUTTI i progetti con il DOS
			Invoke-Item "c:\\CASA\\LINGUAGGI\\TROVA_PROGETTI\\TROVA_PROGETTI.sublime-project"
			
			Apro tutti i progetti con powershell
			START "apri il progetto dei comandi di TUTTI@PROGETTI" "c:\\CASA\\LINGUAGGI\\TROVA_PROGETTI\\TROVA_PROGETTI.sublime-project"


			@APRI@github_(apri GITHUB DI SUBLIMETEXT sia in dos che in pawershell)_@repository@apri

				@Start@Trova@Progetti_(apri github in trova progetti in dos e powershell )
				
				Start-Process "https://github.com/icivixwalter/SUBLIMETEXT"
				start https://github.com/icivixwalter/SUBLIMETEXT

			
			//----------------------------------------------------------------------------------------//



HELP_SUBLIMETEXT
   A		ASSOCIAZIONE TASTI
				Associazioni di tasti
				Per creare associazioni di tasti personalizzate, vai su Preferenze > Associazioni di tasti e modifica il lato destro, ad esempio inserendo quanto segue:
				
				/* Markdown */
				// Render Markdown in browser
				{ "keys": ["shift+alt+m"], "command": "markdown_preview", "args": {"target": "browser", "parser": "markdown"} },
				// Overwrite MardownEditing's key bindings
				{ "keys": ["ctrl+1"], "command": "focus_group", "args": { "group": 0 } },
				{ "keys": ["ctrl+2"], "command": "focus_group", "args": { "group": 1 } },
				{ "keys": ["ctrl+3"], "command": "focus_group", "args": { "group": 2 } },
				{ "keys": ["ctrl+4"], "command": "focus_group", "args": { "group": 3 } },
				{ "keys": ["ctrl+5"], "command": "focus_group", "args": { "group": 4 } },
						@ctrl+@focus_(comando focus del gruppo ma cosa ?????)

				Il primo binding di tasti creato sopra è "Shift-Alt-M" che, quando attivato mentre un file Markdown è aperto e a fuoco (cioè il tuo cursore è nel file Markdown, non in un file diverso che è aperto), renderà quel file e lo visualizzerà nel tuo browser
				Le altre cinque associazioni chiave create sopra sostituiscono semplicemente il conflitto creato dal pacchetto MarkdownEditing
				Il formattatore della tabella Markdown utilizza "Maiusc + Ctrl + Alt + T"
		APRI FILE ESTERNO

			   Per aprire il file esterno occorre utilizzare questo formato:
					 [""] = inserire testo
					 ()   = link del file da aprire
			   La visualizzazione in html permettera l'apertura del lik creato.  
					 ["esempio di apertura apri libro NEL BROWSER HTML con ctrl+b"](C:\CASA\LINGUAGGI\INGLESE\ENGLISH_TUTORIAL\ENGLISH.MD)

						@APRI@FILE.ESTERNO  @LINK@FILE        
   C
		
		COMMAND 
			Note
				Quando la viene attivata la modalita COMMAND significa che viene la modalita
				VI = VINTAGE - Per ritornare alla modalita di Sublime Text. La modalita Vintage
				è piu veloce

				https://coderwall.com/p/8g1new/vi-mode-in-sublime-text
			
			caret
			Note
				??
		CAMBIARE IL COLORE DELLO SFONDO
				Preferences
						Select Color Scheme
								scegliere uno degli sfondi previsti..
								Celeste, Mariana, Monokai ecc..
		CAMBIARE IL COLORE DELLA SELEZIONE
				Bisogna installare un package control eseguendo queste operazioni:
				  @cambiare.il@colore.della@selezione
				  @colore@selezione @testo@selezionato

				  vai al MENU
				  	1 

				  	PREFERENCES---->  package Control
				
						scrivere per scaricare il
								package Control
						
						installare il package control
										
						Ctrl + P e scrivere
								Package controll Install package 
						
						Ctrl + P e selezionare
								PackageResouceViewer
								
						Ctrl + P e selezionare
								per selezioanre il package delle risorse scrivere solo PRV:                          
								prv = PackageResouceViewer

						Ctrl + P e selezionare

								poi selezione
								OpenResourceView

						TESTO SELEZIONATO = PER CAMBIARE LE IMPOSTAZIONI personali della selezione testo che si trovano nella cartella USER e per il tipo di schema colori, come ad esempio per lo schema Monokai bisogna aprire il file con lo stesso nome ma salvato nella directory User,
						Monokai.sublime-color-scheme e cambiare o aggiungere alle variabili globali il colore
						scelto con la variabile selection_foreground.

								@vedi--->@cambia@selezione@testo@selection_foreground
											@CAMBIA@COLORE@TESTO@SELEZIONATO


								poi selezioner
								OpenResourceView
				//commenti
				APERTURA VELOCE CAMBIO COLORI DI SELEZIONE TESTO
					Preferences--->
						cancella tutto e scrivere
						PackageResourceView ----> 
								Page controll ---->
								Open Resource  ---->  
										Color-Scheme-default -----> Monokai.sublime-color-scheme
		CTRL+K,CTRL+1
					@ctrl+k@ctrl+1_(comando di apertura delle cartelle e sub cartelle)  
					@ctrl+k@ctrl+n
						v.d.---> @menu@edit_(vedi menu edit)

			comando di apertura e chiusura dei livelli
								@ctrl+k@ctrl+n_(comando chiusura livelli)
				ELENCO-COMANDI_CTRL+K+N
					CTRL+K+N
						COMANDI DI APERTURA E CHIUSURA DEI LIVELLI --> CTRL+K E CTRL+N
						Sono i comandi di apertura e chiusura dei livelli con il comando ed il parametro
						command : fold_by_level
						args	: n	

						si trova nella directory USER con il file DI TIPO .sublime-keymap

						C:\Users\icivi\AppData\Roaming\Sublime Text\Packages\User
						Default (Windows).sublime-keymap

						COMANDI E CHIAVI 
						
						{ "keys": ["ctrl+k", "ctrl+1"], "command": "fold_by_level", "args": {"level": 1} },
						{ "keys": ["ctrl+k", "ctrl+2"], "command": "fold_by_level", "args": {"level": 2} },
						{ "keys": ["ctrl+k", "ctrl+3"], "command": "fold_by_level", "args": {"level": 3} },
						{ "keys": ["ctrl+k", "ctrl+4"], "command": "fold_by_level", "args": {"level": 4} },
						{ "keys": ["ctrl+k", "ctrl+5"], "command": "fold_by_level", "args": {"level": 5} },
						{ "keys": ["ctrl+k", "ctrl+6"], "command": "fold_by_level", "args": {"level": 6} },
						{ "keys": ["ctrl+k", "ctrl+7"], "command": "fold_by_level", "args": {"level": 7} },
						{ "keys": ["ctrl+k", "ctrl+8"], "command": "fold_by_level", "args": {"level": 8} },
						{ "keys": ["ctrl+k", "ctrl+9"], "command": "fold_by_level", "args": {"level": 9} },
						{ "keys": ["ctrl+k", "ctrl+0"], "command": "unfold_all" },
						{ "keys": ["ctrl+k", "ctrl+j"], "command": "unfold_all" },
						{ "keys": ["ctrl+k", "ctrl+t"], "command": "fold_tag_attributes" },
						
						

   K
	   Default Key Bindings
											https://rowannicholls.github.io/sublime_text/key_bindings.html
		   @KEY@chiavi
			Azioni
	  		Action                     macOS                         Windows & Linux         Same?
	  		Next tab in group          Ctrl+PgDn or Alt+Cmd+Right    Ctrl+PgDn               Yes
	  		Previous tab in group      Ctrl+PgUp or Alt+Cmd+Left     Ctrl+PgUp               Yes
	  		Go to file in project      Cmd+P or Cmd+T Ctrl+P         Cmd/Ctrl                swap
	  		Go to text in file         Cmd+R Ctrl+R                  Cmd/Ctrl                swap
	  		Open file                  Cmd+O Ctrl+O                  Cmd/Ctrl                swap
	  		New tab                    Cmd+N Ctrl+N                  Cmd/Ctrl                swap
	  		Close tab                  Cmd+W Ctrl+W                  Cmd/Ctrl                swap
	  		Re-open last closed        Shift+Cmd+T                   Shift+Ctrl+T            Cmd/Ctrl swap
	  		Command palette            Shift+Cmd+P                   Shift+Ctrl+P            Cmd/Ctrl swap
	  		Quick switch project       Ctrl+Cmd+P                    Ctrl+Alt+P              No
	  		Cursor to end of line      Cmd+Right                     End                     No
	  		Cursor to start of line    Cmd+Left                      Home                    No
	  		Cursor to end of file      Cmd+Up or End (Fn+Right)      Ctrl+End                No
	  		Cursor to start of file    Cmd+Down or Home (Fn+Left)    Ctrl+Home               No
	  		Cursor to end of word      Alt+Right                     Ctrl+Right              No
	  		Cursor to start of word    Alt+Left                      Ctrl+Left               No
	  		Cursor to end of subword   Doesn’t work                  Alt+Right               No
	  		Cursor to start of subword Doesn’t work                  Alt+Left                No
	  		Swap lines                 Ctrl+Cmd+Up/Down     
	  		Focus on group             Ctrl+1/2/3/4                  Ctrl+1/2/3/4            Yes
	  		Move tab to group          Ctrl+Shift+1/2/3/4            Ctrl+Shift+1/2/3/4      Yes
	  		Number of groups           Doesn’t work                  Shift+Alt+1/2/3/4/5     No
	  		Scroll page down           PgDn (Fn+Down)                PgDn                    Yes
	  		Scroll page up             PgUp (Fn+Up)                  PgUp                    Yes
	  		Save                       Cmd+S Ctrl+S                  Cmd/Ctrl                swap
	  		Save all                   Alt+Cmd+S                     None                    No
	  		Undo                       Cmd+Z Ctrl+Z                  Cmd/Ctrl                swap
	  		Redo                       Shift+Cmd+Z                   Ctrl+Y                  No
	  		Find and Replace           Alt+Cmd+F                     Ctrl+H                  No
	  		Toggle side bar            Cmd+K, Cmd+B                  Ctrl+K, Ctrl+B Cmd/Ctrl swap
	  		Toggle spell check         F6 (Fn+F6)                    F6                      Yes
	  		Toggle full screen         Ctrl+Cmd+F                    F11                     No
	  		Indent                     Cmd+[ Ctrl+[                  Cmd/Ctrl                swap
	  		Outdent                    Cmd+] Ctrl+]                  Cmd/Ctrl                swap
	  		Select next instance       Cmd+D Ctrl+D                  Cmd/Ctrl                swap

  			General key mapping
	  		The following are general key mappings on a Mac keyboard:
			 Key                        Mac keyboard mapping
			 PgUp                       Fn+Up
			 PgDn                       Fn+Down
			 Home                       Fn+Left
			 End                        Fn+Right
			 Delete                     Fn+Back
	   
	   	Le Associazioni Tasti dei pacchetti
				  The following are key bindings created by certain packages:
				  Di seguito sono le associazioni di tasti create da determinati pacchetti:

					
						  Package                       Action                           macOS            windows & Linux
						  SublimeREPL                   Run current Python file          Ctrl+Alt+P        Ctrl+Alt+P
						  Markdown Table Formatter      Align columns in Markdown tables Shift+Ctrl+Alt+T  Shift+Ctrl+Alt+T
		 
	  		Custom Key Bindings
   
		 This section details the custom key bindings I use in my Sublime Text
		 To create custom key bindings, go to Preferences > Key Bindings and edit the right-hand-side
		 It’s worthwhile creating a backup of this file (Default.sublime-keymap). Then, when you next install Sublime Text on a new computer, you can just paste these key bindings in.
		 
		 
		 Questa sezione descrive in dettaglio le combinazioni di tasti personalizzate che utilizzo nel mio Sublime Text
		 Per creare associazioni di tasti personalizzate, vai su Preferenze > Associazioni di tasti e modifica il lato destro
		 Vale la pena creare un backup di questo file (Default.sublime-keymap). Quindi, quando installerai Sublime Text su un nuovo computer, puoi semplicemente incollare queste associazioni di tasti.
			@associazioni@tasti@personalizzate@default
		 
			Associazioni Tasti keymap 
		 
				 Package           Action                     macOS, Windows & Linux
				 None              Save all open files        Ctrl+Alt+S
				 MarkdownPreview   Render Markdown            Shift+Alt+M
				 SublimeREPL       Run Python in SublimeREPL  Shift+Ctrl+Alt+P
				 None              Run Python in Build System Shift+Alt+P
				 LatexTools        Run Latex                  Shift+Alt+L
				 None              Run R                      Shift+Alt+R
				 None              Run R Markdown             Shift+Alt+D
				 None              Run Bash                   Shift+Alt+B
				 Terminus          Open terminal here         Shift+Alt+T
				 Pretty JSON       Make JSON more readable    Ctrl+Alt+J
				 
			Here’s my Default.sublime-keymap file that implements the above key bindings:
			Ecco il mio file Default.sublime-keymap che implementa le combinazioni di tasti di cui sopra:
			modello
			[
				// Save all
				{ "keys": ["ctrl+alt+s"], "command": "save_all" },
				
				/* Markdown */
				// Render Markdown in browser
				{ "keys": ["shift+alt+m"], "command": "markdown_preview", "args": {"target": "browser", "parser": "markdown"} },
				// Overwrite MardownEditing's key bindings
				{ "keys": ["ctrl+1"], "command": "focus_group", "args": { "group": 0 } },
				{ "keys": ["ctrl+2"], "command": "focus_group", "args": { "group": 1 } },
				{ "keys": ["ctrl+3"], "command": "focus_group", "args": { "group": 2 } },
				{ "keys": ["ctrl+4"], "command": "focus_group", "args": { "group": 3 } },
				{ "keys": ["ctrl+5"], "command": "focus_group", "args": { "group": 4 } },
				
				/* Python */
				// Python in SublimeREPL
				{
					"keys": ["shift+ctrl+alt+p"], "command": "run_existing_window_command", "args": {
						"id": "repl_python_run", "file": "config/Python/Main.sublime-menu"
					}
				},
				// Python in Build system
				{
					"keys": ["shift+alt+p"], "command": "build", "args": {
						"build_system": "Packages/User/python3.sublime-build", "variant": "", "choice_build_system": true,
						"choice_variant": true
					}
				},
				
				/* Latex */
				{
					"keys": ["shift+alt+l"], "command": "build", "args": {
						"build_system": "Packages/LaTeXTools/LaTeX.sublime-build", "variant": "", "choice_build_system": true,
						"choice_variant": true
					}
				},
				
				/* R */
				// R in Build system
				{
					"keys": ["shift+alt+r"], "command": "build", "args": {
						"build_system": "Packages/User/R.sublime-build", "variant": "", "choice_build_system": true,
						"choice_variant": true
					}
				},
				// R Markdown in Build system
				{
					"keys": ["shift+alt+d"], "command": "build", "args": {
						"build_system": "Packages/User/Rmarkdown.sublime-build", "variant": "", "choice_build_system": true,
						"choice_variant": true
					}
				},
				
				/* Bash */
				// Bash in Build system
				{
					"keys": ["shift+alt+b"], "command": "build", "args": {
						"build_system": "Packages/User/bash.sublime-build", "variant": "", "choice_build_system": true,
						"choice_variant": true
					}
				},
				
				// Termius
				{ "keys": ["shift+alt+t"], "command": "terminus_open", "args": {"cwd": "${file_path:${folder}}"} },
   
				/* Pretty JSON */
				{ "keys": ["ctrl+alt+j"], "command": "pretty_json" }
			]
		 
			Default.sublime-keymap
			
			Use the ‘default’ Default.sublime-keymap file (ie the one the opens up on the left-hand side when you go to Preferences > Key Bindings) to figure out what commands exist and how to re-bind them. Also take a look at the key bindings documentation.
		   
			Usa il file Default.sublime-keymap "predefinito" (ovvero quello che si apre sul lato sinistro quando vai su Preferenze> Associazioni tasti) per capire quali comandi esistono e come riassociarli. Dai anche un'occhiata alla documentazione sui collegamenti dei tasti.
   	

   I  
		IMPOSTAZIONI
				Note
					https://www.sublimetext.com/docs/settings.html

				Impostazioni
					Sublime Text ha molte impostazioni diverse per personalizzare il suo comportamento. Le impostazioni sono modificato modificando i file di testo: mentre questo è un po 'più complicato rispetto all'utilizzo di un GUI, sei ricompensato con un sistema flessibile.

					Le impostazioni sono accessibili tramite la voce di menu 
					Impostazioni--->preferenze. Preferences ---> Settings 
					Il riquadro di sinistra contiene tutte le impostazioni predefinite, insieme a una descrizione di ciascuno. Nel riquadro di destra è possibile salvare la personalizzazione.

					Categorie

					File delle impostazioni

					Impostazioni specifiche della sintassi

					Impostazioni del progetto

					Impostazioni senza distrazioni

					 Modifica delle impostazioni con un'associazione di chiavi

					Risoluzione dei problemi


				Categorie
					Le impostazioni in Sublime Text sono organizzate in tre categorie. L'impostazione predefinita Il file delle impostazioni organizza le impostazioni in sezioni per facilitare la distinzione.

					1 
 Impostazioni editor: queste impostazioni influiscono sul comportamento e sulla funzionalità presentato durante la modifica del testo in un file. Gli esempi includono , e . Queste impostazioni sono presentate nel primo del file delle impostazioni predefinite.font_facetab_sizespell_check
						@EDITOR@IMPOSTAZIONI

					2  
 Impostazioni dell'interfaccia utente: GLOBALI -> queste impostazioni influiscono sull'utente generale , su tutte le finestre aperte. Gli esempi includono , e . Queste impostazioni sono presentato nella seconda sezione del file delle impostazioni predefinite.themeanimation_enabledoverlay_scroll_bars
						@INTERFACCIA@IMPOSTAZIONI
						@impostazioni@interfaccia@utente

					3 
 Impostazioni del comportamento dell'applicazione: GLOBALI -> queste impostazioni influiscono sul comportamento del applicazione, su tutte le finestre aperte. Gli esempi includono , e . Queste impostazioni sono presentate nella Terza sezione del file delle impostazioni predefinite.hot_exitindex_filesignored_packages
						@APPLICAZIONE@IMPOSTAZIONI

					ATTENZIONE
					Le impostazioni dell'interfaccia utente e le impostazioni del comportamento dell'applicazione sono globali per il intera applicazione e non può essere controllata da un file di impostazioni specifiche della sintassi, né la chiave delle impostazioni in un .sublime-project.


					File delle impostazioni
						I file delle impostazioni vengono consultati in questo ordine:

						Packages/Default/Preferences.sublime-settings

						Packages/Default/Preferences (<platform>).sublime-settings

						Pacchetti/Utente/Preferenze.sublime-impostazioni

						<Impostazioni progetto>

						Packages/<syntax>/<syntax>.sublime-settings

						Pacchetti/Utente/<sintassi>.sublime-impostazioni

						<Impostazioni specifiche del buffer>

						In generale, è necessario inserire le impostazioni in Packages/User/Preferences.sublime-settings, che viene aperto nella finestra di dialogo riquadro di destra quando si seleziona la voce di menu Impostazioni preferenze. Se si desidera specificare le impostazioni per un determinato tipo di file, ad esempio Python, si dovrebbe metterli in Packages/User/Python.sublime-settings. Questo può essere accessibile tramite il riquadro di destra quando un file Python è aperto e il menu è selezionata la voce Impostazioni preferenze – Sintassi specifica.

						


					1 
 Impostazioni specifiche della sintassi

						Le impostazioni possono essere specificate in base alla sintassi. Gli usi comuni per questo sono hanno impostazioni di rientro diverse o la combinazione di colori varia in base al tipo di file.

						È possibile modificare le impostazioni per la sintassi del file corrente selezionando la voce di menu Impostazioni preferenze – Sintassi specifica.

						Si noti che solo le impostazioni dell'editor possono essere specificate nelle impostazioni specifiche della sintassi.


							@SINTASSI@IMPOSTAZIONI       @SOLO@FILE@CORRENTE
							@COBALTO@KEY @CHIAVE@COBALTO


					2  
 Impostazioni del progetto
						Le impostazioni possono essere impostate in base al progetto, i dettagli sono nel progetto Documentazione.

						Si noti che solo le impostazioni dell'editor possono essere specificate nelle impostazioni del progetto.

							@IMPOSTAZIONI@PROGETTO
								@MODIFICA@COLORI  @PREFERENZE@PER.TUTTA@L'APPLICAZIONE
								Preferences--->Setting



					3 
 Impostazioni senza distrazioni

						La modalità libera da distrazione ha un file di impostazioni aggiuntivo applicato (Distraction Free.sublime-settings). È possibile inserire il file le impostazioni qui per applicarle solo quando sono in modalità Distraction Free - accesso dalla voce di menu Impostazioni preferenze – Distraction Free.




					Modifica delle impostazioni con un'associazione di chiavi

						Il comando può essere utilizzato per attivare o disattivare un'impostazione. Ad esempio, a creare un'associazione di chiavi che commetta l'impostazione sul file corrente, è possibile utilizzare (in Associazioni tasti preferenze):toggle_settingword_wrap

						{
							"keys": ["alt+w"],
							"command": "toggle_setting",
							"args":
							{
								"setting": "word_wrap"
							}
						}
						Il comando può essere utilizzato per impostare un'impostazione su un valore specifico. Ad esempio, questa associazione di tasti fa sì che il file corrente utilizzi il colore Cobalto schema:set_setting


						Le impostazioni modificate qui sono impostazioni specifiche del buffer: sovrascrivono qualsiasi Le impostazioni vengono inserite in un file di impostazioni, MA SI APPLICANO SOLO AL FILE CORRENTE.


						Risoluzione dei problemi

						Poiché le impostazioni possono essere specificate in diversi luoghi, a volte può essere utile per visualizzare l'impostazione applicata che viene effettivamente utilizzata dalla corrente file. È possibile eseguire questa operazione utilizzando la console:

						view.settings().get('font_face')



						Il comando può essere utilizzato per impostare un'impostazione su un valore specifico. Ad esempio, questa associazione di tasti fa sì che il file corrente utilizzi il colore Cobalto schema:set_setting


						{
							"keys": ["ctrl+k", "ctrl+c"],
							"command": "set_setting",
							"args":
							{
								"setting": "color_scheme",
								"value": "Packages/Color Scheme - Default/Cobalt.tmTheme"
							}
						}
   M
	  MODALITA VINTAGE
							@MODALITA@VINTAGE@VI
							https://www.sublimetext.com/docs/vintage.html
			Vintage è un pacchetto di editing in modalità vi per Sublime Text. Ti permette di combinare La modalità di comando di vi con le funzionalità di Sublime Text, incluse le selezioni multiple.
			
			La modalità vintage è sviluppata all'aperto e le patch sono più che benvenute. Se vuoi contribuire, i dettagli sono nel repository GitHub.
			
			DOCUMENTAZIONE TOPModalità Vintage
			Vintage è un pacchetto di editing in modalità vi per Sublime Text. Ti permette di combinare La modalità di comando di vi con le funzionalità di Sublime Text, incluse le selezioni multiple.
			
			La modalità vintage è sviluppata all'aperto e le patch sono più che benvenute. Se vuoi contribuire, i dettagli sono nel repository GitHub.
				   
			Abilitazione del vintage

			   Vintage è disabilitato per impostazione predefinita, tramite l'impostazione. Se si Rimuovi dall'elenco dei pacchetti ignorati, sarai in grado di modificare Con i tasti VI:ignored_packages"Vintage"
			   
			   Selezionare la voce di menu Impostazioni preferenze ▶
			   
			   Modificare l'impostazione, cambiandola da: a e salvare il file.ignored_packages"ignored_packages": ["Vintage"]"ignored_packages": []
			   
			   La modalità vintage è ora abilitata: vedrai "INSERT MODE" elencato nello stato bar
			   
			   Vintage viene avviato in modalità di inserimento per impostazione predefinita. Questo può essere modificato aggiungendo il Seguente impostazione per le impostazioni utente:
					 "vintage_start_in_command_mode": true
			Cosa è incluso
			   Vintage include la maggior parte delle azioni di base: (elimina), (copia), (modifica), (minuscolo), (maiuscolo), (maiuscole e minuscole), (rot13 
				, (senza rientro) e (rientro).dycgugUg~g?<>

			   Comprende anche molte mozioni, tra cui , , , , , , (spostarsi per sottoparole), (spostarsi all'indietro per sottoparole), , , , , ,lhjkWweEbBalt+walt+W$^%0GggfFtT^f^bHML
			   
			   Sono supportati oggetti di testo, tra cui parole, virgolette, parentesi e tag.
			   
			   Repeat () è presente, così come la specifica dei conteggi per i comandi e Movimenti. I registri sono supportati, così come le macro e i segnalibri. Molti altri Sono supportati anche comandi vari, come e , , , , , e altro ancora..*/nNsS

			Cosa non lo è
			   La modalità di inserimento è la normale modifica del testo Sublime, con il solito tasto Sublime Text Associazioni: le associazioni dei tasti della modalità di inserimento VI non vengono emulate.
			   
			   I comandi Ex non sono implementati, a parte e , che Lavora tramite la tavolozza dei comandi.:w:e


			Sotto il cofano
			   La modalità vintage è implementata interamente tramite associazioni di tasti e l'API del plug-in - feel libero di sfogliare il pacchetto Vintage e vedere come è messo insieme. Come Ad esempio, se si desidera eseguire l'associazione per uscire dalla modalità di inserimento, è possibile aggiungere questo Binding chiave:jj
						@ATTENZIONE@DA.ERRORE l'inserimento???
						{
						   //ESCI DALLA MODALITA DI INSERIMENTO
							"keys": ["j", "j"],
							"command": "exit_insert_mode",
							"context":
							[
								{ "key": "setting.command_mode", "operand": false },
								{ "key": "setting.is_widget", "operand": false }
							]
						}

			Mac
			   Per impostazione predefinita su Mac, tenendo premuto un tasto non lo ripeterà, ma verrà invece visualizzato un menu popup per selezionare tra le varianti di carattere. Questo non funziona bene con modalità di comando, quindi potresti volerlo disabilitare. Questo può essere fatto eseguendo il Di seguito in Terminal.app:
			   
			   defaults write com.sublimetext.2 ApplePressAndHoldEnabled -bool false

			Tasti CTRL
				  
				  Tasti Ctrl
				  Vintage li supporta Ctrl Associazioni chiave:
				  
				  Ctrl+[:Fuga
				  
				  Ctrl+R:Rifare
				  
				  Ctrl+Y: Scorri verso il basso di una riga
				  
				  Ctrl+E: Scorri verso l'alto di una riga
				  
				  Ctrl+F: Pagina giù
				  
				  Ctrl+B: Pagina su
				  
				  Tuttavia, poiché sono in conflitto con altre associazioni di tasti Sublime Text, queste sono disabilitato per impostazione predefinita su Windows e Linux. Possono essere abilitati con l'impostazione:vintage_ctrl_keys 
					 "vintage_ctrl_keys": true

				  VEDERE ANCHE LE ESTENSIONE VINTAGE.              
   P
   	PREFERENZE
		 Attenzione le preferenze si trovano in questo file Preferences.sublime-settings
			aprire
			   Preference ---> Browser Package
				  e trovare il file dentro la cartella User
	 	PAROLE_CHIAVE
			Note
				Tutte le parole chiave di impostazione di sublime text @PAROLE@CHIAVE

		F
			find_selected_text 
				- Quando una parola è evidenziata, trovarne ogni altra istanza nel documento. Lo accendo.
		H
			highlight_line 
				- Aggiunge un colore di evidenziazione alla linea su cui si trova attualmente il cursore.

			hot_exit 
				- Questo riapre le modifiche non salvate quando Sublime si riapre. Preferisco che mi venga chiesto se voglio salvare e scartare le modifiche non salvate la prossima volta che l'app si apre. Lo spengo.
			mini_diff 
				- Disattivo il differenziamento nativo di Git nella barra laterale, perché ho un'estensione Git che preferisco usare invece.
		P
		Q
		R
		S
			show_definitions 
				- Questo mostra un popup di possibili definizioni ogni volta che passi il mouse su una parola. È fonte di distrazione, in particolare durante la condivisione dello schermo, e soprattutto per qualcuno con ADHD. Lo spengo.

			show_git_status 
				- Mostra le informazioni del repository git accanto ai file nella barra laterale e nella barra di stato. Ancora una volta, ho un'estensione che preferisco usare per questo.
		T
			Tab_size
				Per le tabulazioni valide per l'applicazione in generale
					@tabulazioni@file@generali  
					 Preferences--->Settings
				Se vuoi applicare le tabulazioni al singolo file impostarle in 
					 Preferences--->Settings-Sintax Specific
					 @TABULAZIONI@tab

	
			trim_only_modified_white_space 
				- Questo taglierà solo lo spazio bianco al salvataggio per le parti di un file che sono state modificate da te. Lascia questo attivo se lavori con un team, ma per il mio lavoro open source, voglio rimuovere sempre quello spazio bianco. @RIMOZIONE@SPAZIO@BIANCO.PARTE
			trim_trailing_white_space_on_save 
				- Questo rimuove tutto lo spazio bianco finale quando si salva. Sì, sbarazzati di questo 100% delle volte, per favore! @RIMOZIONE@SPAZIO@BIANCO.TUTTO
				- Questo taglierà solo lo spazio bianco al salvataggio per le parti di un file che sono state modificate da te. Lascia questo attivo se lavori con un team, ma per il mio lavoro open source, voglio rimuovere sempre quello spazio bianco.

		W            
			word_wrap 
				- Voglio sempre che il testo vada a capo. Nessuno scorrimento orizzontale per me, anche con il codice sorgente. @RITORNO@A@CAPO
   S
		
	 

				Gli Snippet di Sublime Text
					@snippet
				https://frammentidicodice.com/snippet-di-sublime-text/  
				@open@snippet

				
				Uno snippet di Sublime Text è un file XML con estensione .sublime-snippet che permette di automatizzare operazioni ripetitive.
				
				In pratica, gli snippet di Sublime Text sono dei piccoli blocchi di testo o di codice che possono essere inseriti all’interno dei documenti con 2 clic o con una combinazione di tasti.
				
				Per visualizzare e inserire gli snippet disponibili, basta accedere al menu Tools → Snippets… e si aprirà un pannello come quello mostrato nell’immagine che segue.
						Tools ---> Developer ----> New Snippet



				Creare uno Snippet di Sublime Text

					Tools ---> Developer ----> New Snippet
					Facendo clic su New Snippet…, Sublime Text creerà un nuovo documento aggiungendo automaticamente al suo interno quanto segue:
									<snippet>
									<content><![CDATA[
									Hello, ${1:this} is a ${2:snippet}.
									]]></content>
										<!-- Optional: Set a tabTrigger to define how to trigger the snippet -->
										<!-- <tabTrigger>hello</tabTrigger> -->
										<!-- Optional: Set a scope to limit where the snippet will trigger -->
										<!-- <scope>source.python</scope> -->
									</snippet>
									

							In pratica, ci viene offerto un template da modificare per creare i nostri snippet. Una volta concluse le modifiche, il file andrà salvato con estensione .sublime-snippet all’interno della cartella packages/users di Sublime Text. L’intero codice dello snippet è racchiuso nel tag <snippet>...</snippet>.

							Gli elementi che definiscono il comportamento dello snippet sono:

								Content 
									racchiude il contenuto dello snippet all’interno di un elemento <![CDATA[ ... ]]>
								tabTrigger 
									rappresenta la sequenza di caratteri che attivano lo snippet
								Scope 
									definisce l’ambito nel quale lo snippet è attivo

								Description 
									è la meta descrizione dello snippet, visualizzata nel menu Snippets
								
								La sintassi degli snippet offre anche dei marcatori di campo che, una volta attivato lo snippet, permettono di muoversi all’interno del contenuto con il tasto tab. Una volta inserito il contenuto dello snippet, Sublime Text posizionerà in cursore in corrispondenze del marcatore ${1}. Digitando il tasto tab, il cursore salterà in corrispondenza di ${2}, ${3} e così via.

								Torniamo al contenuto del template:
									Hello, ${1:this} is a ${2:snippet}.

								Il testo posto dopo il carattere : è facoltativo, ma, se selezionato, all’attivazione dello snippet Sublime lo selezionerà automaticamente. Nell’esempio, this sarà selezionato automaticamente all’inserimento del contenuto dello snippet. Digitando il tasto tab, la selezione passerà quindi a snippet.

								Giunti all’ultimo segnaposto, digitando ancora il tasto tab, Sublime tornerà al segnaposto iniziale. Per interrompere la selezione dei campi, è possibile utilizzare il marcatore ${0}.


							Uno snippet per inserire gli attributi di un tag <a>

								Capita spesso che, lavorando su un file HTML, si debbano aggiungere ai link una serie di attributi sempre uguali, come ad esempio:

									target="_blank" rel="noopener noreferrer"

							








		SideBar Enhancements
				Note
				  Questo plugin estende le funzionalità della sidebar. Di default, tramite tasto destro su file e cartelle, non è possibile fare granché. Il plugin aggiunge una serie di comandi utili per velocizzare le classiche operazioni sui file.
					  @estensione@gestione@file  @windows@file@gestione
   T
		TEMI
		
		MONOKAI EXTENDED
			Per utilizzare il tema predefinito di Sublime con la combinazione di colori Sublime MONOKAI Extended. Ho sia opzioni chiare che scure, entrambe con un grande. Uso Menlo come faccia del mio carattere. Ho anche aumentato la dimensione del carattere fino a , e ho aggiunto un po 'di riempimento delle linee per rendere il codice più spazioso e facile da scansionare.15
				https://gomakethings.com/my-sublime-text-setup-for-front-end-web-development/
					OK_INCLUSA

					???DOVE SI DEVE INCLUDERE

					 {
						"font_face": "Menlo",
						"font_size": 15.0,
						"line_padding_bottom": 1,
						"line_padding_top": 1
					}	
						
			Pacchetti ed estensioni #	

				DocBlockr 
					automatizza l'aggiunta di commenti in stile DocBlockr (JSDoc, PHPDoc, ecc.) a una tonnellata di lingue. Digiti e premi il tasto e aggiunge automaticamente un sacco di informazioni per te./**return
						https://github.com/spadgos/sublime-jsdocs
							OK_INCLUSA

				BracketHighligher 
					evidenzia la parentesi di apertura o di chiusura ogni volta che si posiziona il cursore sul partner. Questo è davvero utile quando si lavora con blocchi di codice più grandi.
						https://facelessuser.github.io/BracketHighlighter/
							OK_INCLUSA
				ToggleQuotes 
					ti consente di passare facilmente da uno stile di citazione a un altro. Evidenziate il testo racchiuso tra virgolette doppie () e premete il tasto virgolette singole (), che si trasforma in virgolette singole, eseguendo automaticamente l'escape di ogni singola virgoletta all'interno del testo. Funziona anche per i valori letterali dei modelli con backtick."'
						https://github.com/spadgos/sublime-ToggleQuotes
							OK_INCLUSA

				Confronta side-by-side 
					aprirà due file affiancati in una visualizzazione a due riquadri e metterà in evidenza le differenze tra loro.
						https://bitbucket.org/dougty/sublime-compare-side-by-side/src/master/
							OK_INCLUSA
				Schemr 
					ti consente di alternare tra due o più combinazioni di colori. Lo uso per alternare tra Monokai Light e Monokai Dark (uso lo schema di luce per la condivisione dello schermo e il lavoro all'aperto). Ho il mio mappato su una scorciatoia da tastiera.
						https://github.com/benweier/Schemr
							OK_INCLUSA

				HTMLPrettify 
					formati HTML, CSS, JavaScript, JSON e altro con indentazione e struttura adeguate. Davvero utile quando si ottiene codice alterato da una fonte di terze parti.
						https://github.com/victorporof/Sublime-HTMLPrettify
							OK_INCLUSA
				GitGutter 
					è il mio strumento preferito "git in Sublime". È un po' più sottile e meno distraente rispetto allo strumento nativo di Sublime.
						https://github.com/jisaacks/GitGutter
							OK_INCLUSA
				Evidenziatore 
					colore mostra un quadratino con il colore corrispondente accanto a qualsiasi valore di colore nel CSS. 
						https://packagecontrol.io/packages/Color%20Highlighter


				SublimeLinter e l'estensione JSHint
					con linting live attivato. Questi catturano eventuali problemi o errori strani in tempo reale mentre scrivo, il che è molto utile!
						http://www.sublimelinter.com/en/stable/
						https://github.com/SublimeLinter/SublimeLinter-jshint
							OK_INCLUSA

				MarkdownEditing 
					aggiunge l'evidenziazione della sintassi e alcuni extra per la creazione di file in markdown. Scrivo tutti i miei post sul blog e libri in markdown, quindi questo è essenziale.
						https://sublimetext-markdown.github.io/MarkdownEditing/
							NO FORSE GIA INSTALLATO

				ClickableLinks 
					rende cliccabili i collegamenti nel codice. VS Code lo fa in modo nativo, quindi averlo in Sublime è fantastico.
						https://github.com/leonid-shevtsov/ClickableUrls_SublimeText
							SEMBRA GIA INCLUSO?
				SyncSettings 
					salva tutte le mie impostazioni ed estensioni in un repository github privato, il che rende il porting della mia configurazione su nuove macchine o annullare gli errori davvero facile.
						https://www.mfuentesg.dev/SyncSettings/
						

  LE FAQ FINALI
	A
	C

	L
	  		Livelli di testo Raggruppamento
	  			NEL MENU EDIT ----> Code folding viene attivato o disattivato il comando per il livelli di testo viene attivata la con il comando 
	  					command": "fold_by_level"
				che permmette il raggruppamento del testo mentre 

	  				@raggruppamento@livelli.di.testo_(faq: LIVELLI DI TESTO come viene attivato il ragruppamento, le chiavi. )
	  				@menu@Edit--->Code Folding_(raggruppamento)

					@visual@studio@code@raggruppamento_(si trova in File ---> Preferences ---->
														Settings, mettere WorkBanch in verticale
														"workbench.editor.splitInGroupLayout": "vertical" +
														"workbench.editor.limit.value": 10 )

					@visual@studio@code@raggruppamento_( puoi vedere le impostazioni con CTRL+SHIFT +p e keyboard)
	  
		M
			MENU SUBLIME TEX
					chiavi di ricerca @..
						@menu@sublimeText
						@Menu@Edit_(Faq il menu Edit)
						@scomparsa@dei@menu_(devi riattivare i menu)
							Per riattivare i menu occorre attivare i toggle menu
							che risulta disattivato perche con lo schermo intero
							i menu scompaino:
								ctr+shift+p ----> scrivere
									Toggle Menu
										selezionare e vengono riattivati o disattivati 
										a seconda dello stato True o False

						@menu@verticale_(se i menu sono sull'angolo sx in vertica per riaddattarli in orizzontale occorre cambiare il tema)

							Preferences ---> Select Theme
								ed attivare Adattive
										(@scomapiono i menu orizzontali e @compiono a i menu a @fisarmonica sul lato @sinistro)

								ctrl+shift+p ----> select theme
										e selezionare Default Dark

				File
					....
							@File@Menu
				Edit
					...
							@Edit@Menu

					Code Folding
						Con il code folding
									@Edit@Code@Folding@SottoMenu1_(faq: sotto menu di edit per il raggruppamemento)
				Selection
							@Selection@Menu
					Code Folding
							Apro i gruppi di testo o disattivo i gruppi di testo
									@Selection@Code@Folding
				Find
							@Find@Menu
				View
							@View@Menu
				Goto
							@Goto@Menu
				Tools
							@Tools@Menu
				Project
							@Project@Menu
				Preferences
							@Prefernces@Menu
				Help
							@Help@Menu


					
	R
	  		Raggruppamento livelli di testo
	  			vd. @raggruppamento@livelli.di.testo_(faq: raggruppamento dei livelli di testo )
	S
	 		scomparsa del menu 
			A volte i menu scompaiono sulla barra vuol dire che hai disattivato il Togle Menu,
			e per riattivarlo devi premere i seguenti tasti:
			attivare il tasto 
				  ctrl+shift+p ---> scrivere "menu"
									---> attivare 
										  ---> Togle Menu
											 ( con Togle Menu disabiliti i menu o li riattivi)


				@pannello sottostante per il @dos
				 		ctrl+shift+p ---> scrivere "menu"
				 			---> attivare 
										  ---> Togle Panel
			  @menu@orizzontali
			  		per riattivare i menu in orizzontale basta scegliere il 
			  		tema Adattive ed esseo viene ripristinato


			@riattivare@menu
			@menu@scomparso
			@disabilita@menu




		 select
		 		





## COME CREARE FAQ SU DOMANDE PRINCIPALI

### LE FUNZIONI ARROW E NORMALI
	Come creare una funzione arrow e quella normale:
		// funzione arrow
				this.setState((state, props) => ({
				counter: state.counter + props.increment
				}));


		
		// funzione normale
			this.setState(function(state, props) {
			return {
			counter: state.counter + props.increment
			};
			});
### LE COSTANTI ESPRESSIONI JFX

	1 
 ES = COSTANTE STRINGA
		creo una costante stringa semplice
		const name = 'Giuseppe Verdi';
			
	2  
 ES = CREO UN ELEMENTO CON H1 + STRINGA + RISULTATO FUNZIONE
			creo un elemento con  h1 + stringa + il risultato di una funzione chiamata
			const element = <h1>Hello, {name}</h1>;
	
	3 
 ES = CREA UNA ELEMENTO ELEMENTO H1 + STRINGA + RISULTATO DELLA FUNZIONE CHIAMATA
		Questa è sempre una  ESSRESSIONE JAVA SCRIPT DENTRO LE GRAFFE COMPOSTA DA 
		un elemento html h1 		+
		una stringa = hello 		+
		da una stringa formatata con {formatName(user)
			{
				formatName(user), RESTITUISCE il risultato della chiamata alla 	descritta in {} la  quale  combina due costanti e le restituisce.
				
				const element = (
				<h1>
					Hello, {formatName(user)}!
				</h1>
				);
				
				//qui creo sempre una costante e tra parenti {} inserisco espressioni javascript tipo firstName
				const user = {
				firstName: 'Giuseppe',
				lastName: 'Verdi'
				};
				
				ES: CREATA  LA FUNZIONE DA CHIAMARE
				function formatName(user) {
				return user.firstName + ' ' + user.lastName;
				}

### SPECIFICARE ATTRIBUTI CON JFX
	ATTRIBUTI CON VIRGOLETTE
		 const element = <a href="https://www.reactjs.org"> link </a>;

	ATTRIBUTI CON PARENTESI GRAFFE SPECIFICANDO UNA ESPRESSIONE JavaScript
		 const element = <img src={user.avatarUrl}></img>;
### SEPARATORE A LINEE ROSSE
	CREARE UN SEPARATORE DI LINEE COLORATO NEL PROGETTO
	  @codice--->CREARE_UN_SEPARATORE = creare un separatore il linee rosse
### TAG
		TAG VUOTI
			Se un tag è vuoto, puoi chiuderlo immediatamente con />, come in XML:
			const element = <img src={user.avatarUrl} />;
		TAG CON FIGLI
			I tag JSX possono contenere figli:

				const element = (
					  <div>
					    <h1>Hello!</h1>
					    <h2>Good to see you here.</h2>
					  </div>
					);
### TEXAREA-CASELLA-DI-TESTO
		@casella@di@testo@texarea.(casella di testo)
			come creare una casella di testo in react:
				vedere questo codice @CASELLA@DI@TESTO@textArea.(per vedere il codice sviluppato)
### CSS ED EVENTO BUTTON
	Come creare una classe .css, applicarla ad un componente es. button.


			APPLICAZIONE ALL'INTERNO DI UN FILE .TXT
				Note
					Nell'elemnto button vengono effettuati 2 richiami:
						<button className="btn" onClick={() => setCount((count) => count + 1 }>
				count is {count}
			</button>

						className="btn"
					e questo richiama la classe .css costruita per i button.

					onClick={() => setCount((count) => count + 1 

						questo è l'evento button e la funzione richiamata


				Per applicare la classe .css al button occorre costruire un file 
				index.css in cui viene costruito la parte grafica del button denomando
				l'elemento in 
					button {......}
						Esempio .css per il button

								/*//BUTTON MODELLO PER TUTTO*/
								/*//=======================================================//*/
								
								button {
								border-radius: 8px;
								border: 4px solid transparent;
								padding: 0.6em 1.2em;
								font-size: 1em;
								font-weight: 500;
								font-family: inherit;
								background-color: #1a1a1a;
								cursor: pointer;
								transition: border-color 0.25s;
								}
								/*hover = mouse sopra*/
								button:hover {
								border-color: #ea0009;
								}
								button:focus,
								button:focus-visible {
								outline: 4px auto -webkit-focus-ring-color;
								}
								
								/*//=======================================================//*/
								
						
				ATTENZIONE nel file css, puoi anche

				
### GIT_COMANDI_DOS
				@git@cmd_(comandi dos)
				@git@tutorial_(il tutorial per git si trova qui:
						https://git-scm.com/docs/git-add
						)

					i libro di tutorial si trova qui:
				C:\\CASA\\LINGUAGGI\\GIT_DEKTOPO\\TUTORIAL\tutorial_(progit).pdf
					@apri@tutorial@git_(con dos apri il git.pdf)
					@apri@tutorial@pdf.git_(apri git .pdf)

					puoi attivarlo copiando questo comando DOS  su terminale:

					Poswer shel apertura di un file:
					Invoke-Item 'C:\CASA\LINGUAGGI\GIT_DESKTOP\TUTORIAL\tutorial_(progit).pdf'

					DOS cmd:
					Start "apri tutorial" C:\CASA\LINGUAGGI\GIT_DESKTOP\TUTORIAL\tutorial_(progit).pdf
						

		1 
 per aggiungere il nuovo FARE 3 comandi dos
		git add .	
							@git.add_(aggiungi all'indice)
				Aggiungi il contenuto del file all'indice (vedi comando add .)
					git_add
						comando + opzioni
								git add [--verbose | -v] [--dry-run | -n] [--force | -f] [--interactive | -i] [--patch | -p]
		  						[--edit | -e] [--[no-]all | --[no-]ignore-removal | [--update | -u]] [--sparse]
		  						[--intent-to-add | -N] [--refresh] [--ignore-errors] [--ignore-missing] [--renormalize]
		  						[--chmod=(+|-)x] [--pathspec-from-file=<file> [--pathspec-file-nul]]
		  						[--] [<pathspec>…​]
						DESCRIPTION
							Questo comando aggiorna l'indice utilizzando il contenuto corrente disponibile in l'albero di lavoro, per preparare il contenuto messo in scena per il commit successivo. In genere aggiunge il contenuto corrente dei percorsi esistenti nel loro complesso, ma con alcune opzioni può anche essere utilizzato per aggiungere contenuti con solo una parte delle modifiche apportate ai file dell'albero di lavoro applicati, oppure Rimuovete i tracciati che non esistono più nell'albero di lavoro.
		
							L'"indice" contiene un'istantanea del contenuto dell'albero di lavoro e è questo snapshot che viene preso come contenuto del commit successivo. Così dopo aver apportato modifiche all'albero di lavoro e prima di eseguire Il comando commit, è necessario utilizzare il comando per aggiungere qualsiasi nuovo o File modificati nell'indice.add
		
							Questo comando può essere eseguito più volte prima di un commit. E 'solo Aggiunge il contenuto dei file specificati nel momento in cui il comando Aggiungi è Correre; Se si desidera includere le modifiche successive nel commit successivo, È necessario eseguire nuovamente per aggiungere il nuovo contenuto all'indice.
						git add -f
								@git.add@Opzione@-f_(git con -f  aggiunge anche i file ignorati di defalut -f = forzatura)
								@git-f_{forza il salvataggio}
							Il comando non aggiungerà i file ignorati per impostazione predefinita. Se ce ne sono I file ignorati sono stati specificati in modo esplicito nella riga di comando, avranno esito negativo con un elenco di file ignorati. File ignorati raggiunti da ricorsione della directory o globbing del nome del file eseguito da Git (cita il tuo globi prima del guscio) saranno silenziosamente ignorati. Il comando git add può essere utilizzato per aggiungere file ignorati con l'opzione (forza -f ).
						
						OPTIONS
						
										@opzioni@git-add
										@git.add@opzioni

								path
									File da cui aggiungere contenuti. Fileglobs (ad es. *.c) può essere dato per aggiungere tutti i file corrispondenti. 
									Anche un Nome della directory principale (ad es. dir to add dir/file1 and dir/file2 ) può essere dato per aggiornare l'indice a corrispondere allo stato corrente della directory nel suo complesso 
									(ad es. Specificando dir non verrà registrato dir/file1 solo un file modificato nell'albero di lavoro, ma un file aggiunto a l'albero di lavoro, ma anche un file rimosso da l'albero di lavoro). 
									Si noti che le versioni precedenti di Git utilizzavano ignorare i file rimossi; Usa l'opzione --no- all se vuoi per aggiungere file modificati o nuovi ma ignorare quelli rimossi.
								-n
								--dry-run
									In realtà non aggiungere i file, mostra solo se esistono e / o lo faranno essere ignorato.

								--verbose
									Sii prolisso.
								-f
								--force
									Consenti l'aggiunta di file altrimenti ignorati

								--sparse
									Consenti l'aggiornamento delle voci di indice al di fuori del cono di checkout sparse. Normalmente, rifiuta di aggiornare le voci di indice i cui percorsi lo fanno. non rientrano nel cono di pagamento sparse, poiché tali file potrebbero essere rimossi dall'albero di lavoro senza preavviso. Vedi git-sparse-checkout[1] per maggiori dettagli.

								-i
								--interactive
									Aggiungere contenuto modificato nell'albero di lavoro in modo interattivo a l'indice. È possibile fornire argomenti di percorso facoltativi per limitare su un sottoinsieme dell'albero di lavoro. Vedere "Interattivo" mode" per i dettagli. add --interactive
											@git@vedi.dettagli_(esempio con git add --interactive)

								-p
								--patch
									(Attenzione path significa aggiusta)
									Scegli in modo interattivo pezzi di patch tra l'indice e il Albero di lavoro e aggiungerli all'indice. Questo dà all'utente una possibilità Per esaminare la differenza prima di aggiungere contenuto modificato alla finestra di dialogo indice.
									Questo funziona in modo efficace  add --interactive ma bypassa il Menu di comando iniziale e passa direttamente al patch Vedere "Modalità interattiva" per i dettagli.


								-e
								--edit
									Apri il diff rispetto all'indice in un editor e lascia che l'utente modificarlo. Dopo la chiusura dell'editor, regolare le intestazioni hunk e applicare la patch all'indice.

									Lo scopo di questa opzione è selezionare e scegliere le linee della patch da applicare, o anche per modificare il contenuto delle righe da mettere in scena. Questo può essere Più veloce e flessibile rispetto all'utilizzo del selettore hunk interattivo. Tuttavia, è facile confondersi e creare una patch che non lo fa applicare all'indice. Vedere MODIFICA DELLE PATCH di seguito.


									Aggiorna l'indice solo dove ha già una corrispondenza di voce <pathspec>. In questo modo vengono rimosse e modificate le voci di indice in corrispondono all'albero di lavoro, ma non aggiungono nuovi file.
								-u
								--update
									Se non viene fornito alcun <pathspec> quando si utilizza l'opzione -u, tutti I file tracciati nell'intero albero di lavoro vengono aggiornati (versioni precedenti di Git utilizzato per limitare l'aggiornamento alla directory corrente e alla sua sottodirectory).


								-A
								--all
								--no-ignore-removal
									Aggiornare l'indice non solo dove l'albero di lavoro ha un file corrispondente <pathspec> ma anche dove l'indice ha già un entrata. In questo modo vengono aggiunte, modificate e rimosse le voci di indice in Corrispondenza dell'albero di lavoro.

									Se non viene fornito alcun <pathspec> quando si utilizza l'opzione, -A tutti I file nell'intero albero di lavoro vengono aggiornati (versioni precedenti di Git utilizzato per limitare l'aggiornamento alla directory corrente e alla sua sottodirectory).

								--no-all
								--ignore-removal
									Aggiornare l'indice aggiungendo nuovi file sconosciuti al Indice e file modificati nell'albero di lavoro, ma ignorati File rimossi dall'albero di lavoro. Questo è una no-op quando non viene utilizzato alcun <pathspec>.

									Questa opzione serve principalmente ad aiutare gli utenti che sono abituati a versioni di Git, il cui "git add <pathspec>... " era un sinonimo per "git add --no-all <pathspec>... ", cioè ignorava i file rimossi.

								-N
								--intent-to-add

									Registrare solo il fatto che il percorso verrà aggiunto in seguito. Una voce perché il percorso viene inserito nell'indice senza contenuto. Questo è utile per, tra le altre cose, mostrare il contenuto non messo in scena di tali file con e commettendoli con commit -a.

								--refresh

									Non aggiungere i file, ma solo aggiornare il loro stat() informazioni nell'indice.


								--ignore-errors
									Se non è stato possibile aggiungere alcuni file a causa di errori di indicizzazione loro, non interrompere l'operazione, ma continuare ad aggiungere il Altri. Il comando deve comunque uscire con uno stato diverso da zero. La variabile di configurazione dd.ignoreErrors può essere impostata su true per rendere questo il comportamento predefinito.

								--ignore-missing

									Questa opzione può essere utilizzata solo insieme a --dry-run. Utilizzando Questa opzione l'utente può verificare se uno qualsiasi dei file specificati sarebbe essere ignorati, non importa se sono già presenti nell'opera albero o no.


								--no-warn-embedded-repo
									Per impostazione predefinita "git add", avvisa quando si aggiunge un incorporato repository all'indice senza utilizzare  git submodule add to Creare una voce in .gitmodules . Questa opzione sopprimerà il avviso (ad esempio, se si eseguono manualmente operazioni su sottomoduli).

								--renormalize
									Applica il processo "pulito" a tutti i file tracciati a Aggiungerli di nuovo forzatamente all'indice. Questo è utile dopo Modifica della configurazione core.autocrlf o dell'attributo text per correggere i file aggiunti con terminazioni di riga CRLF/LF errate. Questa opzione implica -u. I caratteri CR solitari sono intatti, quindi mentre un CRLF pulisce in LF, una sequenza CRCRLF è solo parzialmente pulito a CRLF.

								--chmod=(+|-)x
									Eseguire l'override del bit eseguibile dei file aggiunti. L'eseguibile bit viene modificato solo nell'indice, i file su disco vengono lasciati inalterato.


								--pathspec-from-file=<file>
									Pathspec viene passato in <file> al posto degli arg della riga di comando. Se il <file> è esattamente - Quindi viene utilizzato l'input standard. Pathspec gli elementi sono separati da LF o CR/LF. Gli elementi Pathspec possono essere Citato come spiegato per la variabile di configurazione core.quotePath Vedi anche --pathspec-file-nul and global --literal-pathspecs.

								--pathspec-file-nul
									Significativo solo con --pathspec-from-file. Gli elementi Pathspec sono separati con carattere NUL e tutti gli altri caratteri vengono presi letteralmente (comprese le nuove righe e le citazioni).

								--
									Questa opzione può essere utilizzata per separare le opzioni della riga di comando da l'elenco dei file, (utile quando i nomi dei file potrebbero essere errati per le opzioni della riga di comando).


							EXAMPLES
									Aggiunge contenuto da tutti i file nella directory e le sue sottodirectory:
										git add Documentation/\*.txt


									Si noti che l'asterisco * è citato dalla shell in questo esempio; Ciò consente al comando di includere i file da sottodirectory di Documentation/ directory.

									Considera l'aggiunta di contenuti da tutti gli script git-*.sh:
											 git add git-*.sh

								 	Perché questo esempio consente alla shell di espandere l'asterisco (cioè sei elencando esplicitamente i file), non considera 
								 			subdir/git-foo.sh.

				 			INTERACTIVE MODE
				 				Quando il comando entra in modalità interattiva, mostra il output del sottocomando status, quindi entra nella sua ciclo di comandi interattivo.

								Il ciclo di comandi mostra l'elenco dei sottocomandi disponibili e dà un prompt "What now> ". In generale, quando termina il prompt Con un solo >, puoi scegliere solo una delle scelte fornite e digitare return, in questo modo:
										    *** Commands ***
      										1: status       2: update       3: revert       4: add untracked
      										5: patch        6: diff         7: quit         8: help
    										What now> 1

								Si potrebbe anche dire s o sta o status purché il La scelta è unica.


								status
									todo : da finire ***(da finire)
											https://git-scm.com/docs/git-add
									git status
											Il comando può essere utilizzato per ottenere un riepilogo di cui I file presentano modifiche che vengono eseguite per il commit successivo.
							warning
								warning: in the working copy of 'REACT_GUIDA_HTML.sublime-workspace', LF will be replaced by CRLF the next time Git touches it 
								avvertimento: nella copia di lavoro di 'REACT_GUIDA_HTML.sublime-workspace', LF sarà sostituito da CRLF la prossima volta che Git lo toccherà

		git commit -m "messaggio"	
					= salva su disco

		git push   						
					= salva sulla rete

		esempio git add. git commit -m "messagio" git push

### GIT_CREARE_UN_PROGETTO_NUOVO
	come creare un nuova repositori con git con riga di comando:
		1 
 cd directory in cui creare
			attenzione se la directori gia esiste impostare il cd.. fuori di una posizione
		2 - git init REACT_CONCETTI_CHIAVE
		3 - git add .
		4 -  git commit -m "messaggio del commit	
		5 - git push <remote_name> <branch_name>
			   Es. react        origin
			   
			   su https://github.com/icivixwalter
			   passw walter_01_
			   		@git@utenza_(UTENZA PER GIT HUB)
			   		@git@create@project_(git come creare un nuovo progetto da locale a GitHup )
			   		@git@crea@repository_(git come creare una nuova repository )

### EVENTI
		Per gli eventi ci sono 2 possibilita
			UTILIZZO DI BIND

											class Interruttore extends React.Component {
														constructor(props) {
														super(props);
														this.state = {acceso: true};
														
														// Necessario per accedere al corretto valore di `this` all'interno della callback
														//ATTENZINE ad utilizzare bind per l'associazione e passarlo a onclick??
														this.handleClick = this.handleClick.bind(this);
														}
														
														handleClick() {
														this.setState(prevState => ({
															acceso: !prevState.acceso
														}));
														}
														
														render() {
														return (
															<button onClick={this.handleClick}>
															{this.state.acceso ? 'Acceso' : 'Spento'}
															</button>
																	);
														}
														}


			PROPRIETA PUBBLICHE DELLA CLASSE

											
										class LoggingButton extends React.Component {
														//SINTASSI DELLE PROPRIETA PUBBLICHE DELLE CLASSI 
														//ed associare il callback
														// This syntax ensures `this` is bound within handleClick.
														handleClick = () => {
														console.log('this is:', this);
														};
														render() {
														return (
															<button onClick={this.handleClick}>
															Clicca qui
															</button>
														);
														}
														}


					class LoggingButton extends React.Component {
														// This syntax ensures `this` is bound within handleClick.
														handleClick = () => {
														console.log('this is:', this);
														};
														render() {
														return (
															<button onClick={this.handleClick}>
															Clicca qui
															</button>
														);
														}
														}
### ERRORI
    #### Errori su React
			IntelliJ IDEA sta segnalando un errore TS2339 perché non riconosce il metodo “setState” che stai utilizzando nel tuo progetto. Questo potrebbe essere dovuto al fatto che il plugin Deno non è configurato correttamente.

			Per risolvere questo problema, puoi provare a installare il plugin TypeScript per IntelliJ IDEA e assicurarti di avere le definizioni dei tipi React installate nel tuo progetto. Puoi farlo eseguendo il comando npm install @types/react @types/react-dom --save-dev nella tua cartella di progetto.
			
			Inoltre, potresti voler verificare che la tua versione di TypeScript sia aggiornata alla versione più recente.
			
			Spero che questo ti aiuti! Fammi sapere se hai altre domande. 

	####	Errori su Vite
				per partire
					Task dev deno run -A --node-modules-dir npm:vite

				ma questo errore 
					Cannot read properties of undefined (reading 'bold')
					10:46:01 [vite] Internal server error: Cannot read properties of undefined (reading 'bold')
					Plugin: vite:react-babel

					con chatgpt ho trovato questa soluzione.
					nella directory del progetto 
						 C:\CASA\LINGUAGGI\HTML\PROGETTI_HTML\REACT_CONCETTI_CHIAVE\Project\react-concetti-chiave 
						 digitare deno info
						 e 		 deno update
						 e fa l'aggiornamento.



### MIE_FAQ
				@mie@faq
			Apri il terminale				
					la chiave è "keys": ["ctrl+alt+t"]
												@apri@terminale_(MIE FAQ:  per aprire il terminale usa ctrl+alt+t )
												@come@apri@terminale_(MIE FAQ:  per aprire il terminale usa ctrl+alt+t )
			  									@apri.il@terminale

		C
			Come visualizzare i file aperti
				via sul Menu
						View ----> Side Bar ----> Show Open Files
								@visualizza@file@aperti_(con il menu View ----> Side Bar ----> Show Open Files | visualizzi i file aperti)
								@Nascondi@file@aperti_(con il menu View ----> Side Bar ----> Hide Open Files | nascondi i file aperti)
