{ config, ... }:

let
  flake = "${config.home.homeDirectory}/dotfiles#desktop";
in
{
  programs.bash = {
    enable = true;

    historySize = 10000;
    historyFileSize = 20000;
    historyControl = [
      "ignoreboth"
      "erasedups"
    ];

    shellAliases = {
      rebuild = "sudo nixos-rebuild switch --flake '${flake}'";
      check = "nixos-rebuild build --flake '${flake}'";
      rollback = "sudo nixos-rebuild switch --rollback";

      dots = "cd ~/dotfiles";
    };
  };
}
