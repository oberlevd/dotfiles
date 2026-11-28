{ pkgs, ... }:

{
  programs.niri.enable = true;

  security.polkit.enable = true;
  security.pam.services.swaylock = { };

  environment.systemPackages = with pkgs; [
    xwayland-satellite
  ];
}
