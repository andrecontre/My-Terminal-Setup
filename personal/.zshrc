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
alias lst='eza -T -lh --icons --group-directories-first --sort=size --total-size --no-permissions --no-user --no-time' # Listar archivos ordenados por tamaño total, sin detalles innecesarios

# Cambia el directorio actual de la terminal al que tengas abierto en el Finder:
alias caf='cd "$(osascript -e "tell application \"Finder\" to if (count of Finder windows) > 0 then get POSIX path of (target of front window as alias)")"'

# --- ATAJOS DE GIT ---
alias ga='git add'
alias gc='git commit -m' 
alias gp='git push'
alias gl='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
alias gpl='git pull'
alias gcl='git clone'

# --- ALIAS PARA MULTIMEDIA Y OCR ---
alias ocr-todo='mkdir -p procesados && for f in *.pdf; do ocrmypdf -l spa --deskew "$f" "procesados/$f"; done' # OCR: Hace que todos los PDFs de la carpeta actual sean leíbles (los pone en /procesados)
alias youtube-audio='yt-dlp -x --audio-format m4a --add-metadata --embed-thumbnail' # Música: Baja audio de YouTube con la mejor calidad y carátula para tu biblioteca
alias mirar='bat "$(fzf)"' # Visualizador rápido: Eliges un archivo con fzf y lo ves con bat (maneja espacios en nombres)

# --- MANTENIMIENTO Y SISTEMA ---
alias limpiarbrew='brew cleanup --prune=all && brew autoremove' # Borra basura y archivos temporales de Homebrew
alias dsize='du -sh * | sort -h'                                # Muestra peso de archivos ordenados de menor a mayor

# --- MANTENIMIENTO GLOBAL Y PERMISOS MULTI-USUARIO ---
# Actualiza todo el sistema (Topgrade) gestionando permisos de Apps de otros usuarios
topgrade() {
    local USER2_NAME="a.contrerasflores"
    local USER2_PATH="/Users/$USER2_NAME/Applications"
    local USER=$(whoami)
    echo "🔓 Abriendo paso para la actualización en $USER2_PATH..."
    # Damos permiso temporal al grupo para que Brew trabaje
    sudo chown -R "$USER":staff /Users/a.contrerasflores/Applications
    sudo chmod 755 "$USER2_PATH"
    echo "🚀 Ejecutando Topgrade..."
    command topgrade
    # Restauramos la propiedad al usuario original y cerramos con 700 (privado)
    sudo chown -R "$USER2_NAME":staff "$USER2_PATH"
    sudo chmod 700 "$USER2_PATH"

    echo "\n🔒 Privacidad y dueños restaurados para $USER2_NAME."
   
}

# --- INICIALIZACIONES ---
# Activa la navegación inteligente de zoxide (aprende a qué carpetas vas más seguido)
eval "$(zoxide init zsh)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Activa starship
eval "$(starship init zsh)"

# --- CONFIGURACIÓN DE FZF (Buscador Difuso) ---
# Decimos a fzf que use 'fd' para que sea más rápido e ignore basura (.git, etc.)
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
## Diseño (Vaporwave Matrix Edition)
export FZF_DEFAULT_OPTS="--height 45% --layout=reverse --border --margin=1 --padding=1 \
--color=bg:#1e1e2e,bg+:#313244,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#cba6f7,info:#cba6f7,pointer:#f5c2e7 \
--color=marker:#f5c2e7,fg+:#f5c2e7,prompt:#cba6f7,hl+:#f38ba8"
# Este comando mapea la "ç" (que es Alt+C en Mac) para que dispare el buscador de carpetas de fzf
bindkey "ç" fzf-cd-widget

# --- CONFIGURACION DE BAT (Document Viewer) ---
export BAT_THEME="Coldark-Dark"