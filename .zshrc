# ===================================================================
# MIS ALIASES Y CONFIGURACIÓN PERSONAL DE TERMINAL - @andreacontreras
# ===================================================================

# --- ATAJOS DE CONFIGURACIÓN ---
alias editar='code ~/.zshrc'   # Abre este archivo en VS Code para editarlo
alias activar='source ~/.zshrc' # Aplica los cambios realizados sin reiniciar la terminal

# --- SUSTITUCIONES (Overrides) ---
# Reemplazan comandos nativos de macOS por herramientas modernas de Homebrew
alias cat='bat'            # Muestra archivos con colores y sintaxis (mejor que cat)
alias help='tldr'          # Muestra ejemplos prácticos de uso (resumen rapido de man)
alias ls='eza --icons --group-directories-first --sort=extension' # Listado visual con iconos y carpetas primero

# --- ATAJOS DE NAVEGACIÓN (Nuevos comandos) ---
alias c='clear'            # Limpia la pantalla de la terminal rápidamente
alias lsa='eza -a --icons --group-directories-first --sort=extension' # Listar TODO (incluyendo archivos ocultos)
alias lsh='eza -a --icons --group-directories-first | grep "^\."'     # Mostrar ÚNICAMENTE los archivos ocultos

# Cambia el directorio actual de la terminal al que tengas abierto en el Finder:
alias caf='cd "$(osascript -e "tell application \"Finder\" to if (count of Finder windows) > 0 then get POSIX path of (target of front window as alias)")"'

# --- MANTENIMIENTO Y SISTEMA ---
alias limpiarbrew='brew cleanup --prune=all && brew autoremove' # Borra basura y archivos temporales de Homebrew
alias dsize='du -sh * | sort -h'                                # Muestra peso de archivos ordenados de menor a mayor

# --- INICIALIZACIONES ---
# Activa la navegación inteligente de zoxide (aprende a qué carpetas vas más seguido)
eval "$(zoxide init zsh)"
