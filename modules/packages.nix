{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    wget
    fastfetch
    brave
    wezterm
    git
    docker
    btop
    fzf
    obs-studio
    kiro
    vscode
    discord
    lsd
    steam
    prismlauncher
  ];
}
