{ config, pkgs, ... }:

{
  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
  
  # Shared configuration
  home-manager.sharedModules = [
    ./config/shared/zsh.nix
  ];

  # User configuration
  home-manager.users.richis = import ./config/richis/home-manager.nix;
}
