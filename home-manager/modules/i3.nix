{ config, pkgs, ... }:

{
  xsession.windowManager.i3 = {
    enable = true;

    config = {
      modifier = "Mod4";
      terminal = "alacritty";
      menu = "rofi -show drun";

      gaps = {
        inner = 10;
        outer = 5;
      };
      
      window = {
        titlebar = false;
        border = 2;
      };
      
      floating = {
        titlebar = false;
        border = 2;
      };

      startup = [
        {
          command = "${pkgs.feh}/bin/feh --bg-fill ~/wallpapers/34.jpg";
          always = false;
          notification = false;
        }
        {
          command = "${pkgs.xset}/bin/xset r rate 200 35 &";
          always = false;
          notification = false;
        }
      ];
    };
  };
}
