export $HOME/.oh-my-zsh

ZSH_THEME="agnoster"

# Automatically load profile
if [ -f ~/.zsh_profile ]; then
    source ~/.zsh_profile
fi

# Automatically load aliases
if [ -f ~/.zsh_aliases ]; then
    source ~/.zsh_aliases
fi

source $ZSH/oh-my-zsh.sh