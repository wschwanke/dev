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

source_if_exists ~/.zsh_profile
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

