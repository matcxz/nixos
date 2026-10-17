{ ... }:

{
  security.polkit.enable = true;
  services.dbus.enable = true;

  services.keyd = {
    enable = true;
    keyboards.default = {
      ids = [ "*" ];
      settings.main.capslock = "grave";
    };
  };

  services.openssh.enable = true;
}
