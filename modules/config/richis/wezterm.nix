{ config, pkgs, ... }:

{
  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    nerd-fonts.hack
  ];

  programs.wezterm = {
    enable = true;
    extraConfig = ''
      local wezterm = require 'wezterm'
      local config = {}

      config.font = wezterm.font 'Hack Nerd Font'
      config.font_size = 14.0

      config.window_background_opacity = 0.85
      
      return config
    '';
  };
}
