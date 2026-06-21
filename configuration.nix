{ config, lib, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./modules/boot.nix
    ./modules/desktop.nix
    ./modules/hardware.nix
    ./modules/packages.nix
    ./modules/services.nix
    ./modules/users.nix
    ./modules/home-manager.nix
  ];

  networking.hostName = "richixs";
  time.timeZone = "America/La_Paz";

  # Nix & Flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "26.05"; 
}
