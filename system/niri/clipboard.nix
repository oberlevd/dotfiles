{ pkgs, ... }:

{
  home.packages = [
    pkgs.cliphist

    (pkgs.writeShellApplication {
      name = "niri-clipboard";

      runtimeInputs = [
        pkgs.cliphist
        pkgs.fuzzel
        pkgs.wl-clipboard
      ];

      text = ''
        selection="$(cliphist list | fuzzel --dmenu --prompt='Буфер: ')" \
          || exit 0

        if [[ -n "$selection" ]]; then
          printf '%s\n' "$selection" | cliphist decode | wl-copy
        fi
      '';
    })
  ];
}
