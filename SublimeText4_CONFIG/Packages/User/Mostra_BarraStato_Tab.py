# ============================================================
#  Mostra_BarraStato_Tab.py
#  Forza SEMPRE visibili, in ogni finestra di Sublime Text 4:
#    - la BARRA DI STATO (in basso)  -> contiene l'ICONA apri/chiudi sidebar
#    - le SCHEDE (tab) dei file aperti
#  Motivo: Sublime salva barra di stato e tab nello stato della finestra
#  (.sublime-workspace / sessione) e non esiste un'impostazione generale.
#  Per disattivare questo plugin: rinominarlo in .py.OFF e riavviare Sublime.
# ============================================================
import sublime
import sublime_plugin

MOSTRA_BARRA_STATO = True
MOSTRA_TAB = True


def _sistema_finestra(window):
    if window is None:
        return
    if MOSTRA_BARRA_STATO and not window.is_status_bar_visible():
        window.set_status_bar_visible(True)
    if MOSTRA_TAB and not window.get_tabs_visible():
        window.set_tabs_visible(True)


def _sistema_tutte():
    for w in sublime.windows():
        _sistema_finestra(w)


def plugin_loaded():
    # piccolo ritardo: lascia a Sublime il tempo di ripristinare la sessione
    sublime.set_timeout(_sistema_tutte, 500)


class MostraBarraStatoTabListener(sublime_plugin.EventListener):
    def on_new_window(self, window):
        sublime.set_timeout(lambda: _sistema_finestra(window), 200)

    def on_load_project(self, window):
        sublime.set_timeout(lambda: _sistema_finestra(window), 200)

    def on_activated(self, view):
        _sistema_finestra(view.window())
