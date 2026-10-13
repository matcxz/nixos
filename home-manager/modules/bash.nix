{ config, ... }:

{
  programs.bash = {
    enable = true;
    shellAliases = {
      nrs = "sudo nixos-rebuild switch --flake ~/nix#nixos";
      nfu = "sudo nix flake update --flake ~/nix";
      edit-nixos = "vim ~/nix/nixos/configuration.nix";
      edit-flake = "vim ~/nix/flake.nix";
    };
  };
 
  programs.zoxide = {
    enable = true;
  };
}
