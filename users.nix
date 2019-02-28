{ config, lib, pkgs, ... }:

{
  users = {
    extraUsers.cvoges12 = {
      isNormalUser = true;
      uid = 1000;
      description = "Clayton Voges";
      createHome= true;
      home = "/home/cvoges12";
      extraGroups = [
        "wheel" "disk" "networkmanager"
        "systemd-journal" "libvirtd"
      ];
      shell = pkgs.zsh;
      packages = with pkgs; [
        home-manager
      ];
    };
    defaultUserShell = "/run/current-system/sw/bin/zsh";
  };
}
