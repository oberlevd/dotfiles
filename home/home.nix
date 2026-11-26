{ ... }:

{
  home.username = "chouqe";
  home.homeDirectory = "/home/chouqe";

  home.stateVersion = "26.05";

  imports = [
    ./development/git.nix
    ./development/ssh.nix
    ./development/languages
    ./terminal
  ];
}
