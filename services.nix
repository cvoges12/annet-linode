{ config, pkgs, lib, ... }:

{
  services.openssh = {
    enable = true;
    allowSFTP = true;
    hostKeys = [
      { path = "/etc/ssh/ssh_host_25519_key";
        #rounds = 100;
        type = "ed25519";}
    ];
    passwordAuthentication = true;
    permitRootLogin = "no";
    ports = [ 22 ];
    startWhenNeeded = true;
  };
}
