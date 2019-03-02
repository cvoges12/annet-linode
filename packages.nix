{ config, pkgs, lib, ...}:

{
  environment.systemPackages = with pkgs; [
    git
    vim
    (import ./nvim.nix)
    wireguard-tools
  ];
}
