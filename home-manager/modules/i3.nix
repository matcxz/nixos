{ config, pkgs, ... }:

{
  xsession.windowManager.i3 = {
    enable = true;

    config = {
      defaultWorkspace = "workspace number 1";
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
      
      bars = [];
      
      fonts = {
        names = [
          "JetbrainsMono Nerd Font"
          "Noto Color Emoji"
        ];
        size = 10.0;
      };

      startup = [
        {
          command = "${pkgs.feh}/bin/feh --bg-fill ~/wallpapers/34.jpg";
          always = false;
          notification = false;
        }
        {
          command = "polybar main";
          always = true;
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
