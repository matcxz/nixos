{ ... }:

{
  programs.fish = {
    enable = true;
    shellAliases = {
      nrs = "sudo nixos-rebuild switch --flake ~/nix#nixos";
      nfu = "sudo nix flake update --flake ~/nix";
      cd = "z";
      ls = "eza --color always --icons always";
      la = "eza -a --color always --icons always";
      l = "eza -lah --color always --icons always";
      cat = "bat";
      fast = "fastfetch";
    };

    interactiveShellInit = ''
      set fish_greeting

      if set -q SSH_AUTH_SOCK; and not ssh-add -l >/dev/null 2>&1
        ssh-add ~/.ssh/id_ed25519
      end
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
