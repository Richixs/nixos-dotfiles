{ config, pkgs, ... }:

{
  # NetworkManager
  networking.networkmanager.enable = true;
  # Docker
  virtualisation.docker.enable = true;
}
