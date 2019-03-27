{ config, lib, pkgs, ... }:

{
  boot = {
    loader = {
      grub = {
        enable = true;
        version = 2;
        device = "nodev";
        extraConfig = ''
          serial --speed=19200 --unit=0 --word=8 --parity=no --stop=1;
          terminal_input serial;
          terminal_output serial
        '';
      };
      timeout = 10;
    };
    initrd.availableKernelModules = [ "virtio_pci" "ahci" "sd_mod" ];
    kernelModules = [ ];
    extraModulePackages = [ ];
    kernelParams = ["console=ttyS0,19200n8" ];
  };
}
