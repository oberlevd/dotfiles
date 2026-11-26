{ pkgs, ... }:

{
  fonts.fontconfig.enable = true;

  home.packages = [
    pkgs.nerd-fonts.jetbrains-mono
  ];

  fonts.fontconfig.defaultFonts.monospace = [
    "JetBrainsMono Nerd Font Mono"
  ];

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      monospace-font-name = "JetBrainsMono Nerd Font Mono 12";
    };
  };
}
