{ pkgs, ... }:

{
  home.packages = [
    pkgs.mako
    pkgs.libnotify
  ];

  xdg.configFile."mako/config".text = ''
    font=JetBrainsMono Nerd Font Mono 11
    background-color=#1e1e2eff
    text-color=#cdd6f4ff
    border-color=#89b4faff
    border-size=2
    border-radius=8
    width=360
    padding=12
    margin=12
    anchor=top-right
    default-timeout=5000

    [urgency=critical]
    default-timeout=0
  '';
}
