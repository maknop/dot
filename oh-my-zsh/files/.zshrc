# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

export TERM="xterm-256color"

# Ignore insecure completion-dependent directory warning
ZSH_DISABLE_COMPFIX=true

ZSH_THEME="af-magic"

# Plugins loaded
plugins=(
    git
    docker
    pip
    python
    golang
    npm
    postgres
)

alias tmux="TERM=screen-256color-bce tmux"

# Set global .gitignore file.
git config --global core.excludesfile ~/.gitignore

# Source other configuration files
tmux source-file ~/.tmux.conf
source $ZSH/oh-my-zsh.sh
source ~/.zsh_aliases
source ~/functions

# Set GOPATH
export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:/usr/local/go/bin
