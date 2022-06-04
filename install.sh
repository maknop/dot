#!/bin/sh
DOTFILES_DIR=$(pwd -P "dot")
ZSH_DIR="$HOME/.oh-my-zsh"

echo ${DOTFILES_DIR}

if [[ ! -d "$HOME/.nix-profile" ]]; then
    echo "Installing Nix"
    curl -L https://nixos.org/nix/install | sh
fi

. $HOME/.nix-profile/etc/profile.d/nix.sh

SYMLINK_LOCATION=$HOME
if [ ! -e $SYMLINK_LOCATION ]; then
    echo "Symlinking files to home directory"
    ln -s ${DOTFILES_DIR}/files/.[!.]* $HOME
fi


if [[ ! -d ZSH_DIR ]]; then
    echo "Installing oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc 

    echo "Making zsh the default shell"
    chsh -s /usr/bin/zsh
fi

OMF_INSTALL_LOCATION=$HOME/.local/share/omf
if [[ ! -d $OMF_INSTALL_LOCATION ]]; then
    echo "Install oh-my-fish"
    curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

    echo "Installing oh-my-fish theme(s)"
    fish -c "omf install ays 2> /dev/null"
fi

echo "Finished!"