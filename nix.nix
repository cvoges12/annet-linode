{ config, lib, pkgs, ... }:

{
  nix.maxJobs = lib.mkDefault 1;
}
