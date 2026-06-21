{ config, pkgs, ... }:

{
  imports = [
    ./wezterm.nix
  ];

  home.stateVersion = "26.05";
  programs.home-manager.enable = true;
}
