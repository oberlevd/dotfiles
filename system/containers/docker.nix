_:

{
  virtualisation.docker = {
    enable = true;
    enableOnBoot = false;

    daemon.settings = {
      "log-driver" = "local";

      "log-opts" = {
        "max-size" = "10m";
        "max-file" = "3";
        "compress" = "true";
      };
    };
  };

  users.users.chouqe.extraGroups = [
    "docker"
  ];
}
