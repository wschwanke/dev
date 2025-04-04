if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
#
# if [ ! -f "$SSH_AUTH_SOCK" ]; then
#     source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
# fi

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

autoload -Uz compinit && compinit

source_if_exists ~/.config/zsh/history.zsh
source_if_exists ~/.config/zsh/alias.zsh

eval "$(starship init zsh)"

bindkey -v
bindkey '^n' history-substring-search-up
bindkey '^p' history-substring-search-down

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# User configuration
if [[ -z "$TMUX" ]]; then
    source ~/.zprofile
fi

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

# Fix for oh-my-zsh git not working with ggp
function git_current_branch() {
  ref=$(git symbolic-ref HEAD 2>/dev/null)
  echo "${ref#refs/heads/}"
}
