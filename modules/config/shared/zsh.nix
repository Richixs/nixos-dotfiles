{ config, pkgs, ... }:

{
  home.file.".p10k.zsh".source = ./p10k.zsh;

  programs.zsh = {
    enable = true;

    plugins = [
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }
    ];

    initContent = ''
      POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true

      # fzf
      eval "$(fzf --zsh)"
      
      # alias
      alias ls="lsd"

      [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
    '';

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "docker" "sudo" "z" ];
      theme = ""; 
    };
  };
}
