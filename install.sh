#!/bin/bash
DOTFILES_DIR=$(pwd -P "dot")
echo ${DOTFILES_DIR}

# Install Nix if it does not exist
if [[ ! -d "$HOME/.nix-profile" ]]; then
    echo "Installing Nix"
    curl -L https://nixos.org/nix/install | sh
fi

# # Symlink files to home directory
ln -s ${DOTFILES_DIR}/dotfiles/. $HOME/

# Install oh-my-zsh if it does not exist
if [[ ! -d "$HOME/.oh-my-zsh" ]]; then
    echo "Installing oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc
fi