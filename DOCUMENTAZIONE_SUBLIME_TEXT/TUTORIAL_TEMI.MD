# TEMI DI SUBLIMETEXT
## NOTE
		Il file TUTORIAL_TEMI.MD  definisce e spiega il tutorial di sublimetext secondo
		la documentazione ufficiale che si trova in questa pagina web:
#### WEB
		https://www.sublimetext.com/docs/themes.html
#### DOCUMENTAZIONE_TEMI
				@temi_(temi di sublime text, pulsanti elenchi e barra laterale)
		DOCUMENTAZIONETemiVersione: dev 4.0 3.2 3.1 3.0
		L'aspetto dell'interfaccia di Sublime Text è controllato dai @temi. Il termine tema si riferisce strettamente all'@aspetto dell'@interfaccia utente: @pulsanti, elenchi di selezione, @barra laterale, @schede e così via. L'evidenziazione del codice sorgente, del markup e della prosa è controllato da una combinazione di colori.
		Il motore del tema per Sublime Text è basato sulla grafica raster. I PNG sono utilizzati per Previeni la degradazione della trama e fornisci un controllo alfa completo. Ogni elemento del L'interfaccia utente può avere fino a quattro livelli di trame o riempimenti applicati, con proprietà per Controlla l'opacità e la spaziatura interna. Le proprietà impostate su ogni elemento possono essere Modificato in modo condizionale in base all'interazione e alle impostazioni dell'utente.
		I temi Sublime Text sono implementati tramite il formato .sublime-theme. Lo è un formato JSON che specifica le regole per la corrispondenza degli elementi e la modifica dei relativi apparenza.
## Format (Formato)
	
### FILE_JSON+CHIAVE:
		Un file .sublime-theme contiene un singolo documento JSON. Il documento dovrebbe essere un oggetto contenente una chiave "rules" con il valore di 3179 una serie di regole. Una chiave opzionale "variabili" con un oggetto È possibile aggiungere coppie variabili/valori contenenti variabili. 3179

		Di seguito è riportato un esempio di file .sublime-theme, che mostra il formato. Un tema completo avrà molte più regole per coprire tutti gli elementi utilizzati in l'interfaccia utente.

			@ESEMPIO_@TEMA_@COMPLETO
				[
				    // Set up the textures for a button
				    {
				        "class": "button_control",
				        "layer0.tint": "#000",
				        "layer0.opacity": 1.0,
				        "layer1.texture": "Theme - Example/textures/button_background.png",
				        "layer1.inner_margin": 4,
				        "layer1.opacity": 1.0,
				        "layer2.texture": "Theme - Example/textures/button_highlight.png",
				        "layer2.inner_margin": 4,
				        "layer2.opacity": 0.0,
				        "content_margin": [4, 8, 4, 8]
				    },
				    // Show the highlight texture when the button is hovered
				    {
				        "class": "button_control",
				        "attributes": ["hover"],
				        "layer2.opacity": 1.0
				    },
				    // Basic text label style
				    {
				        "class": "label_control",
				        "fg": [240, 240, 240],
				        "font.bold": true
				    },
				    // Brighten labels contained in a button on hover
				    {
				        "class": "label_control",
				        "parents": [{"class": "button_control", "attributes": ["hover"]}],
				        "fg": [255, 255, 255]
				    }
				]
### REGOLE:
		Il contenuto principale di un tema è una serie di regole. Ogni oggetto regola Contiene una chiave utilizzata per trovare una corrispondenza con un elemento. Oltre a , la corrispondenza può essere ulteriormente limitata specificando , , e chiavi. Le proprietà influiscono sul l'aspetto o il comportamento dell'elemento."class""class""attributes""settings""parents""platforms"
				Le variabili consentono di riutilizzare i valori in regole diverse. Le variabili possono
				contengono qualsiasi tipo di sintassi, ma possono essere referenziati solo dalle chiavi di primo livello in una regola.
### NOME DI CLASSE:
				La maggior parte degli elementi ha un singolo nome di classe, anche se alcuni ne hanno più di uno per consentono sia uno stile generico che specifico. Ad esempio, la classe può essere utilizzata per impostare gli stili per il completamento automatico e I popup HTML, tuttavia, possono essere utilizzati per Indirizza solo il popup di completamento automatico. Più valori sono separati da uno spazio. Quando una regola specifica PIÙ NOMI DI CLASSE, tutti devono essere presenti in Elemento per la regola da applicare.popup_controlpopup_control auto_complete_popup"class"



				"attributes"	= indicano stato iterazione utente
					sono impostati da Sublime Text, e indicano lo stato dell'utente interazione, o altre informazioni sulla natura di un elemento. Il valore è una matrice di stringhe. Gli esempi includono , e ."hover""pressed""dirty"

				"settings"		= filtro regole
					Utilizza i valori dei file .sublime-settings per filtrare le regole. Ciò consente agli autori di temi di dare agli utenti la possibilità di modificare un tema. Temi possono definire le proprie impostazioni, ma ci sono una manciata di impostazioni "predefinite" che dovrebbe essere sostenuto, se possibile. Per ulteriori informazioni, vedere Impostazioni.

					Il valore della chiave può essere uno dei seguenti:"settings"
	
	
				matrice di stringhe - array of strings
	
					Ogni stringa è il nome delle impostazioni booleane. Per verificare la presenza di un valore, anteporre al nome dell'impostazione un anteposto .false!
	
					Esempio:.["bold_folder_labels", "!always_show_minimap_viewport"]
	

				object - oggetto

					Ogni tasto è il nome di un'impostazione. Un valore può essere un valore booleano, una stringa o una matrice di stringhe. Se viene utilizzato un array di stringhe, l'impostazione verrà abbinata se Qualsiasi stringa nella matrice corrisponde al valore dell'utente. Quando si confronta con un string, l'impostazione dell'utente verrà forzata a una stringa vuota quando non è impostata.


					Example: .{"bold_folder_labels": true, "file_tab_style": "rounded"}

## Terminology (Terminologia)

## General Information (Generalità)

## Inheritance (Eredità)

## Variables (Variabili)

## Colors (Colori)

## Font Sizes (Dimensioni dei caratteri)

## Attributes (Attributi)

## Settings (Impostazioni)

## Properties (Proprietà)

## Elements (Elementi)

## Deprecated (Deprecato)

## Obsolete (Obsoleto)

## Customization (Personalizzazione)

