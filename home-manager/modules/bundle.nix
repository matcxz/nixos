{ ... }:

{
  imports = [
    ./git.nix
    ./bash.nix
    ./wms/i3.nix
    ./wms/polybar.nix
    ./gtk.nix
    ./rofi.nix
    ./nvf/nvf.nix
    ./alacritty.nix
    ./xresources.nix
    ./starship.nix
  ];
}
