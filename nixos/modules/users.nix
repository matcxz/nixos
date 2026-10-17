{ inputs, ... }:

{
  users.users.matheus = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
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
