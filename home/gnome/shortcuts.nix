_:

{
  dconf.settings = {
    "org/gnome/settings-daemon/plugins/media-keys" = {
      screensaver = [ "<Super>l" ];

      custom-keybindings = [
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/vscode/"
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files/"
      ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/vscode" = {
      name = "VS Code";
      command = "code";
      binding = "<Super>e";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files" = {
      name = "Files";
      command = "nautilus";
      binding = "<Super>f";
    };
  };
}
