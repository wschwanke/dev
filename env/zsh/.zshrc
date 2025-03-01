source_if_exists () {
    if test -r "$1"; then
        source "$1"
    fi
}

# ZINIT Setup
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"

source "${ZINIT_HOME}/zinit.zsh"

# ZSH Plugins
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-history-substring-search

HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1

zinit snippet OMZP::git
zinit snippet OMZP::command-not-found

autoload -U compinit && compinit

source_if_exists ~/.config/zsh/history.zsh
source_if_exists ~/.config/zsh/aliases.zsh

eval "$(starship init zsh)"

bindkey -v
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# User configuration
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export EDITOR='nvim'
export XDG_CONFIG_HOME=$HOME/.config
export GOPATH=$HOME/.local/go
export GIT_EDITOR=$VIM
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# NVM
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

VIM="nvim"

# Load files in personal config folder
PERSONAL=$XDG_CONFIG_HOME/personal
for i in `find -L $PERSONAL`; do
    source $i
done

bindkey -s ^f "tmux-sessionizer\n"

function git_current_branch() {
  ref=$(git symbolic-ref HEAD 2>/dev/null)
  echo "${ref#refs/heads/}"
}

addToPath() {
    if [[ "$PATH" != *"$1"* ]]; then
        export PATH=$PATH:$1
    fi
}

addToPathFront() {
    if [[ "$PATH" != *"$1"* ]]; then
        export PATH=$1:$PATH
    fi
}

addToPathFront $HOME/.local/.npm-global/bin
addToPathFront $HOME/.local/scripts
addToPathFront $HOME/.local/bin
addToPathFront ./node_modules/.bin
addToPath $HOME/.fzf/bin
addToPath $HOME/.cargo/bin
addToPath $HOME/.cargo/env
addToPath $HOME/.zig/master
addToPath $HOME/.dotnet/tools
addToPathFront ${ZDOTDIR:-~}/.zsh_functions
