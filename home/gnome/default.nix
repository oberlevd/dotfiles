{ ... }:

{
  imports = [
    ./appearance.nix
    ./keyboard.nix
  ];

  dconf.enable = true;
}
