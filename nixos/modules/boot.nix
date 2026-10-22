{ ... }:

{
  boot.loader.grub = {
    enable = true;
    device = "/dev/sda";
    useOSProber = true;
  };

  boot.kernelParams = [ "pcie_aspm=off" ];

  swapDevices = [
    {
      device = "/swapfile";
      size = 4096;
    }
  ];
}
