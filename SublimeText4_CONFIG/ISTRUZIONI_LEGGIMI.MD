# ISTRUZIONI – Sincronizzare Sublime Text 4 tra CASA e UFFICIO

Questa cartella contiene una copia completa della configurazione di Sublime Text 4
(impostazioni, scorciatoie, menu, build, pacchetti e librerie).

Cartella reale di Sublime sul PC:   `%APPDATA%\Sublime Text`
(cioè `C:\Users\<utente>\AppData\Roaming\Sublime Text`)

Cartella del repository (uguale a CASA e in UFFICIO):  `C:\CASA\LINGUAGGI\SUBLIMETEXT`
Repository GitHub:  https://github.com/icivixwalter/SUBLIMETEXT

---

## I FILE .BAT DI GIT – cartella `C:\CASA\LINGUAGGI\SUBLIMETEXT\GIT_BAT`

Tutti si posizionano da soli nella cartella principale del repo: basta il doppio clic.

| File                                   | Cosa fa                                                         |
|----------------------------------------|-----------------------------------------------------------------|
| `git_STATUS.BAT`                       | Mostra cosa è cambiato (non modifica nulla)                     |
| `git_PULL.BAT`                         | **Scarica** da GitHub le modifiche fatte sull'altro PC          |
| `git_COMMIT.BAT`                       | Salva in locale tutte le modifiche (add + commit)               |
| `git_PUSH.BAT`                         | **Invia** su GitHub i commit salvati                            |
| `git_STATUS+PULL+ADD+COMMIT+PUSH.BAT`  | **TUTTO IN UNO**: commit locale → pull → push. Quello da usare di solito |
| `git_OpenGitHub.bat`                   | Apre la pagina del repo su GitHub                               |

Se un bat trova un errore si ferma e scrive `*** ERRORE ...`: leggere il messaggio
sopra. Il caso più comune è un PUSH "rejected": eseguire prima `git_PULL.BAT`.

---

## I DUE FILE .BAT – QUALE USARE?

| File                        | Direzione                         | Quando si usa                                  |
|-----------------------------|-----------------------------------|------------------------------------------------|
| `AGGIORNA_DA_SUBLIME.bat`   | Sublime  ➜  questa cartella (repo) | Sul PC dove HAI MODIFICATO le impostazioni      |
| `RIPRISTINA_SUBLIME.bat`    | questa cartella (repo)  ➜  Sublime | Sul PC dove VUOI RICEVERE le impostazioni       |

**Regola da ricordare:**

- **AGGIORNA** = *salvo* le mie impostazioni nel repo  → poi **PUSH**
- **RIPRISTINA** = *carico* le impostazioni dal repo → prima **PULL**

> ⚠️ Non usare mai AGGIORNA sul PC "vecchio" prima di aver fatto RIPRISTINA:
> sovrascriveresti nel repo le impostazioni buone con quelle vecchie.

---

## CASO 1 – Ho modificato le impostazioni a CASA e le voglio in UFFICIO

### A CASA
1. Chiudi Sublime Text (non è obbligatorio, ma è più sicuro).
2. Doppio clic su **`AGGIORNA_DA_SUBLIME.bat`**
   → copia la configurazione attuale di Sublime in questa cartella.
3. Doppio clic su **`GIT_BAT\git_STATUS+PULL+ADD+COMMIT+PUSH.BAT`**
   → salva e invia tutto su GitHub.

### IN UFFICIO
1. Doppio clic su **`GIT_BAT\git_PULL.BAT`** (scarica le modifiche da GitHub).
2. **Chiudi Sublime Text** (obbligatorio: se è aperto il bat si ferma e avvisa).
3. Doppio clic su **`RIPRISTINA_SUBLIME.bat`**
   → prima fa un backup della configurazione dell'ufficio, poi copia quella del repo.
4. Apri Sublime Text: le impostazioni sono attive.

---

## CASO 2 – Ho modificato le impostazioni in UFFICIO e le voglio a CASA

È lo stesso procedimento al contrario:

- in UFFICIO: **AGGIORNA_DA_SUBLIME.bat** → commit → **PUSH**
- a CASA: **PULL** → chiudi Sublime → **RIPRISTINA_SUBLIME.bat**

---

## PRIMA INSTALLAZIONE SU UN PC NUOVO

