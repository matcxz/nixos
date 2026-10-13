{ config, pkgs, ... }:

{
  imports = [
    ./modules/git.nix
    ./modules/bash.nix
  ];

  home.username = "matheus";
  home.homeDirectory = "/home/matheus";

  home.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    noto-fonts-color-emoji
    firefox
    htop
    gh
    alacritty
    feh
    polkit_gnome
    rofi
    xclip
    polybar
  ];
  
  home.stateVersion = "26.05";
}
