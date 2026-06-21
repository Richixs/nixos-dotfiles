{ config, pkgs, ... }:

{
  programs.wezterm = {
    enable = true;
    extraConfig = ''
      local wezterm = require 'wezterm'
      local config = {}
      
      config.color_scheme = 'Retro'
      config.font_size = 12.0
      
      return config
    '';
  };
}
