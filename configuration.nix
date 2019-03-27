{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./network.nix
    ./users.nix
    ./packages.nix
    ./services.nix
    ./time.nix
  ];
}
