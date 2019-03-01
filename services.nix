{ config, pkgs, lib, ... }:

{
  services.openssh = {
    enable = true;
    allowSFTP = true;
    permitRootLogin = "no";
  };
}
