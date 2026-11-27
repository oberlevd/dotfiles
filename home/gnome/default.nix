{ ... }:

{
  imports = [
    ./appearance.nix
    ./keyboard.nix
    ./shortcuts.nix
    ./interface.nix
  ];

  dconf.enable = true;
}
