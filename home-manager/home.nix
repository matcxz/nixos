{ ... }:

{
  imports = [
    ./modules/bundle.nix
  ];

  home.username = "matheus";
  home.homeDirectory = "/home/matheus";

  home.stateVersion = "26.05";
}
