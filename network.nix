{ config, lib, pkgs, ... }:

{
  networking = {
    hostName = "annet-linode";
    usePredictableInterfaceNames = false;
    firewall = {
      enable = false;
      allowedTCPPorts = [ 22 53 67 68 80 443 ];
      allowedUDPPorts = [ 22 53 67 68 80 443 ];
    };
    enableIPv6 = true;
    #interfaces.eth0 = {
    #  ipv4.addresses = [
    #    { address = "45.79.141.88";
    #      prefixLength = 24;}
    #  ];
    #  #ipv6.addresses = [
    #  #  { address = "2600:3c03:f03c:91ff:fe23:7c68";
    #  #    prefixLength = 64;}
    #  #];
    #};
    #nameservers = [ "1.1.1.1" ];
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
