{ ... }:

{
  programs.starship = {
    enable = true;
    enableFishIntegration = true;

    settings = {
      format = "$username$directory$git_branch$python$git_status$character";
      add_newline = false;
      scan_timeout = 40;

      character = {
        success_symbol = "[❯](bold green)";
        error_symbol = "[❯](bold red)";
      };

      package.disabled = true;
      battery.disabled = true;
      cmd_duration.disabled = true;

      git_branch.disabled = false;
      git_status.disabled = false;

      username = {
        style_user = "green bold";
        style_root = "black bold";
        format = "[$user]($style) in ";
        disabled = false;
        show_always = true;
      };

      python = {
        disabled = false;
        symbol = " ";
      };
    };
  };
}
