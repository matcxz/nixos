{ pkgs, ... }:

let
  wallpaper = ../../wallpapers/34.jpg;
in
{
  xsession.windowManager.i3 = {
    enable = true;

    config = {
      defaultWorkspace = "workspace number 1";
      modifier = "Mod4";
      terminal = "st";
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

      bars = [ ];

      fonts = {
        names = [
          "JetbrainsMono Nerd Font"
          "Noto Color Emoji"
        ];
        size = 10.0;
      };

      startup = [
        {
          command = "${pkgs.feh}/bin/feh --bg-fill ${wallpaper}";
          always = true;
          notification = false;
        }
        {
          command = "polybar main";
          always = false;
          notification = false;
        }
        {
          command = "${pkgs.xset}/bin/xset r rate 200 35 &";
          always = false;
          notification = false;
        }
        {
          command = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
          always = false;
          notification = false;
        }
        {
          command = "${pkgs.xrdb}/bin/xrdb -merge ~/.Xresources";
          always = true;
          notification = false;
        }
      ];
    };
  };
}
