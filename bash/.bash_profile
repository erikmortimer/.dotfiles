export XDG_CONFIG_HOME=$HOME/.config
VIM="nvim"

export GIT_EDITOR=$VIM
export DOTFILES=$HOME/.dotfiles
export GOPATH=$HOME/go

# Adding to the path
export PATH=$HOME/.local/go/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/go/bin:$PATH
if [[ $OSTYPE == 'darwin'* ]]; then
    export PATH=/opt/homebrew/bin/:$PATH
fi

# Keybindings bby
bind -x '"\C-f":"tmux-session"'

if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi
