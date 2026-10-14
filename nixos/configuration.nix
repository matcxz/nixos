{ config, lib, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./packages.nix
  ];

  boot.loader.grub = {
    enable = true;
    device = "/dev/sda";
    useOSProber = false;
  };
  
  boot.kernelParams = [ "pcie_aspm=off" ];
 
  zramSwap.enable = true;
   
  swapDevices = [
    {
      device = "/swapfile";
      size = 4096;
    }
  ];

  networking.hostName = "nixos";

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    backupFileExtension = "backup";
    users.matheus = import ../home-manager/home.nix;
  };

  networking.networkmanager.enable = true;

  time.timeZone = "America/Recife";

  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS        = "pt_BR.UTF-8";
    LC_IDENTIFICATION = "pt_BR.UTF-8";
    LC_MEASUREMENT    = "pt_BR.UTF-8";
    LC_MONETARY       = "pt_BR.UTF-8";
    LC_NAME           = "pt_BR.UTF-8";
    LC_NUMERIC        = "pt_BR.UTF-8";
    LC_PAPER          = "pt_BR.UTF-8";
    LC_TELEPHONE      = "pt_BR.UTF-8";
    LC_TIME           = "pt_BR.UTF-8";
  };

  console = {
    font = "Lat2-Terminus16";
    keyMap = "br-abnt2";
  };

  services.xserver = {
    enable = true;
    xkb.layout = "br";
    xkb.variant = "abnt2";
    windowManager.i3.enable = true;
  };
  
  services.displayManager.ly.enable = true;

  security.rtkit.enable = true;
  
  security.polkit.enable = true;

  services.pipewire = {
    enable = true;
    pulse.enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
  };

  users.users.matheus = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };

  services.keyd = {
    enable = true;
    keyboards.default = {
      ids = [ "*" ];
      settings.main.capslock = "grave";
    };
  };

  nixpkgs.config = {
    allowUnfree = true;
  };

  services.openssh.enable = true;

  system.stateVersion = "26.05";

}
