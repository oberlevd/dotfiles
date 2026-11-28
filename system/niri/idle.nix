{ pkgs, ... }:

{
  home.packages = [
    pkgs.swayidle
  ];

  programs.swaylock = {
    enable = true;

    settings = {
      color = "1e1e2e";
      font = "JetBrainsMono Nerd Font Mono";
      indicator-radius = 80;
      indicator-thickness = 8;
      show-failed-attempts = true;
    };
  };

  xdg.configFile."swayidle/config".text = ''
    timeout 3600 'swaylock -f'
    timeout 3610 'niri msg action power-off-monitors'
    resume 'niri msg action power-on-monitors'
    before-sleep 'swaylock -f'
    lock 'swaylock -f'
  '';
}
