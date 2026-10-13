{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Desktop
    firefox
    alacritty
    thunar
    mpv
    gparted

    # CLI
    vim
    fastfetch
    wget
    stow
    tmux
    neovim
    htop
    gh
    git
    unzip
    cava
    yt-dlp
   
    # GUI Utils
    feh
    xclip
    xfce4-screenshooter
   
    # WMs
    feh
    dmenu
    polybar
    rofi
    i3status
    i3lock

    # Programming
    gnumake
    gcc
    nodejs
    python

    # Fonts
    nerd-fonts.jetbrains-mono
    nerd-fonts.caskaydia-cove
    nerd-fonts.iosevka
    noto-fonts-color-emoji
  ];
}
