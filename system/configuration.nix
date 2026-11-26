{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix

      ./modules
    ];

  boot.loader.grub = {
    enable = true;
    device = "/dev/sda";
    useOSProber = false;
  };

  networking.hostName = "chouqe";

  system.stateVersion = "26.05";
}
