{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix

      ../../system/nix.nix
      ../../system/audio.nix
      ../../system/locale.nix
      ../../system/users.nix
      ../../system/networking.nix
      ../../system/desktop.nix
      ../../system/printing.nix
      ../../system/browser.nix
    ];

  boot.loader.grub = {
    enable = true;
    device = "/dev/sda";
    useOSProber = true;
  };

  networking.hostName = "chouqe";

  system.stateVersion = "26.05";
}
