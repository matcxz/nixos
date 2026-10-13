{ config, pkgs, ... }:

{
  imports = [
    ./modules/git.nix
    ./modules/bash.nix
  ];

  home.username = "matheus";
  home.homeDirectory = "/home/matheus";

  home.stateVersion = "26.05";
}
