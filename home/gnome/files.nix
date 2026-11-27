{ ... }:

{
  dconf.settings = {
    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "list-view";
      search-filter-time-type = "last_modified";
    };

    "org/gtk/gtk4/settings/file-chooser" = {
      sort-directories-first = true;
    };

    "org/gnome/nautilus/list-view" = {
      default-visible-columns = [
        "name"
        "size"
        "type"
        "date_modified"
      ];
    };
  };
}
