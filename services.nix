{ config, pkgs, lib, ... }:

{
  services.openssh = {
    enable = true;
    permitRootLogin = "no";
  };
}
