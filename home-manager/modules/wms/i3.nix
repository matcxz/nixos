{ pkgs, ... }:

let
  wallpaper = ../../wallpapers/2.jpg;
  polybarStartup = pkgs.writeShellScript "polybar-startup" ''
    attempt=0
    while [ "$attempt" -lt 30 ]; do
      if ${pkgs.pulseaudio}/bin/pactl info >/dev/null 2>&1; then
        exec ${pkgs.polybar}/bin/polybar main
      fi
      ${pkgs.coreutils}/bin/sleep 1
      attempt=$((attempt + 1))
    done

    echo "PipeWire PulseAudio did not become available; starting Polybar anyway" >&2
    exec ${pkgs.polybar}/bin/polybar main
  '';
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
        inner = 8;
        outer = 4;
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
          command = "${polybarStartup}";
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
