{ pkgs, ... }:

{
  gtk = {
    enable = true;
    colorScheme = "dark";

    theme = {
      name = "Adwaita";
      package = pkgs.gnome-themes-extra;
    };

    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };
  };

  home.pointerCursor = {
    name = "Bibata-Modern-Ice";
    package = pkgs.bibata-cursors;
    size = 24;
    gtk.enable = true;
    x11.enable = true;
  };

  dconf.settings."org/gnome/desktop/interface" = {
    color-scheme = "prefer-dark";
    monospace-font-name = "JetBrainsMono Nerd Font 10";
  };
}
