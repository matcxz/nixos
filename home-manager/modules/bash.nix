{ ... }:

{
  programs.bash = {
    enable = true;
    shellAliases = {
      nrs = "sudo nixos-rebuild switch --flake ~/nix#nixos";
      nfu = "sudo nix flake update --flake ~/nix";
      cd = "z";
      ls = "eza --color always";
      la = "eza -a --color always";
      l = "eza -lah --color always";
      fast = "fastfetch";
    };
  };

  programs.zoxide = {
    enable = true;
  };

  programs.eza = {
    enable = true;
  };
}
