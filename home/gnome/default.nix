_:

{
  imports = [
    ./appearance.nix
    ./keyboard.nix
    ./shortcuts.nix
    ./interface.nix
    ./power.nix
    ./files.nix
    ./clipboard.nix
  ];

  dconf.enable = true;
}
