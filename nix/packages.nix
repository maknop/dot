let
  pkgs = import <nixpkgs> {};
  commonPackages = [
    pkgs.docker
    pkgs.docker-compose
    pkgs.fish
    pkgs.git
    pkgs.nodejs
    pkgs.tmux
    pkgs.vim
    pkgs.wget
    pkgs.zsh
  ];

in
  {
    commonPackages = commonPackages;
  }