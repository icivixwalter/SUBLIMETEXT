goto Note:
	Dalla cartella User di SUBLIMETEXT vengono copiati tutti i file
	delle impostazioni nella cartella di arrivo User di SUBLIMETEXT

	@REM "../S           Copia directory e sottodirectory tranne quelle vuote."
	@REM "../E           Copia directorye sottodirectory, comprese quelle vuote."
	@REM "../C           Continua a copiare anche in caso di errori."
	@REM "../H           Copia anche i file nascosti e di sistema."
	@REM "../O           Copia le informazioni di proprietà e ACL."
	@REM "../R           Sovrascrive i file di sola lettura."
	@REM "../D:m-d-y     Copia i  file modificati a partire dalla data"
	@REM "../V           Verifica ogni nuovo file."



:Note
@REM COPIA_IMPOSTAZIONI_USER.bat





@REM    								PARAMETRI
@REM		directory y dove archiviare i dati = path di destinazione + nome file
@REM .......................................................
SET path_PART_User_S="C:\Users\icivi\AppData\Roaming\Sublime Text\Packages\User\"
SET path_PART_Terminal_S="C:\Users\icivi\AppData\Roaming\Sublime Text\Packages\Terminal\"

SET path_ARRIVO_User_s="C:\CASA\LINGUAGGI\SUBLIMETEXT\IMPOSTAZIONI_USER\User\"
SET path_ARRIVO_Terminal_s="C:\CASA\LINGUAGGI\SUBLIMETEXT\IMPOSTAZIONI_USER\Terminal\"

@REM		directory y dove archiviare i dati = path di destinazione
@REM .......................................................


echo OFF
CLS
	cd %path_PART_S%


	@echo "PATH DI PARTENZA"
	@echo "---------------------------------------------------"
	@echo .
	@echo "controllo path di partenza USER"
	@echo %path_PART_User_S%
	@echo .
	@echo "controllo path di partenza TERMINAL"
	@echo %path_PART_Terminal_S%
	@echo .
	@echo .
	@echo "controllo path di ARRIVO  USER "
	@echo %path_ARRIVO_User_s%
	@echo .
	@echo "---------------------------------------------------"

	@REM  copio USER 
	@REM  -----------------------------------------------------

		CD %path_PART_User_S%
		DIR 
		xcopy *.* %path_ARRIVO_User_s% /d /y 

	@REM  -----------------------------------------------------


	@REM  copio TERMINAL 
	@REM  -----------------------------------------------------

		CD %path_PART_Terminal_S%
		DIR 
		xcopy *.* %path_ARRIVO_Terminal_s% /d /y 

	@REM  -----------------------------------------------------



					@REM Ritardo per 10 secondi
					@choice /C:X /N /T:10 /D:X > NUL		



