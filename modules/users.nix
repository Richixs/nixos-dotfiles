{ config, pkgs, ... }:

{
  programs.zsh.enable = true;

  users.users.richis = {
    isNormalUser = true;
    extraGroups = [ "wheel" "docker" ];
    packages = with pkgs; [
      tree
      element-desktop
    ];
    shell = pkgs.zsh;
  };
}
