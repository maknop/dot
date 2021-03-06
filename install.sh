#!/bin/sh
DOTFILES_DIR=$(pwd -P "dot")

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


if [[ ! -d "$HOME/.oh-my-zsh" ]]; then
    echo "Installing oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc 

    echo "Making zsh the default shell"
    chsh -s $(which zsh)
fi

echo "Finished!"
