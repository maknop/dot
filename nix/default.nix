{ pkgs ? import <nixpkgs> {} }:

let
  packages = import ./packages.nix;
in
pkgs.buildEnv {
  name = "default";
  paths = packages.commonPackages

  programs.fish.enable = true;
}