{ config, pkgs, ... }:

{
  imports = [
    ./modules/git.nix
    ./modules/bash.nix
    ./modules/i3.nix
    ./modules/polybar.nix
  ];

  home.username = "matheus";
  home.homeDirectory = "/home/matheus";

  home.stateVersion = "26.05";
}
