@REM attenzione per copiare le impostazioni di sublimetext occorre avere il salvataggio di SUBLIMETEXT
@REM in questa path si a casa che in ufficio: C:\Users\walter.rossi\AppData\Roaming\Sublime Text\Packages\User


:: -------- sublimetex a casa
xcopy /s /i /y /e /q "C:\Users\icivi\AppData\Roaming\Sublime Text\Packages\" "c:\Casa\LINGUAGGI\SUBLIMETEXT\IMPOSTAZIONI_USER"
:: -------- sublimetex in ufficio
xcopy /s /i /y /e /q "C:\Users\walter.rossi\AppData\Roaming\Sublime Text\Packages\" "c:\Casa\LINGUAGGI\SUBLIMETEXT\IMPOSTAZIONI_USER_UFFICIO"

