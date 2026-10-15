{ ... }:

{
  programs.nvf = {
    enable = true;
    settings.vim = import ./settings.nix;
  };
}
