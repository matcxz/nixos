{ ... }:

{
  programs.fish = {
    enable = true;
    shellAliases = {
      nrs = "sudo nixos-rebuild switch --flake ~/nix#nixos";
      nfu = "sudo nix flake update --flake ~/nix";
      cd = "z";
      ls = "eza --color always";
      la = "eza -a --color always";
      l = "eza -lah --color always";
      cat = "bat";
      fast = "fastfetch";
    };

    interactiveShellInit = ''
      set fish_greeting
    '';
  };

  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
  };

  programs.eza.enable = true;

  programs.bat = {
    enable = true;
    config.paging = "never";
  };
}
