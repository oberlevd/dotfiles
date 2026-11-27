{ ... }:

{
  imports = [
    ./appearance.nix
    ./keyboard.nix
    ./shortcuts.nix
    ./interface.nix
    ./power.nix
    ./files.nix
  ];

  dconf.enable = true;
}
