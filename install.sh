#!/bin/bash

printf '\n#######################################################\n'
printf   '##                                                   ##\n'
printf   '##           Installing Dev Environment              ##\n'
printf   '##                                                   ##\n'
printf   '#######################################################'

printf '\n\nChecking if pip is installed.\n'
if  ! command -v pip &> /dev/null
then
    sudo dnf install python3-pip
else
    printf 'pip is already installed.\n'
fi

printf '\nChecking if Ansible is installed.\n'
if ! command -v ansible-playbook &> /dev/null
then
    sudo -H pip install ansible
else
    printf 'Ansible is already installed.\n'
fi

printf '\n\nCloning ansible-dot git repository into home directory\n'
cd ~/ && git clone https://github.com/maknop/ansible-dot.git

printf '\n\nInstall ansible-playbook for dev environment.\n'
cd ~/ansible-dot && ansible-playbook site.yaml --ask-become-pass

printf '\nRemoved ansible-dot repository from home directory.\n'
rm -rf ~/ansible-dot

# Vundle - Install all Vim packages
vim -c 'PluginInstall' -c 'qa!'

printf '\nDev environment configured, build all the things!\n\n'
