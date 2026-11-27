{ ... }:

{
  programs.mpv = {
    enable = true;

    config = {
      save-position-on-quit = true;

      keep-open = true;
    };
  };

  xdg.mimeApps = {
    enable = true;

    defaultApplications = {
      "video/mp4" = [ "mpv.desktop" ];
      "video/x-matroska" = [ "mpv.desktop" ];
      "video/webm" = [ "mpv.desktop" ];
      "video/quicktime" = [ "mpv.desktop" ];
    };
  };
}
