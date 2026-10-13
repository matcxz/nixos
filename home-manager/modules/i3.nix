{ config, ... }:

{
  xsession.windowManager.i3 = {
    enable = true;

    config = {
      modifier = "Mod4";
      terminal = "alacritty";
      menu = "dmenu_run -l 4";

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
        border = 2 
      };

      startup = [
        {
          command = "nitrogen --restore";
          always = true;
          notification = false;
        }
      ];
    };
  };
}
