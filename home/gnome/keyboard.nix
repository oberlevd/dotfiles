{ lib, ... }:

{
  dconf.settings = {
    "org/gnome/desktop/input-sources" = {
      sources = [
        (lib.hm.gvariant.mkTuple [
          "xkb"
          "us"
        ])
        (lib.hm.gvariant.mkTuple [
          "xkb"
          "ru"
        ])
      ];

      xkb-options = [
        "grp:alt_shift_toggle"
      ];
    };
  };
}
