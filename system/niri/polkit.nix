{ pkgs, ... }:

{
  home.packages = [
    (pkgs.writeShellScriptBin "niri-polkit-agent" ''
      exec ${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1
    '')
  ];
}
