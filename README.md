# Install Dev Environment Using Ansible!

My dotfiles work specifically with a MacOS  development environment
(Still working out issues downloading on Linux).

- [Installation](https://github.com/maknop/ansible-dot#installation)
- [Vim Commands](https://github.com/maknop/ansible-dot#vim-commands)
- [Tmux Commands](https://github.com/maknop/ansible-dot#tmux-commands)
- [Acknowledgements](https://github.com/maknop/ansible-dot#acknowledgements)

## Installation
Navigate to your root directory and copy/paste the following  
into your favorite terminal.
```
curl https://raw.githubusercontent.com/maknop/ansible-dot/main/install.sh | sh
```

## Vim Commands
```
i                 insert mode
jk                Exit insert mode
h, j, k, l        Left, down, up, right
e                 Move forward by a word
w                 Move back by a word
yy                Copies line to buffer
dd                Deletes line, stores line in buffer
p                 Pastes contents stored in the buffer
shift + v         Visual mode, highlights entire line
v                 Visual mode, highlights single character
```

## Tmux Commands
```
ts <name>         Create a tmux session
ta <name>         Reattaches to a previous tmux session
tk <name>         Kills tmux session
tl                Lists all current tmux sessions
```
