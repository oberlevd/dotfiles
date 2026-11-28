_:

{
  programs.waybar = {
    enable = true;
    systemd.enable = false;

    settings.mainBar = {
      layer = "top";
      position = "top";
      height = 34;

      modules-left = [
        "niri/workspaces"
        "niri/window"
      ];

      modules-center = [
        "clock"
      ];

      modules-right = [
        "cpu"
        "memory"
        "pulseaudio"
        "network"
        "tray"
      ];

      "niri/workspaces" = {
        format = "{index}";
      };

      "niri/window" = {
        max-length = 40;
      };

      clock = {
        format = "{:%d.%m  %H:%M}";
        tooltip-format = "{:%A, %d %B %Y}";
      };

      cpu = {
        format = "CPU {usage}%";
        interval = 5;
      };

      memory = {
        format = "RAM {percentage}%";
        interval = 5;
      };

      pulseaudio = {
        format = "VOL {volume}%";
        format-muted = "MUTE";
        scroll-step = 5;
      };

      network = {
        format-wifi = "Wi-Fi {essid}";
        format-ethernet = "LAN";
        format-disconnected = "Offline";
        tooltip-format = "{ifname}: {ipaddr}";
      };

      tray = {
        spacing = 8;
      };
    };

    style = ''
      * {
        font-family: "JetBrainsMono Nerd Font Mono";
        font-size: 13px;
        border: none;
        border-radius: 0;
        min-height: 0;
      }

      window#waybar {
        background: #1e1e2e;
        color: #cdd6f4;
      }

      #workspaces button {
        padding: 0 10px;
        color: #a6adc8;
        background: transparent;
      }

      #workspaces button.active {
        color: #1e1e2e;
        background: #89b4fa;
      }

      #window {
        padding: 0 12px;
      }

      #clock,
      #cpu,
      #memory,
      #pulseaudio,
      #network,
      #tray {
        padding: 0 10px;
      }
    '';
  };
}
