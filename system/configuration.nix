{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix

      ./modules/nix.nix
      ./modules/audio.nix
      ./modules/locale.nix
      ./modules/users.nix
      ./modules/networking.nix
      ./modules/desktop.nix
      ./modules/printing.nix
      ./modules/browser.nix
    ];

  boot.loader.grub = {
    enable = true;
    device = "/dev/sda";
    useOSProber = true;
  };

  networking.hostName = "chouqe";

  system.stateVersion = "26.05";
}
