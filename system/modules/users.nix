{ ... }:

{
  users.users."chouqe" = {
    isNormalUser = true;
    description = "chouqe";

    extraGroups = [
      "networkmanager"
      "wheel"
    ];
  };
}
