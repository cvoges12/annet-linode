{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./network.nix
    ./users.nix
    ./packages.nix
    ./services.nix
    ./time.nix
    <nixpkgs/nixos/modules/profiles/qemu-guest.nix>
  ];
}
