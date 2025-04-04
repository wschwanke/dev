export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export EDITOR="nvim"
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CURRENT_DESKTOP="Hyprland"
export GOPATH=$HOME/.local/go
export GIT_EDITOR=$VIM
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

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
addToPathFront $HOME/.docker/completions

addToPath $HOME/.fzf/bin
addToPath $HOME/.cargo/bin
addToPath $HOME/.cargo/env
addToPath $HOME/.dotnet/tools
addToPath $HOME/.luarocks/bin
