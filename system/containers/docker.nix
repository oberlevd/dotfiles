_:

{
  virtualisation.docker = {
    enable = true;
    enableOnBoot = false;
  };

  users.users.chouqe.extraGroups = [
    "docker"
  ];
}
