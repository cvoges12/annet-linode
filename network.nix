{ config, lib, pkgs, ... }:

{
  networking = {
    hostName = "annet-linode";
    usePredictableInterfaceNames = false;
  };
}
