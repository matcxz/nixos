{ ... }:

{
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
      key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIE6KfvACtWQ4vx4xO++soP2Uj4F/A2PBraGeSje7AHRm Artix";
      signByDefault = false;
    };
  };
}
