{
  description = "Richixs.dev NixOS";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05"; 
  };

  outputs = { self, nixpkgs, ... }: {
    nixosConfigurations = {
      richixs = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hardware-configuration.nix
          ./configuration.nix
        ];
      };
    };
  };
}
