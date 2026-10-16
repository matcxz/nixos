{ config, pkgs, ... }:

let
  colors = {
    background = "#191923";
    background-alt = "#313244";
    foreground = "#cdd6f4";
    primary = "#89b4fa";
    secondary = "#cba6f7";
    alert = "#f38ba8";
    disabled = "#6c7086";
  };
in
{
  services.polybar = {
    enable = true;
    package = pkgs.polybar;
    script = "polybar main";

    settings = {
      "bar/main" = {
        width = "100%";
        height = "20pt";

        background = colors.background;
        foreground = colors.foreground;

        line-size = "3pt";
        border-size = 0;
        border-color = "#00000000";

        padding-left = 0;
        padding-right = 1;
        module-margin = 1;

        separator = "/";
        separator-foreground = colors.disabled;

        "font-0" = "JetBrainsMono Nerd Font:size=9;2";

        modules-left = "xworkspaces";
        modules-right = "memory cpu volume date";

        cursor-click = "pointer";
        cursor-scroll = "ns-resize";
        enable-ipc = true;
      };

      "module/xworkspaces" = {
        type = "internal/xworkspaces";

        label-active = "%name%";
        label-active-background = colors.background-alt;
        label-active-foreground = colors.primary;
        label-active-underline = colors.primary;
        label-active-padding = 1;

        label-occupied = "%name%";
        label-occupied-foreground = colors.foreground;
        label-occupied-padding = 1;

        label-urgent = "%name%";
        label-urgent-background = colors.alert;
        label-urgent-foreground = colors.background;
        label-urgent-padding = 1;

        label-empty = "%name%";
        label-empty-foreground = colors.disabled;
        label-empty-padding = 1;
      };

      "module/volume" = {
        type = "internal/alsa";

        "format-volume-prefix" = "󰕾 ";
        "format-volume-prefix-foreground" = colors.primary;
        "format-volume" = "<label-volume>";

        label-volume = "%percentage%%";

        label-muted = "󰝟 muted";
        "label-muted-foreground" = colors.disabled;
      };

      "module/memory" = {
        type = "internal/memory";
        interval = 2;

        "format-prefix" = "RAM: 󰘚 ";
        "format-prefix-foreground" = colors.secondary;

        label = "%percentage_used:2%%";
      };

      "module/cpu" = {
        type = "internal/cpu";
        interval = 2;

        "format-prefix" = "CPU: 󰍛 ";
        "format-prefix-foreground" = colors.secondary;

        label = "%percentage:2%%";
      };

      "module/date" = {
        type = "internal/date";
        interval = 1;

        date = "%H:%M";
        "date-alt" = "%d-%m-%Y %H:%M";

        label = "󰥔 %date%";
        "label-foreground" = colors.primary;
      };

      settings = {
        "screenchange-reload" = true;
        pseudo-transparency = true;
      };
    };
  };
}
