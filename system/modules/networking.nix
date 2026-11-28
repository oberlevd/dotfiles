_:

{
  networking.networkmanager.enable = true;

  # localsend
  networking.firewall = {
    allowedTCPPorts = [ 53317 ];
    allowedUDPPorts = [ 53317 ];
  };
}
