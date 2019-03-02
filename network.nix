{ config, lib, pkgs, ... }:

{
  networking = {
    hostName = "annet-linode";
    usePredictableInterfaceNames = true;
    firewall = {
      enable = false;
      allowedTCPPorts = [ 22 53 67 68 80 443 ];
      allowedUDPPorts = [ 22 53 67 68 80 443 ];
    };
    enableIPv6 = true;
    nameservers = [ "1.1.1.1" ];
    #wireguard.interfaces.wg0 = {
    #  ips = [ "" ];
    #  listenPort = null;
    #  peers = [
    #    { allowedIPs = [ "" ];
    #      endpoint = "";
    #      publicKey = "";}
    #  ];
    #  privateKeyFile = "";
    #};
  };
  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
}
