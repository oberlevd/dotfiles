{ pkgs, ... }:

{
  users.users."chouqe" = {
    isNormalUser = true;
    description = "chouqe";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    ];
  };
}