1. Installa Sublime Text 4 (https://www.sublimetext.com).
2. Aprilo una volta e poi chiudilo (così crea la cartella `%APPDATA%\Sublime Text`).
3. Clona il repo nella cartella giusta (da un prompt dei comandi):
   `cd /d C:\CASA\LINGUAGGI` e poi
   `git clone https://github.com/icivixwalter/SUBLIMETEXT.git SUBLIMETEXT`
4. Entra in `SublimeText4_CONFIG` e lancia **`RIPRISTINA_SUBLIME.bat`**.
5. Riapri Sublime Text.

---

## SE QUALCOSA VA STORTO – Tornare indietro

`RIPRISTINA_SUBLIME.bat` salva sempre la configurazione precedente in:

```
%APPDATA%\Sublime Text_BACKUP_AAAAMMGG
```

Per tornare indietro:
1. Chiudi Sublime Text.
2. Apri `%APPDATA%` (Win+R → scrivi `%APPDATA%` → Invio).
3. Rinomina `Sublime Text` in `Sublime Text_ERRATA`.
4. Rinomina `Sublime Text_BACKUP_AAAAMMGG` in `Sublime Text`.
5. Riapri Sublime Text.

---

## DOPO IL RIPRISTINO – Pulsanti e barre da controllare

Alcune cose **non sono impostazioni** ma stato della finestra (salvato in `Local\`,
che NON viene copiato). Su un PC nuovo, o se spariscono, vanno riattivate a mano
dal menu **View**:

| Cosa manca                                         | Come riattivarlo                                  |
|----------------------------------------------------|---------------------------------------------------|
| **Pulsante apri/chiudi sidebar** (in basso a sinistra) | View → **Show Status Bar** (il pulsante sta nella barra di stato) |
| Sidebar (menu verticale a sinistra con le cartelle) | View → Side Bar → Show Side Bar, oppure **Ctrl+K poi Ctrl+B** |
| Schede dei file aperti (tab)                        | View → **Show Tabs**                              |
| Minimappa a destra                                  | View → Show Minimap                               |
| Menu orizzontale (File, Edit, ...)                  | premi **Alt**, poi View → Show Menu               |

**Barra di stato e tab SEMPRE visibili (plugin automatico):**
il plugin `Packages\User\Mostra_BarraStato_Tab.py` riattiva da solo la barra di stato
e le schede (tab) in ogni finestra e in ogni progetto. Se ti servisse nasconderle,
rinomina il file in `Mostra_BarraStato_Tab.py.OFF` e riavvia Sublime.

**Il pulsante della sidebar:**
- è l'icona in **basso a sinistra**, nella barra di stato;
- un clic **chiude** la sidebar (scompare verso sinistra), un altro clic la **riapre**;
- è attivato in `Preferences.sublime-settings` con `"show_sidebar_button": true`,
  ma si vede **solo se la barra di stato è visibile**;
- grazie al plugin la barra di stato è sempre visibile, quindi il pulsante c'è sempre.

---

## COSA C'È (E COSA NON C'È) IN QUESTA CARTELLA

| Cartella              | Contenuto                                                     |
|-----------------------|---------------------------------------------------------------|
| `Packages\User\`      | Preferenze, scorciatoie, menu, build system, script `.py`     |
| `Packages\` (altre)   | Pacchetti scompattati (Terminus, SublimeREPL, Terminal, ...)  |
| `Installed Packages\` | Pacchetti `.sublime-package` installati da Package Control    |
| `Lib\`                | Librerie Python richieste dai pacchetti                       |

**NON** vengono copiati: `Local\` (sessioni e file aperti, validi solo su un PC),
`Log\`, `Trash\`.

---

## ATTENZIONE

- **AGGIORNA_DA_SUBLIME.bat usa il mirror (`/MIR`)**: i file cancellati in Sublime
  vengono cancellati anche in questa cartella. È voluto, ma è bene saperlo.
- Alcuni build/script contengono **percorsi assoluti** (`Build_ESEGUI_DOS.sublime-build`,
  `Build_ESEGUI_Python.py`, `open_pdf_bat.py`, `PandocToWord.sublime-build`):
  funzionano solo se sull'altro PC esistono le stesse cartelle e gli stessi programmi
  (Python, Pandoc, `C:\CASA\...`).
- Usare solo con **Sublime Text 4** (cartella `Sublime Text`, non `Sublime Text 3`).

---

## PROMEMORIA RAPIDO

```
HO CAMBIATO QUALCOSA   →  AGGIORNA_DA_SUBLIME.bat  →  COMMIT + PUSH
VOGLIO LE MODIFICHE    →  PULL  →  chiudi Sublime  →  RIPRISTINA_SUBLIME.bat
```
