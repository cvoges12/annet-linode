{ config, pkgs, lib, ...}:

{
  environment.systemPackages = with pkgs; [
    git
    inetutils
    mtr
    vim
    (import ./nvim.nix)
    sysstat
  ];
}:
