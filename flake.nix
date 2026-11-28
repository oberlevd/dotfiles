{
  description = "oberlev configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { nixpkgs, home-manager, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      nixosConfigurations.desktop = nixpkgs.lib.nixosSystem {
        inherit system;

        modules = [
          ./system/configuration.nix

          home-manager.nixosModules.home-manager

          {
            home.manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              users.chouqe = import ./home/home.nix;
            };
          }
        ];
      };

      devShells.${system}.default = pkgs.mkShell {
        packages = with pkgs; [
          just
          git
          nixfmt
          stylua
          statix
          deadnix
        ];
      };
    };
}
