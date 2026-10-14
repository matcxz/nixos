{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Desktop
    firefox
    alacritty
    mpv
    gparted

    # CLI
    vim
    fastfetch
    pfetch
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
    tree
    zoxide
   
    # GUI Utils
    xclip
    xfce4-screenshooter
    polkit_gnome
    xarchiver
    ffmpegthumbnailer
    poppler-utils
   
    # WMs
    feh
    dmenu
    polybar
    rofi
    i3status
    i3lock
    papirus-icon-theme
    gnome-themes-extra
    
    # Sound
    pipewire
    pulseaudio
    pamixer

    # Programming
    gnumake
    gcc
    nodejs
    python3
    
    # Other
    home-manager
  ];
  
  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    nerd-fonts.caskaydia-cove
    nerd-fonts.iosevka
    noto-fonts-color-emoji
  ];
}
