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
 
    
    # st
    (st.overrideAttrs (oldAttrs: {
      src = fetchFromGitHub {
        owner = "matcxz";
        repo = "st";
        rev = "548c55804aa9779ad9c884e5d0b2fbf9c3e40b02";
        hash = "sha256-WSN2+29GXadeBShf2y6RcVpPbXjjd0vNSBc1VKjAMXI=";
      };

      buildInputs = oldAttrs.buildInputs ++ [ harfbuzz ];
    }))
    
    # Sound
    pipewire
    pulseaudio
    pamixer

    # Programming
    gnumake
    gcc
    nodejs
    python3
    uv
    
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
