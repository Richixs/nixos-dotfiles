{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    initExtra = ''
      # fzf
      eval "$(fzf --zsh)"
      # alias
      alias ls="lsd"
    '';

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "docker" "sudo" "z" ];
      theme = "robbyrussell";
    };
  };
}
