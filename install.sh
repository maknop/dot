#!/bin/bash

printf '\n#######################################################\n'
printf   '##                                                   ##\n'
printf   '##           Installing Dev Environment              ##\n'
printf   '##                                                   ##\n'
printf   '#######################################################'

printf '\n\nChecking if pip is installed.\n'
if  ! command -v pip &> /dev/null
then
    apt install python3-pip
else
    printf 'pip is already installed.\n'
fi

printf '\nChecking if Ansible is installed.\n'
if ! command -v ansible-playbook &> /dev/null
then
    sudo -H pip3 install ansible
else
    printf 'Ansible is already installed.\n'
fi

printf '\n\nCloning ansible-dot git repository into home directory\n'
cd ~/ && git clone https://github.com/maknop/ansible-dot.git

printf '\n\nInstall ansible-playbook for dev environment.\n'
cd ~/ansible-dot && ansible-playbook site.yaml

printf '\nRemoved ansible-dot repository from home directory.\n'
rm -rf ~/ansible-dot

printf '\nDev environment configured, build all the things!\n\n'