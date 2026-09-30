{ config, pkgs, ... }:

{
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
  
  home.file = {
    ".config/i3".source = ./dotfiles/i3;
    ".config/polybar".source = ./dotfiles/polybar;
    ".Xresources".source = ./dotfiles/.Xresources;
  };
 
  programs.git = {
    enable = true;
    settings = {
      gpg.format = "ssh";
      user = {
        name = "Matheus Campos";
        email = "stopped-dock-niece@duck.com";
      };
    };
    signing = {
      key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOxMOIHTh/1hTAK6pZpeF3IsptwNc/K/zxjescWd8qQC matczx";
      signByDefault = true;
    };
  };

  programs.bash = {
    enable = true;
    shellAliases = {
      rebuild = "sudo nixos-rebuild switch --flake /home/matheus/nixos#nixos";
      update = "sudo nix flake update --flake /home/matheus/nixos";
      editos = "vim /home/matheus/nixos/configuration.nix";
      editflake = "vim /home/matheus/nixos/flake.nix";
      edithome = "vim /home/matheus/nixos/home.nix";
    };
  };

  home.stateVersion = "26.05";
}
