/* KEY_BINDING_TERMINUS
    sono le impostazioni per aprire il 
        @terminale@interno_(@terminus che viene aperto dentso sublimetext)
        FILE:
            C:\Users\icivi\AppData\Roaming\Sublime Text\Packages\User\Default (Windows).sublime-keymap
    

    */
            [
            	//apro il terminale esterno
                //--------------------------------------------------------------//
            	   { "keys": ["ctrl+shift+t"], "command": "open_terminal"},
                //--------------------------------------------------------------//

            	// Open a terminal tab at current file directory all'interno di sublimeText
                //--------------------------------------------------------------//
                    {
                        "keys": ["ctrl+alt+t"], "command": "terminus_open", "args": {
                            "cwd": "${file_path:${folder}}",
                            "title": "Command Prompt",
                            "panel_name": "Terminus"
                        }
                    },

                //--------------------------------------------------------------//
                



            ]
