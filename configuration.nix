{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./network.nix
    ./users.nix
    ./packages.nix
  ];

  services.openssh = {
    enable = true;
    permitRootLogin = "yes";
  };

  time.timeZone = "America/Chicago";

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = { enable = true; enableSSHSupport = true; };

  system.stateVersion = "18.09";
}
