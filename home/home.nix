{ ... }:

{
  home.username = "chouqe";
  home.homeDirectory = "/home/chouqe";

  home.stateVersion = "26.05";

  imports = [
    ../system/niri/home.nix
    ./development/git.nix
    ./development/ssh.nix
    ./development/build-tools.nix
    ./development/languages
    ./development/editor
    ./gnome
    ./terminal
    ./media
    ./sharing
  ];
}
