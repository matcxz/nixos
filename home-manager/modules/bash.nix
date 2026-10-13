{ config, ... }:

{
  programs.bash = {
    enable = true;
    shellAliases = {
      nrs = "sudo nixos-rebuild switch --flake ~/nix#nixos";
      nfu = "sudo nix flake update --flake ~/nix";
      cd = "z";
      fast = "fastfetch";
    };
  };
 
  programs.zoxide = {
    enable = true;
  };
}
