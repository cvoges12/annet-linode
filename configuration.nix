{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./network.nix
  ];

  services.openssh = {
    enable = true;
    permitRootLogin = "yes";
  };

  environment.systemPackages = with pkgs; [
    git
    inetutils
    mtr
    vim
    (import ./nvim.nix)
    sysstat
  ];

  time.timeZone = "America/Chicago";

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = { enable = true; enableSSHSupport = true; };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  # users.users.guest = {
  #   isNormalUser = true;
  #   uid = 1000;
  # };

  system.stateVersion = "18.09";
}
