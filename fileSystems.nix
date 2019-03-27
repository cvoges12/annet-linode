{ config, lib, pkgs, ... }:

{
  fileSystems."/" = {
    device = "/dev/sda";
    fsType = "ext4";
  };
}
