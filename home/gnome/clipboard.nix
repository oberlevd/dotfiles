{ pkgs, ... }:

{
  home.packages = [
    pkgs.gnomeExtensions.clipboard-history
  ];

  dconf.settings = {
    "org/gnome/shell" = {
      disable-user-extensions = false;

      enabled-extensions = [
        pkgs.gnomeExtensions.clipboard-history.extensionUuid
      ];
    };

    "org/gnome/shell/keybindings" = {
      toggle-message-tray = [ "<Super>m" ];
    };

    "org/gnome/shell/extensions/clipboard-history" = {
      toggle-menu = [ "<Super>v" ];
      history-size = 100;
      enable-keybindings = true;
      paste-on-selection = true;
    };
  };
}
