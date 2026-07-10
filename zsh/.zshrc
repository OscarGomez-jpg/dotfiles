# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Which plugins to load
ENABLE_CORRECTION="true"

plugins=(
  git
  command-not-found
  colored-man-pages
  zsh-autosuggestions
  zsh-syntax-highlighting
  poetry
)

source $ZSH/oh-my-zsh.sh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#bac2de"

source $ZSH/custom/plugins/zsh-syntax-highlighting/themes/catppuccin/themes/catppuccin_macchiato-zsh-syntax-highlighting.zsh

export EDITOR='nvim'

# Exports
export GOPATH=$HOME/go
export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:/bin/java::")
export AIRFLOW_HOME=~/airflow
export CHROME_EXECUTABLE="/usr/bin/chromium-browser"
export PYENV_ROOT="$HOME/.pyenv"

# Paths
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.opencode/bin:$PATH"
export PATH="$HOME/.npm-global/bin:$PATH"
export PATH="/opt/Postman:$PATH"
export PATH="$HOME/.spicetify:$PATH"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"

# pnpm
export PNPM_HOME="/home/osgomez/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

alias oto="xdg-open"
alias ls="lsd --all"
alias ave="source ./venv/bin/activate"
alias dve="deactivate"
alias fesays="ferryssays"
alias whatsmelting="ps aux --sort=-%cpu | head -n 5"
alias zshconfig="nvim ~/.zshrc"
alias ohmyzshconfig="nvim ~/.oh-my-zsh"
alias wezconfig="nvim ~/.config/wezterm/wezterm.lua"
alias gdformat="gdscript-formatter --safe"
alias nvimconfig="nvim ~/.config/nvim"

eval "$(zoxide init zsh)"
eval "$(oh-my-posh init zsh --config $HOME/.poshthemes/own-catppuccin.omp.json)" 
eval "$(pyenv init - zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# SDKMAN (must be at the end)
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
fpath+=${ZDOTDIR:-~}/.zsh_functions
fpath+=~/.zfunc

# QML2 / Qt
export QML2_IMPORT_PATH="/home/osgomez/.local/lib/qt6/qml:/home/osgomez/.local/share/qml:/home/osgomez/.config/quickshell/caelestia:/home/osgomez/.config/quickshell/caelestia/modules"
export QT_PLUGIN_PATH="/home/osgomez/.local/lib/qt6/plugins:/usr/lib64/qt6/plugins"
