{ inputs, ... }:

{
  users.users.matheus = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIH7W4iVYbP6uHwL0qo17uwnpNk2HTKdUAOAGVtbU1Bq2 u0_a449@localhost"
    ];
  };

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    backupFileExtension = "backup";

    users.matheus.imports = [
      inputs.nvf.homeManagerModules.default
      ../../home-manager/home.nix
    ];
  };
}
