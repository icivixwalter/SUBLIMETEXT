//IMPOSTA_SUBLIMETEXT_Mariana.md
//MONOKAI - COLORI PERSONALIZZATI - PER MARIANNA
        //@impostazioni@Mariana_(impostazioni colori dello @schermo Mariana)

    //FILE:  C:\Users\icivi\AppData\Roaming\Sublime Text\Packages\User\Mariana.sublime-color-scheme
        {
             "name": "Example COLORE ACQUA",
                /* NOTE



                    
                        le impostazioni personalizzate del Monokai nel file
                        Monokai.sublime-color-scheme
                        La documentazione dei colori si trova qui:
                            Documentation at https://www.sublimetext.com/docs/color_schemes.html
                            per definire i colori 
                                https://www.w3schools.com/html/html_colors_hsl.asp#:~:text=HSL%20Color%20Values&text=0%25%20means%20a%20shade%20of,%2C%20and%20100%25%20is%20white.


                        I COLORI POSSONO AVERE QUESTE NOTAZIONI:
                            Notazione funzionale HSL
                            Notazione funzionale RGBA

                            elenco colori sublimeText

                            Named colors: white, tan, etc

                                    Shorthand hex: #fff

                                    Shorthand hex with alpha: #fff8

                                    Full hex: #ffffff

                                    Full hex with alpha: #ffffff80

                                    RGB functional notation: rgb(255, 255, 255)

                                    RGBA functional notation: rgba(255, 255, 255, 0.5)

                                    HSL functional notation: hsl(0, 100%, 100%)

                                    HSLA functional notation: hsla(0, 100%, 100%, 0.5)

                                    HWB functional notation: hwb(0, 20%, 20%), hwb(0, 20%, 20%, 0.5)


                        */  
            //LE VARIABILI =
                "variables":{

                    /* LE IMPOSTAZIONI DI COLORE NELLE VARIABILI
                        //---------------------------------------------------------------//

                            Colore  Valore  Definizione
                            Nero    #000000 Assenza di tutti colori.
                            Bianco  #FFFFFF Presenza di tutti i colori.
                            Rosso   #FF0000 Presenza solo del rosso.
                            Giallo  #FFFF00 Rosso + verde – blu.
                            */
                            //impostazioni di base di sblime text 

                                "celeste": "hsl(185, 68%, 81%)",
                                "azzurro": "hsl(39, 800%, 50%)",

                                
                                "blue": "hsl(210, 50%, 60%)",
                                "blue-vibrant": "hsl(210, 60%, 60%)",
                                "blue2": "hsla(210, 13%, 40%, 0.7)",
                                "blue3": "hsl(210, 15%, 22%)",
                                "blue4": "hsl(210, 13%, 45%)",
                                "blue5": "hsl(180, 36%, 54%)",
                                "blue6": "hsl(221, 12%, 69%)",
                                
                                "green": "hsla(153, 80%, 40%, 1)",
                                "green68": "hsl(114, 31%, 68%)",

                                "red": "hsl(357, 79%, 65%)",
                                "red2": "hsl(13, 93%, 66%)",
        
                                
                                "orange": "hsl(32, 93%, 66%)",
                                "orange2": "hsl(32, 85%, 55%)",
                                "orange3": "hsl(40, 94%, 68%)",
                                
                                "yellow": "hsl(39, 100%, 50%)",
                                "yellow4": "hsl(55, 90%, 75%)",

                                
                                "white": "hsl(0, 0%, 100%)",
                                "white2": "hsl(0, 0%, 97%)",
                                "white3": "hsl(219, 28%, 88%)",
                            
                                
                                "acqua" : "#00FFFF"                 //creato nuovo

                        //---------------------------------------------------------------//

                        },
                
            //LE GLOBALI = VARIABILI GLOBALI
                    "globals": {
                                /*
                                    NEI GLOBALS IMPOSTO
                                        foreground  = colore testo acqua
                                        background  = sfondo nero       
                                        selection   = seleziono il testo in rosso       
                                */
                            //
                            "foreground": "var(yellow4)",
                            //"foreground": "var(orange)",
                            "background": "var(black)",
                            //"selection": "var(green)"
                            
                            //@selezione@marianana_(@comando per la selezione in @azzurro o @blu per @casa)
                            "selection": "var(azzurro)"
                          
                            },

            //RULES = SONO LE REGOLE 
                "rules":[
                            //@regole_(INSERISCO NUOVE REGOLE, commenti, costanti)

                             {
                                            "name": "Comment",
                                            "scope": "comment, punctuation.definition.comment", //??
                                            "foreground": "green"   //@commenti in @verde
                                            //"foreground": "#888888"  //commenti gialli

                                        },
                                        {
                                            //regole per le stringhe
                                            "name": "String",
                                            "scope": "string",
                                            "foreground": "hsla(40, 100%, 50%, 1",
                                        },

                                    
                                        {
                                            //regole per i numeri @costanti
                                            "name": "Number",
                                            "scope": "constant.numeric",
                                            "foreground": "#7F00FF",
                                            "font_style": "italic",     //@stile@costanti
                                        }
                            
                        ]

            }




        //MONOKAI - UFFICIO
            /* MONOKAY UFFICIO SCHEMA PERSONALIZZATO - SELEZIONE VERDE 
             ---------------------------------------------------------------------------------------------------------------
                            /* MONOKAY UFFICIO SCHEMA PERSONALIZZATO
                    - FONDO NERO 
                    - COLORE PRIMO PIANO BIANCO - 
                    - SELEZIONE VERDE.
                    
                    - PATH: C:\Users\walter.rossi\AppData\Roaming\Sublime Text\Packages\User\
                    - FILE: Monokai.sublime-color-scheme


                QUESTO E' IL FILE SCHEMA COLORI MONOKAY DELL'UTENTE
                questo file viene aperto con 

                        Preference -----> Customize color scheme

                        Sono le IMPOSTAZIONI PREFERITE DELL'USER non quelle di sistema
                        si trova in questa path e file :
            
                        path        : C:\Users\walter.rossi\AppData\Roaming\Sublime Text\Packages\User
                        file        : Monokai.sublime-color-scheme



                Queste impostazioni dell'utente SOVRASCRIVONO quelle GENERALI.

                VEDI : Documentation at https://www.sublimetext.com/docs/color_schemes.html
        */

                            {
                                "name": "Example Color Scheme",
                               "variables":

                              //                LE VARIABILI
                                //------------------------------------------------------------------------------//
                                {
                                    /* 

                                Colore  Valore  Definizione
                                Nero    #000000 Assenza di tutti colori.
                                Bianco  #FFFFFF Presenza di tutti i colori.
                                Rosso   #FF0000 Presenza solo del rosso.
                                Giallo  #FFFF00 Rosso + verde – blu.
                                */
                                //impostazioni di base di sblime text 

                                    
                                    "acqua" : "#00FFFF",                 //creato nuovo attenzione alla virgola
                                     
                                    
                                    //COMBINAZIONE DEI COLORI
                                    //creato con l'esempio combinazione dei colori in https://www.sublimetext.com/docs/color_schemes.html#selection
                                    // ED HO INSERITO TUTTE LE IMPOSTAZIONE CONTRASSEGNATE CON QUESTO CODICE:
                                    //@CREAZIONE.24.02.2023

                                             "green": "hsla(153, 80%, 40%, 1)",
                                             "black": "#111",
                                             "white": "rgb(242, 242, 242)",

                                             "yellow": "hsl(54, 70%, 68%)",         //AGGIUNTO ANCHE IL GIALLO
                                             "orange3": "hsl(47, 100%, 79%)",
                                },
                                
                                //              GLOBALS
                                //------------------------------------------------------------------------------//
                                "globals": 
                                {   
                                    //@CREAZIONE.24.02.2023
                                            "background": "var(black)",                     //@COLORE @SFONDO
                                    "foreground": "var(white)",                     //@COLORE @PRIMO @PIANO DEL @TESTO 
                                    
                                            //colore del testo selezionato impostato a Green
                                    "selection_foreground": "var(green)",                       //@TESTO @SELEZIONATO @CAMBIA@COLORE@TESTO@SELEZIONATO@SELEZIONE@VERDE

                                    "caret": "color(var(white) alpha(0.8))"         //Colore per gli @spazi @vuoti, 
                                                                                                                                    //quando viene eseguito il rendering. 
                                                                                                                                    //Se non specificato, il valore predefinito è il
                                                                                                                                    //primo piano con un'opacità pari a 0,35.



                                },
                                

                                //              RULES = LE @REGOLE
                                //------------------------------------------------------------------------------//
                                "rules":
                                [       


                                            //QUESTE IMPOSTAZIONI si trovano in 
                                            //COMBINAZIONE COLORI
                                            //qui le istruzioni per la combinazione dei colori nel file Monokai.sublime-color-scheme
                                            //https://www.sublimetext.com/docs/color_schemes.html#global-settings

                                            //COLORE DELLE VARIABILI
                                    //----------------------------------------------------------//
                                            //NOMI DELLE VARIABILI colorate in blu, viola e rosa per i nomi delle variabili:
                                                {
                                                "scope": "source - punctuation - keyword",
                                                "foreground": ["hsl(200, 60%, 70%)", "hsl(330, 60%, 70%)"]
                                                },
                                    //----------------------------------------------------------//

                                            //@COLORE DEI @COMMENTI
                                    //----------------------------------------------------------//
                                            {       
                                        "name": "Comment",
                                        "scope": "comment",
                                        "foreground": "color(var(black) blend(#fff 0%))" // i commenti sono in bianco
                                            //foreground MODIFICATO da #fff 50% --->0%   @CREAZIONE.24.02.2023
                                    },
                                    //----------------------------------------------------------//

                                    //COLORE DEL TESTO BASE @CREAZIONE.24.02.2023 = TESTO PRIMO PIANO
                                    //----------------------------------------------------------//
                                      {
                                        "name": "String",
                                        "scope": "string",
                                        "foreground": "var(yellow)",        //@TESTO @GIALLO MA SE INSERISCE (green) diventa verde
                                        },
                                    //----------------------------------------------------------//
                                        
                                            /*  LA SELEZIONE 
                                                    NON FUNZIONA IL CAMBIO DI COLORE DELLA SELEZIONE ??*/
                                      
                                      //----------------------------------------------------------//
                                            {   "name": "selection",
                                                "scope": "selection",
                                                "selection": "var(yellow)",
                                            },  
                                            
                                        
                                ] //rules *** fine
                            }




                            /* Impostazioni globali @CREAZIONE.24.02.2023
                            //  ----------------------------------------------------------------------------------------------------------//
                                    Le seguenti impostazioni globali vengono inserite nell'oggetto con la chiave."globals"
                                        si trovano qui: https://www.sublimetext.com/docs/color_schemes.html#selection

                                    background"     = "Sfondo" 
                                                    Colore di sfondo predefinito.

                                    foreground      "Primo piano" 
                                                        Colore predefinito per il testo.

                                    invisibles      "Invisibili" 
                                                    Colore per gli spazi vuoti, quando viene eseguito il rendering. 
                                                    Se non specificato, il valore predefinito è il primo piano con un'opacità pari a 0,35.

                                    "caret" 
                                    Il colore del caret

                                    
                                    "block_caret"   
                                                Il colore del cursore quando si utilizza un cursore a blocchi

                                    "block_caret_border" 
                                                Il colore del bordo per un punto di inserimento del blocco

                                    "block_caret_underline" 
                                                Il colore della sottolineatura del punto di osservazione del 
                                                blocco viene disegnato come quando si sovrappone a una selezione

                                    "block_caret_corner_style" 
                                                Lo stile degli angoli da utilizzare per i carretti a blocchi. 
                                                Le opzioni includono: (impostazione predefinita) o .roundcutsquare

                                    "block_caret_corner_radius" 
                                                Raggio da utilizzare quando è o .block_caret_corner_styleroundcut

                                    "line_highlight" 
                                                Colore di sfondo della riga contenente il cursore. 
                                                Utilizzato solo quando l'impostazione highlight_line è abilitata.

                                 //----------------------------------------------------------------------------------------------------------//
                                /*
                                         ---------------------------------------------------------------------------------------------------------------
            /*