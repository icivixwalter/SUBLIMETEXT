

DOCUMENTAZIONE_SUBLIME_TEX (DOCUMENTAZIONE UFFICIALE) 
https://www.sublimetext.com/docs/index.html#customization
	Note
			Le pagine seguenti contengono la documentazione ufficiale di Sublime Text. Il Sublime Testo Documentazione Non Ufficiale è un Ottima risorsa supplementare, con un'enorme quantità di informazioni non coperte nella documentazione ufficiale. ( SI TROVA IN QUESTO
			PARAGRAFO -----> @link@sublimetext@DOCUMENTAZIONE.NON.UFFICIALE )

			(Questa è la documentazione UFFICIALE)
			LINK: https://www.sublimetext.com/docs/color_schemes.html#example
					@documentazione@ufficiale

			
			

					

	1.USAGE (USO)
		Selezione multipla della scheda

		Integrazione Git

		Differenza incrementale

		Indicizzazione

		Interfaccia della riga di comando

		Selezione colonna

		Selezione multipla con la tastiera

		Completamenti

		Modalità senza distrazioni

		Modalità Vintage

		Progetti **

	2.CUSTOMIZATION (PERSONALIZZAZIONE)
		Impostazioni

		Associazioni di tasti

		Impostazioni dei caratteri

		Impostazioni di rientro

		Controllo ortografico

		Sistemi di costruzione

		Pacchetti

		Selettori

		Modelli di file **

	3.MISCELLANEOUS (MISTO)
		GPU Rendering
		
		Compatibilità del sistema operativo
		
		Repository di Gestione pacchetti Linux
		
		Modalità provvisoria
		
		Ripristino di uno stato appena installato
		
		Esecuzione 3 e 4 fianco a fianco
		
		Accesso alle versioni precedenti
		
		Legature **

	4.PACKAGE DEVELOPMEN (SVILUPPO.DI.PACCHETTI )
		4.1.COLOR SCHEMES (COMBINAZIONI DI COLORI) 
					NOTE
						https://www.sublimetext.com/docs/color_schemes.html#example
						Versione: dev 4.0 3.2 3.1 3.0
						L'evidenziazione del codice sorgente e della prosa in Sublime Text è controllata da un combinazione di colori. Una combinazione di colori assegna colori e stili di carattere agli ambiti, che sono assegnati al testo dalla sintassi. Il resto dell'aspetto dell'utente L'interfaccia è controllata dal tema. Il tema controlla tale Elementi come pulsanti selezionano elenchi, barra laterale e schede.

						Gli schemi di colori Sublime Text sono implementati utilizzando 
								file 
									.sublime-color-scheme, 
										@sublime-color-scheme_(sviluppo pacchetti la personalizzazione dei colori)

						contenenti JSON. Sublime Text supporta anche un sottoinsieme di funzionalità utilizzando il formato .tmTheme di TextMate. Prima del Sublime Testo 3.1, era supportato solo il formato
						 		.tmTheme.

									@gli.schemi.si.trovano.qui  @file@schema
									@file@schema@costruzione



			
			4.1.1.Esempio (Example)

						Di seguito è riportato un esempio del formato di un file con schema di colori .sublime. Una combinazione di colori completa avrà molte più regole per coprire lo standard nomi di ambito.
							 ES_01_(@esempio @colori @personalizzato)
								 
							{//ESEMPIO DI UN	COLORE CUSTIMIZZATO
								    "name": "Example Color Scheme",

							    	 "variables":
							    	 	  {
									        "green": "hsla(153, 80%, 40%, 1)",
									        "black": "#111",
									        "white": "rgb(242, 242, 242)"
										    },


								 "globals":
									    {	//LE GLOBALI
									        "background": "var(black)",
									        "foreground": "var(white)",
									        "caret": "color(var(white) alpha(0.8))"
									    },

								    "rules":
								    [	//RULES = REGOLE qui ci sono regole per i commenti le stringhe ed i numeri
								        {
								            "name": "Comment",
								            "scope": "comment",
								            "foreground": "#888888"
								        },
								        {
								            "name": "String",
								            "scope": "string",
								            "foreground": "hsla(50, 100%, 50%, 1",
								        },
								        {
								            "name": "Number",
								            "scope": "constant.numeric",
								            "foreground": "#7F00FF",
								            "font_style": "italic",
								        }
									    ]
									}

									
			4.1.2.Colori (Colors)

					I colori nelle combinazioni di colori possono essere specificati utilizzando uno dei sette formati:		@file@schema@colori @combinazione.di.colori @colori.7.formati
											@file@schema@colori

						1 
 formato Hex RGB
							Hex RGB: A seguito da sei caratteri esadecimali, con i primi due specificando il canale rosso, secondo rimorchiare il canale verde e gli ultimi due canale blu. Il rosso è scritto come . Una forma abbreviata è Disponibile quando ciascuna delle tre coppie utilizza lo stesso valore per entrambe personaggi. Il rosso è scritto come .##FF0000#F00


							Hex RGBA: uguale a Hex RGBA, ma con una coppia extra di caratteri esadecimali in Fine per specificare il canale alfa. Il rosso con il 67% di opacità è scritto come . La forma abbreviata sarebbe .#FF0000AA#F00A

						2  
 Notazione funzionale RGB
							Notazione funzionale RGB: una funzione denominata che accetta tre numeri interi compresi tra 0 e 255. Il primo numero intero specifica il canale rosso, il secondo il canale verde e il terzo il canale blu. Il rosso è scritto come.rgbrgb(255, 0, 0)

						3 
 Notazione funzionale RGBA
							Notazione funzionale RGBA: identica al formato della funzione RGB, ad eccezione del nome della funzione è e viene aggiunto un quarto parametro accettando un da a specificare il canale alfa. Rosso con L'opacità del 50% è scritta come 
							
							@COLORI@FORMATO_(il formato dei colori in @RGBA @FUNZIONE @RGB)								
									rgba(255, 0, 0, 0.5)





 Notazione funzionale HSLA:
							Notazione funzionale HSLA: identica al formato della funzione HSL, ad eccezione del parametro nome della funzione è e viene aggiunto un quarto parametro accettando un da a specificare il
							 canale alfa. Rosso con L'opacità del 50% è scritta come .hsla0.01.0hsla(0, 100%, 50%, 0.5 -

						6) Notazione funzionale HWB:
							Notazione funzionale HWB: una funzione denominata che accetta tre o quattro valori. Il primo è un numero intero nell'intervallo per specificare la tonalità. La seconda è una percentuale che specifica la percentuale di bianco mescolato. Il terzo è una percentuale che specifica il nero mescolato. Il quarto parametro facoltativo è un valore da a quello Controlla l'opacità. Ecco alcuni esempi: e .hwb03600.01.0hwb(0, 20%, 20%)hwb(0, 20%, 20%, 0.5 -

						7) Denominato
							Denominato: nomi di colori CSS. Si prega di notare che mentre alcuni condividono nomi con colori denominati X11 utilizzati nei file .tmTheme, il I colori reali tendono a differire.

						Inoltre, i colori possono essere specificati come una variabile, e quindi a cui si fa riferimento tramite la sintassi . I riferimenti variabili sono particolarmente utile se combinato con i colori minihtml e i regolatori supportati, , , , e adjuster.var(example_var_name)blend()blenda()alpha()saturation()lightness()min-contrast()
								@variabili.colore @combinazione.di.colore @fonde.colori@fusione @colori@variabili

								blend() adjuster: fonde un colore nella base. Per fondere parti uguali di grigio e un colore di base referenziato tramite variabile, nello spazio RGB: . Se i colori devono essere fusi nello spazio HSL, utilizzare il seguente modulo: . Le Il valore alfa risultante è sempre il canale alfa del colore di base.color(var (base_green) blend(#888 50%))color(var(base_green) blend(#888 50% hsl))

								blenda() adjuster: funziona allo stesso modo del regolatore, ma fonde il canale alfa dei due colori invece di usare solo l'alfa canale dalla base. Un esempio di fusione di un parzialmente trasparente dal grigio al verde: blend()color(var(base_green) blenda(#8888 50% hsl))

								alpha() adjuster: modifica il canale alfa del colore di base impostandolo sul valore specificato, da a . Impostazione del canale alfa su 90%: . Un nome abbreviato di a() è disponibile anche per questo regolatore.0.01.0color(var(base_green) alpha(0.9))

								regolatore saturation(): modifica il canale di saturazione del colore di base, nello spazio colore HSL, al valore specificato, da a . Impostazione della saturazione su 90%: . Aumentare la saturazione di 10%: . Un nome stenografico di s() è disponibile anche per questo regolatore.0%100%color(var (base_green) saturation(0.9))color(var(base_green) s(+ 10%))

								3179
								lightness() adjuster: modifica il canale di luminosità del colore di base, nello spazio colore HSL, al valore specificato, da a . Impostando la leggerezza al 90%: . Diminuendo la leggerezza del 10%: . È disponibile anche un nome abbreviato di l() per questo regolatore.0%`100%color(var (base_green) lightness(0.9))color (var(base_green) l(- 10%))

								3179
								regolatore min-contrast() (proprietario: modifica un colore per garantire un rapporto di contrasto minimo rispetto a un colore "di sfondo". Il primo parametro è il colore per calcolare nuovamente il contrasto, lo "sfondo" e il secondo è un numero decimale che specifica il rapporto di contrasto minimo. Valori tipici per l'intervallo di rapporti di contrasto da a . Garantire un Rapporto di contrasto di 2,5 sullo sfondo: 2.04.5color(var (base_green) min-contrast(var(bg_color) 2.5 -
)
			4.1.3.Variabili (Variables)
						È possibile creare definizioni di colore riutilizzabili nella chiave. I nomi può essere qualsiasi stringa che utilizza i caratteri , , e . I valori possono essere qualsiasi formato di colore valido.variablesa-zA-Z0-9_-  @creazione@variabili.per.la.definizione@di@colori

						È possibile fare riferimento alle variabili NELLE IMPOSTAZIONI e NELLE REGOLE GLOBALI, tramite il comando sintassi. Nell'esempio seguente viene illustrata la variabile di base uso:var(example_var_name)
																@schema@variabili  @variabili@globali
																@impostazioni@colori@regole@globali

								ESEMPIO@VARIABILI@COLORI
										//definito uno variabile con i blocchi NAME + GLOBALS + RULES
										{
									    "name": "Example Color Scheme",
									    "variables":
									    {
									        "green": "hsla(153, 80%, 40%, 1",
									        "black": "#111",
									        "white": "rgb(242, 242, 242 "
									    },
									    "globals":
									    {
									        "background": "var(black)",
									        "foreground": "var(white)",
									        "caret": "color(var(white) alpha(0.8))"
									    },
									    "rules":
									    [
									        {
									            "name": "Comment",
									            "scope": "comment",
									            "foreground": "color(var(black) blend(#fff 50%))"
									        },
									        {
									            "name": "String",
									            "scope": "string",
									            "foreground": "var(green)",
									        },
									        {
									            "name": "Number",
									            "scope": "constant.numeric",
									            "foreground": "#7F00FF",
									            "font_style": "italic",
									        }
									    ]
									}
				-----------------------------------------------------
			4.1.4.Impostazioni globali (Global Settings)
							
							IMPOSTAZIONI_GLOBALI	(Global Settings)					
									Nota
											Le seguenti impostazioni globali vengono inserite nell'oggetto con la chiave."globals"
																	@colori@globals@settings
												(Nelle variabili create per la definizione dei colori LE IMPOSTAZIONI GLOBALI riguardano:)
									background (sfondo)
										"Sfondo" Colore di sfondo predefinito.
									foreground (primo piano)
										"Primo piano" Colore predefinito per il testo.
									invisibles (invisibile)
										"Invisibili" Colore per gli spazi vuoti, quando viene eseguito il rendering. Se non specificato, il valore predefinito è il primo piano con un'opacità pari a 0,35.
									caret (cursore)
										 Il colore del caret (cursore)
									block_caret (blocco del cursore)
										Il colore del cursore quando si utilizza un cursore a blocchi
									block_caret_border (co)
										colore del bordo per un punto di inserimento del blocco
									block_caret_underline 
										Il colore della sottolineatura del punto di osservazione del blocco viene disegnato come quando si sovrappone a una selezione
									block_caret_corner_style 

										Lo stile degli angoli da utilizzare per i carretti a blocchi. Le opzioni includono: (impostazione predefinita) o .roundcutsquare
									block_caret_corner_radius
										Raggio da utilizzare quando è o .block_caret_corner_styleroundcut
									line_highlight

										Colore di sfondo della riga contenente il cursore. Utilizzato solo quando l'impostazione highlight_line è abilitata.

								----------------------------------------------------------------------------------------
								Accenti		(Accents)
											Note
												Tra le impostazioni globali puoi inserire il GRUPPO DEGLI ACCENTI

									misspelling
										errore di ortografia 
										Colore da utilizzare per la sottolineatura ondulata disegnata sotto parole errate.

									fold_marker
										pennarello pieghevole
										Colore da utilizzare per l'indicatore che indica che il contenuto è stato piegato.

									minimap_border 
										Bordo della minimappa
										Il colore del bordo disegnato attorno all'area del riquadro di visualizzazione della minimappa quando L'impostazione è abilitata. Si noti che il riquadro di visualizzazione è Normalmente visibile solo al passaggio del mouse, a meno che l'impostazione always_show_minimap_viewport non sia abilitata.draw_minimap_border

									accent
										Accento 
										Un colore reso disponibile per l'uso dal tema. Il tema Predefinito utilizza questo per Evidenziare le schede modificate quando l'impostazione highlight_modified_tabs è Abilitato.
								.CSS			(CSS)
										Note
											CSS viene applicato al contenuto di riferimento minihtml creato tramite popup e fantasmi funzionalità esposta tramite l'API. Le proprietà CSS supportate sono discusse nel CSS

											I plugin che utilizzano minihtml sono incoraggiati a impostare un attributo univoco sul tag di HTML generato per consentire alle combinazioni di colori di sovrascrivere le impostazioni predefinite stili di plugin.id<body>
												(CSS che viene passato ai popup @css@popup)

									popup_css 
										CSS passato ai popup.

									phantom_css
										CSS passato ai fantasmi. Se non specificato, utilizza popup_css.

									sheet_css
										CSS passato ai fogli HTML. 4065
								Cunetta		(Gutter)
									gutter
										cunetta (OPPURE GRONDAIA??)
										Colore di sfondo della grondaia.


									gutter_foreground
										grondaia in primo piano
										Colore dei numeri di riga nella grondaia.


									gutter_foreground_highlight
										Evidenziazione in primo piano della grondaia
										Colore dei numeri di riga nella grondaia quando viene evidenziata una linea. 4050
								Diff			(Diff)
									DIFF
										La funzionalità diff viene visualizzata nella grondaia come linee colorate per aggiungere e linee modificate e un triangolo in cui le linee sono state eliminate.

									line_diff_width 
										larghezza differenziale linea
											Larghezza delle linee diff, comprese tra e .18 3186

									line_diff_added
										Differenza di linea aggiunta 
											Colore dei marcatori diff per le linee aggiunte. 3189

									line_diff_modified 
										Differenza di linea MODIFICATA
									Colore dei marcatori diff per le linee modificate. 3186

									line_diff_deleted 
										Differenza di linea ELIMINATA
											Colore dei marcatori diff per le righe eliminate. 3189
								Selezione	(Selection)
									selection
										Selezione 
											Colore di sfondo del testo selezionato  @SELEZIONE@TESTO@selezionato
																								 @CAMBIA@COLORE@TESTO@SELEZIONATO
									selection_foreground 
										Selezione in primo piano
											Colore che sostituirà il colore del testo basato sull'ambito della selezione.
												@come@cambiare@il@colore@del@testo@selezionato
												@colore@testo@selezionato
												@cambia@selezione@testo@selection_foreground

													(PER CAMBIARE IL COLORE DEL TESTO SELEZIONATO occore andare ad aprire
														il file delle impostazioni PERSONALE del tema base. In questo caso
														il Color Scheme è monokai e le impostazioni personali si trovano
															qui:
																C:\Users\walter.rossi\AppData\Roaming\Sublime Text\Packages\User
															file:
																Monokai.sublime-color-scheme
																	@impostazione@personali@colori
																	@sublime-color-scheme = personalizzazione dei colori_(cambiare le impostazioi dei colori)

													Per accedere a queste IMPOSTAZIONI PERSONALI occorre aprire il file
													con 	Preferences--->Browse Packages ---> User ---> Monokai.sublime-color-scheme
														aprire il file e cambiare le variabili inGlobals.			
														)

														ESEMPIO DI TESTO SELEZIONATO FUCSIA
															IL FILE SI TROVA QUI:
																C:\Users\icivi\AppData\Roaming\Sublime Text\Packages\User\Monokai.sublime-color-scheme
																per aprirlo puoi fare due attivita:
																1) Preferences ---> Browse Packages
																	e incollare tutta la path sopra indicata in file 
																2) Preferences ---> Browse Packages --> User ---> Monokai.sublime-color-scheme
																	Apri il file .sublime-color-scheme per avere queste impostazioni da cambiare.

																				"variables":
																				{
																				},
																				"globals":
																				{
																					//questo è il colore dello sfondo video base NERA
																					"background": "var(black3)",
																					//il colore del testo sullo sfundo nero è BIANCO
																					"foreground": "var(white2)",
																					//SELEZIONA TESTO IN RE2 = FUCSIA
																					"selection": "var(red2)"
																			,
																				},
																				"rules":
																				[
																					
																				]
																			}


									selection_border
										Bordo di selezione 
											Colore del bordo della selezione.
									selection_border_width 
										Larghezza del bordo di selezione
											Larghezza del bordo di selezione, da a .04
									inactive_selection 
										selezione inattiva
											Colore di sfondo di una selezione in una vista che.
									inactive_selection_border 
										Bordo selezione inattivo
											Colore del bordo della selezione in una visualizzazione attualmente non esistente focalizzato. 4074
									inactive_selection_foreground 
										Selezione inattiva in primo piano
											Un colore che sostituirà il colore del testo basato sull'ambito della selezione in un vista che non è attualmente focalizzata.
									selection_corner_style 
										angolo selezione stile
											Stile degli angoli da utilizzare nelle selezioni. Le opzioni includono: (impostazione predefinita) o .roundcutsquare
									selection_corner_radius 
										Raggio angolo selezione
											Raggio da utilizzare quando è o .selection_corner_styleroundcut
								Trovare		(Find)
									highlight
										In evidenza
											Il colore del bordo per le corrispondenze "altre" quando l'opzione Evidenzia corrispondenze è selezionato nel pannello Trova. Utilizzato anche per evidenziare le corrispondenze in Trova nei file risultati.

									find_highlight
										Trova evidenziato
											Colore di sfondo del testo corrispondente al pannello Trova.

									find_highlight_foreground
										Trova evidenziato in primo piano
											A color that will override the scope-based text color.

									scroll_highlight
										Scorrimento evidenziato
										Le posizioni dei risultati di ricerca a colori disegnate nella parte superiore della barra di scorrimento.* 4050

									scroll_selected_highlight
										Scorrimento selezionato evidenziato
											Il colore della posizione dei risultati di ricerca selezionata disegnata nella parte superiore della barra di scorrimento.* 4050
								Righelli		(Rulers)
										Le posizioni dei righello sono impostate dall'impostazione.rulers
									rulers
										Colore utilizzato per disegnare i righelli.
								Guide			(Guides)

									guide
										Guida
											Colore utilizzato per disegnare le guide di rientro. Utilizzato solo se l'opzione draw_normal è presente nell'impostazione 
												indent_guide_options.

									active_guide
										Guida_attiva
										Colore utilizzato per disegnare le guide di rientro per i livelli di rientro contenenti il cursore. Utilizzato solo se l'opzione draw_active è presente nell'impostazione 
											indent_guide_options.

									stack_guide
										Guida allo stack
										Colore utilizzato per disegnare le guide di rientro per i livelli 
											di rientro padre del 
											livello di rientro contenente il cursore. 
										Utilizzato solo se l'opzione draw_active è presente nell'impostazione indent_guide_option
								Parentesi	(Brackets)
										Note
											La corrispondenza delle parentesi è controllata globalmente dall'impostazione.match_brackets

									brackets_options
											Come vengono evidenziate le parentesi quando il cursore è accanto a uno. Accetta un elenco separato da spazi dai seguenti:

										underline
										stippled_underline
										squiggly_underline
										foreground
										bold
										italic

									brackets_foreground
											Colore da utilizzare quando si disegna lo stile specificato da .brackets_options
								Tag			(Tags)
									Note
										Colore da utilizzare quando si disegna lo stile specificato da
										match_tags
									tags_options
										Come vengono evidenziati i tag quando il cursore è all'interno di uno. Accetta un elenco separato da spazi dai seguenti:

										underline

										stippled_underline

										squiggly_underline

										foreground
									tags_foreground

										Colore da utilizzare quando si disegna lo stile specificato da .tags_options
								Ombre		(Shadows)
									shadow
										Il colore dell'ombra utilizzato per mostrare quando un'area di testo può essere orizzontale a spirale.
									shadow_width
										Larghezza dell'ombra in pixel indipendenti dal dispositivo.

							PERSONALIZZAZIONE **						
							APPENDICE COLORI CSS **						
				-----------------------------------------------------			
			4.1.5.Regole di ambito (Scope Rules)
											
								
								Regole di ambito (Scope Rules)
									Le COMBINAZIONI DI COLORI interagiscono con il testo di un file tramite ambiti. Gli AMBITI sono impostati su codice o token di prosa tramite la sintassi. GLI AMBITI SONO STRINGHE PUNTEGGIATE, specificate dal meno al più specifico. 
									Ad esempio, la parola chiave in PHP potrebbe essere specificato tramite il nome dell'ambito 
												.ifkeyword.control.php
													@regola@di@ambito
													@cosa@sono@gli@ambiti



								MATCHING (Abbinamento)
									Le combinazioni di colori applicano colori e stili di carattere agli ambiti facendo corrispondere il punteggiato etichette, a partire dalla prima. La corrispondenza dei prefissi è il modo standard per avere un La combinazione di colori si applica a più sintassi. Invece di corrispondere, la maggior parte delle combinazioni di colori assegnerà invece un colore a . La corrispondenza delle prime una o due etichette in un ambito è più comune. L'inclusione dell'etichetta finale, il nome della sintassi, è rara a meno che un Si desidera eseguire l'override specifica della sintassi.keyword.control.phpkeyword



								Denominazione
										L'autore di sintassi può assegnare qualsiasi ambito desideri a un determinato token. Questo combinato con il fatto che ci sono centinaia di sintassi mantenute dalla comunità significa che può essere difficile sapere quali ambiti prendere di mira. La denominazione degli ambiti è stata stabilita per consentire agli autori di sintassi e combinazioni di colori di utilizzare un insieme comune, per migliore interoperabilità. La sezione Combinazioni di colori fornisce un Set di ambiti di base che gli autori di combinazioni di colori devono sforzarsi di gestire.		
																@DENOMINAZIONE@DEGLI@AMBITI

								Regole di stile
											STYLE RULES
													Ogni regola di stile dell'ambito è costituita da un oggetto contenente chiave, insieme con una o più delle seguenti chiavi facoltative:"scope"

																	(@CHIAVI@DELLE@REGOLE@DI@AMBITO)
													name 
																Nome (arbitrario) della regola di ambito.
														
													foreground	(Primo piano)
																Colore del testo.
													
													
													background
																Colore di sfondo.

													foreground_adjust
																Una regolazione del colore, valida solo con ."foreground""background"

													selection_foreground
																Colore del testo selezionato.
													font_style
																Zero o più degli elementi seguenti, separati da spazi:


																		bold
																		italic
																		glow      4050
																		underline 4074
																		stippled_underline 4075
																		squiggly_underline 4075

																La chiave accetta un elenco separato da spazi di regolatori che sono supportati dal colore minihtml. È solo supportato quando viene specificata anche la chiave e consente quindi modifica di tutti i primi piani utilizzati in combinazione con lo sfondo, senza dover creare regole diverse per ogni permutazione.
																		"foreground_adjust""background"

															

										Evidenziazione della sintassi con hash (HASHED SYNTAX HIGHLIGHTING)
											
											La chiave supporta una modalità speciale denominata Sintassi hash Evidenziazione, in cui ogni token corrispondente all'ambito specificato riceverà un colore univoco da una o più sfumature. Alcuni editori si riferiscono a questo stile di evidenziazione come evidenziazione semantica."foreground"
															@chiave@sintassi@hash

											Per utilizzare l'evidenziazione della sintassi con hash, la chiave deve avere un valore Si tratta di una matrice di due o più colori. Sublime Text creerà 256 diversi Colori che sono interpolazioni lineari (lerp) tra i colori forniti. Le l'interpolazione viene eseguita nello spazio HSL."foreground"
															@utilizzo@sintassi@hash

											Poiché Sublime Text evidenzia i token in un file, creerà un valore hash del token e utilizzarlo per scegliere una delle 256 interpolazioni lineari. Ogni l'istanza di un determinato token utilizzerà lo stesso colore. Ad esempio, ogni istanza di avrebbe lo stesso colore, ma ogni istanza di avrebbe un colore diverso.first_namename

											Affinché l'evidenziazione della sintassi con hash sia più evidente, la differenza di tonalità tra I punti di inizio e di arrivo dovrebbero essere il più distanti possibile. Ecco un esempio dell'uso di blu, viola e rosa per i nomi delle variabili:

												{
					    								"scope": "source - punctuation - keyword",
					    								"foreground": ["hsl(200, 60%, 70%)", "hsl(330, 60%, 70%)"]
													}


								Esempi (EXAMPLES)						
											La seguente regola di stile dell'ambito colorerà tutte le stringhe come verdi:
													 @esempio@di@stile   @esempi@di@stile
																	{
																	    "name": "Strings",				//nome della regola d'ambito
																	    "scope": "string",				//chiave facoltativa
																	    "foreground": "#00FF00"
																	}
											Per applicare uno stile a tutti i numeri come grassetto, corsivo rosso, utilizzare:  @esempio@di@stile

													{
													       "name": "Numbers",						//nome della regola d'ambito
														    "scope": "constant.numeric",
														    "foreground": "#FF0000",
														    "font_style": "bold italic"				//stile
														}
				-----------------------------------------------------
			4.1.6.Personalizzazione (Customization)
							Le combinazioni di colori basate sul formato 
									.sublime-color-scheme 
							sono specificate da Solo nome file, non un percorso di file basato su pacchetto. Ciò consente agli utenti di personalizzare un combinazione di colori sovrascrivendo variabili o globali e aggiungendo regole.  
								(esempio NELLA CARTELLA USER è stato creato un file di personalizzazione del tema
									Monokai creando una compi del file con estensione sublime-color-scheme e
									si chiama ----> Monokai.sublime-color-scheme)

											@dove@si@trovano@le@personalizzazioni@dei@colori
											@personalizzazione@file@sublime-color-scheme
			4.1.7.Appendice: Colori CSS (Appendix: CSS Colors)
				Appendice: Colori CSS
				Appendix: CSS Colors
				aliceblue
				antiquewhite
				aqua
				aquamarine
				azure
				beige
				bisque
				black
				blanchedalmond
				blue
				blueviolet
				brown
				burlywood
				cadetblue
				chartreuse
				chocolate
				coral
				cornflowerblue
				cornsilk
				crimson
				cyan
				darkblue
				darkcyan
				darkgoldenrod
				darkgray
				darkgreen
				darkgrey
				darkkhaki
				darkmagenta
				darkolivegreen
				darkorange
				darkorchid
				darkred
				darksalmon
				darkseagreen
				darkslateblue
				darkslategray
				darkslategrey
				darkturquoise
				darkviolet
				deeppink
				deepskyblue
				dimgray
				dimgrey
				dodgerblue
				firebrick
				floralwhite
				forestgreen
				fuchsia
				gainsboro                                                 
				ghostwhite
				gold
				goldenrod
				gray
				green
				greenyellow
				grey
				honeydew
				hotpink
				indianred
				indigo
				ivory
				khaki
				lavender
				lavenderblush
				lawngreen
				lemonchiffon
				lightblue
				lightcoral
				lightcyan
				lightgoldenrodyellow
				lightgray
				lightgreen
				lightgrey
				lightpink
				lightsalmon
				lightseagreen
				lightskyblue
				lightslategray
				lightslategrey
				lightsteelblue
				lightyellow
				lime
				limegreen
				linen
				magenta
				maroon
				mediumaquamarine
				mediumblue
				mediumorchid
				mediumpurple
				mediumseagreen
				mediumslateblue
				mediumspringgreen
				mediumturquoise
				mediumvioletred
				midnightblue
				mintcream
				mistyrose
				moccasin 				
		4.2.THEMES (TEMI) todo: da finire !!

					Format
						Un file .sublime-theme contiene un singolo documento JSON. Il documento dovrebbe essere un oggetto contenente una chiave rules (regole) con il valore di 3179 una serie di regole. Una chiave opzionale "variabili" con un oggetto È possibile aggiungere coppie variabili/valore. 3179	
								(il file di formato contiene una CHIAVE RULES con valore 3179  come ad esempio
									dentro la cartella USER il file : Default Dark.sublime-theme)
								
								@file@formato @crea@file@formato

						Di seguito è riportato un esempio di file .sublime-theme, che mostra il formato. Un tema completo avrà molte più regole per coprire tutti gli elementi utilizzati in l'interfaccia utente.

					Terminology

					General Information

					Inheritance

					Variables

					Colors

					Font Sizes

					Attributes

					Settings

					Properties

					Elements

					Deprecated

					Obsolete

					Customization
		
		4.3.Menu **
		
		4.4.Ambienti API **
		
		4.5.Guida di riferimento alle API **
		
		4.6.Syntax Definitions - Definizioni della sintassi # todo: parziale da finire #
				NOTE
					si trova qui:
					https://www.sublimetext.com/docs/syntax.html
					codice ----> @Syntax@Sintassi_(definizione della sintassi)
					 				 @Sintassi_(puo utilizzare file @.sublime-syntax 
					 				 	che @.tmLanguage)
				 				 	 @YAML@file_(MODELLO bASE)


				Versione:
					dev 4.0 3.2 3.1 3.0
					Sublime Text può utilizzare sia file 
						.sublime-syntax 
						che 
						.tmLanguage 
					per l'evidenziazione della sintassi. 
					Questo documento descrive i file con sintassi sublime
				Overview - Panoramica
					Sublime file di sintassi sono file YAML con una piccola intestazione, seguito da un elenco di contesti. Ogni contesto ha un elenco di modelli che Descrivere come evidenziare il testo in tale contesto e come modificare l'attuale Testo.

					Ecco un piccolo esempio di un file di sintassi progettato per evidenziare C.
						@YAML@file.di.sintassi_(modello di esempio)
							%YAML 1.2
									---

									//questa è l'intestazione del menu a C
									name: C
									file_extensions: [c, h]			// sono le estensioni dei file dei menu a discesa
									scope: source.c
									
									/*questo è il contesto a main 
										contesto principale dove verra utilizzato
									//--------------------------------------------------//
									//note con 
											/b = limiti delle parole corrispondenti non cosiderate
												  come chiavi es. \b(if|else|for|while)\b
									*/
									contexts:
								  	main:
								    	+ match: \b(if|else|for|while)\b
								      	scope: keyword.control.c   //assegna l'ambito al file






					Al suo interno, una definizione di sintassi assegna ambiti (ad esempio, e.g., keyword.control.c ) a aree del testo. Questi ambiti vengono utilizzati dalle combinazioni di colori per evidenziare il Testo.
							@ambiti@aree.testo@utilizzo@combinazione@colori
							@ambiti@evidenziare.testo

					Questo file di sintassi contiene un contesto, main , che corrisponde alle parole [if, else, for, while] , e assegna loro l'ambito keyword.control.c. 

					Il nome del contesto speciale: ogni sintassi deve definire un contesto principale, come Verrà utilizzato all'inizio del file.

					The match key is a regex, supporting features from the Oniguruma regex engine. In the above example, \b is used to ensure only word boundaries are matched, to ensure that words such as elsewhere are not considered keywords.

					La chiave è una regex, che supporta le funzionalità della regex del motore Oniguruma . In l'esempio precedente
						\b
					viene utilizzato per garantire che solo i limiti delle parole corrispondano, per garantire che parole come tali non siano considerate parole chiave.
							@regex@chiave@YAML_(LA CHIAVE)

					Si noti che a causa della sintassi YAML, i caratteri di tabulazione non sono consentiti all'interno di file 
						.sublime-syntax.
							@YAML@tabulazioni_(Non sono ammessi tabulazioni)


				Header
						Le chiavi consentite nell'area dell'intestazione sono:
									@YAML@header_(header intestazioni le chiavi)

							name
								Definisce il nome visualizzato per la sintassi nel menu. È facoltativo e verrà derivato dal nome del file se non utilizzato.
									@YAML@header@name_(intestazione nome sintassi menu facoltativo)
									@YAML@name_(se non definito è il file utilizzato)
							file_extensions

												@YAML@file_extensions_(definizione delle estensioni dei file)
									Un elenco di stringhe, definendo le estensioni di file questa sintassi deve essere utilizzata per la lista
										.Extensions
									Le estensioni elencate qui verranno mostrate nei menu a discesa della finestra di dialogo dei file su alcuni sistemi operativi.

									Se un file non ha un nome di base, e.g. 
											.gitignore 
									il parametro È necessario specificare l'intero nome del file, inclusa l'interlinea.
							hidden_file_extensions
									@4075
										Un elenco di stringhe, definendo anche le estensioni di file questa sintassi dovrebbe essere utilizzata per. Queste estensioni non sono elencate nelle finestre di dialogo dei file.
												@YAML@hidde_file_extensions_(estensione nascoste o non elencate)
							first_line_match
									Quando un file viene aperto senza un'estensione riconosciuta, la prima riga del parametro Il contenuto del file verrà testato rispetto a questa regex, per vedere se la sintassi dovrebbe essere applicato
											@YAML@first_line_match_(primo file aperto senza estensione prima riga del parametro)
							scope
									Ambito predefinito assegnato a tutto il testo del file

										@YAML@scope_(ambito predefinito del file)
							version
									Un numero intero, 1 o 2 , che controlla la compatibilità con le versioni precedenti. Le nuove sintassi dovrebbero essere destinate a 2, in quanto corregge alcuni incoerenze nella modalità di applicazione degli ambiti.
									
										@YAML@version_(interi per le versioni)
							extends
									
									Una stringa di una sintassi di base da cui questa sintassi deve ereditare. Sintassi di base deve essere specificato utilizzando il suo percorso del pacchetto, ad esempio 
										Packages/JavaScript/JavaScript.sublime-syntax. 
									Per una panoramica dell'ereditarietà della sintassi, vedere Ereditarietà.


										@YAML@extends_(eredarieta della sintassi)
							hidden

									Le definizioni di sintassi nascoste non verranno visualizzate nel menu, ma possono comunque essere assegnati da plugin o inclusi da altre definizioni di sintassi.

										@YAML@hidden_(sintassi nascoste non visualizzate nel menu)


				
				Contexts *** todo: da finire vedere https://www.sublimetext.com/docs/syntax.html#overview
					Meta Patterns
				
					Match Patterns
				
					Include Patterns
				
					Prototype Context
				
				Including Other Files
				
				Variables
				
				Inheritance
				
				4075
				Selected Examples
				
				Testing
				
				Compatibility
				
				4075
				Overview
		
		4.7.Denominazione dell'ambito **
		
		4.8.Guida di riferimento minihtml **
		
		4.9.Guida al porting dei plugin **

		RIASSUNTO
				LE PERSONALIZZAZIONI	
						si trovano nella cartella User ed i file sono:

				personalizzazioni dei colori						: Monokai.sublime-color-scheme_(riassunto personalizzazioni)
				pacchetto di controllo								: Package Control.sublime-settings