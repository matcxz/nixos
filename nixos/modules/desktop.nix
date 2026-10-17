{ pkgs, ... }:

{
  services.xserver = {
    enable = true;
    xkb = {
      layout = "br";
      variant = "abnt2";
    };
    windowManager.i3.enable = true;
  };

  services.displayManager.ly.enable = true;

  programs.dconf.enable = true;

  programs.thunar = {
    enable = true;
    plugins = with pkgs; [
      thunar-volman
      thunar-archive-plugin
    ];
  };

  programs.xfconf.enable = true;

  services.gvfs.enable = true;
  services.tumbler.enable = true;
}
