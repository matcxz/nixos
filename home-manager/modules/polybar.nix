{ config, pkgs, ... }:

{
  services.polybar = {
    enable = true;
    package = pkgs.polybar;

    settings = {
      "bar/main" = {
         width = "100%";  
         height = "20";
      
         background = "#191923";
         foreground = "#cdd6f4";
      
         line-size = "3pt";
         border-size = "0";
         border-color = "#00000000";
        
         padding-left = "0";
         padding-right = "0";
        
         module-margin = "1";
        
         separator = "/";
         separator-foreground = "#6c7086";
        
         font-0 = "JetBrains Mono Nerd Font:size=9";
       
         modules-left = "xworkspaces";
         modules-center = "cmus";
         modules-right = "memory cpu pulseaudio date";

         cursor-click = "pointer";
         cursor-scroll = "ns-resize";
         enable-ipc = "true";
      };  
      
      "module/xworkspaces" = {
        type = "internal/xworkspaces";

        label-active = "%name%";
        label-active-background = "#313244"; 
        label-active-foreground = "#89b4fa"; 
        label-active-underline = "#89b4fa";
        label-active-padding = "1";

        label-occupied = "%name%";
        label-occupied-foreground = "#cdd6f4";
        label-occupied-padding = "1";

        label-urgent = "%name%";
        label-urgent-background = "#f38ba8";
        label-urgent-foreground = "#191923";
        label-urgent-padding = "1";

        label-empty = "%name%";
        label-empty-foreground = "#6c7086";
        label-empty-padding = "1";
      };

      "module/pulseaudio" = {
        type = "internal/pulseaudio";

        format-volume-prefix = "󰕾 ";
        format-volume-prefix-foreground = "#89b4fa";
        format-volume = "<label-volume>";

        label-volume = "%percentage%%";

        label-muted = "󰝟 muted";
        label-muted-foreground = "#6c7086";
      };
      
      "module/memory" = {
        type = "internal/memory";
        interval = "2";
        format-prefix = "RAM: 󰘚 ";
        format-prefix-foreground = "#cba6f7";
        label = "%percentage_used:2%%"; 
      };
      
      "module/cpu" = {
        type = "internal/cpu";
        interval = "2";
        format-prefix = "CPU: 󰍛 ";
        format-prefix-foreground = "#cba6f7";
        label = "%percentage:2%%";
      };
      
      "module/date" = {
        type = "internal/date";
        interval = "1";
        
        date = "%H:%M";
        date-alt = "%d-%m-%Y %H:%M";

        label = "󰥔 %date%";
        label-foreground = "#89b4fa";
      };
    };
  };
}
