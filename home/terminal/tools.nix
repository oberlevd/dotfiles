{ pkgs, ... }:

{
  home.packages = with pkgs; [
    jq
    tree
    curl
    wget
    zip
    unzip
    bat
    fd
    ripgrep
  ];
}
