{ lib, ... }:

{
  dconf.settings = {
    "org/gnome/desktop/session" = {
      idle-delay = lib.hm.gvariant.mkUint32 3600;
    };

    "org/gnome/desktop/screensaver" = {
      # Блокировать сразу при срабатывании простоя.
      lock-enabled = true;
      lock-delay = lib.hm.gvariant.mkUint32 0;
    };

    "org/gnome/settings-daemon/plugins/power" = {
      # Не отправлять компьютер в сон автоматически от сети.
      sleep-inactive-ac-type = "nothing";
    };
  };
}
