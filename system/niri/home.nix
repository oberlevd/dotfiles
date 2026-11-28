{ ... }:

{
  imports = [
    ./waybar.nix
    ./notifications.nix
    ./polkit.nix
    ./idle.nix
    ./clipboard.nix
  ];

  programs.alacritty = {
    enable = true;

    settings = {
      font = {
        normal.family = "JetBrainsMono Nerd Font Mono";
        size = 12;
      };

      window.padding = {
        x = 10;
        y = 10;
      };

      scrolling.history = 10000;
    };
  };

  programs.fuzzel = {
    enable = true;

    settings.main = {
      font = "JetBrainsMono Nerd Font Mono:size=12";
      terminal = "alacritty";
    };
  };

  xdg.configFile."niri/config.kdl".source = ./config.kdl;
}
