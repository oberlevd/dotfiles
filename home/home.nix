_:

{
  home = {
    username = "chouqe";
    homeDirectory = "/home/chouqe";
    stateVersion = "26.05";
  };

  imports = [
    ../system/niri/home.nix
    ./development/git.nix
    ./development/ssh.nix
    ./development/build-tools.nix
    ./development/languages
    ./development/editors
    ./gnome
    ./terminal
    ./media
    ./sharing
    ./notes
    ./browsers
  ];
}
