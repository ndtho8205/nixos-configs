{ config, pkgs, ... }:

{
  services = {
    xserver = {
      enable = true;
      windowManager.bspwm.enable = true;
    };

    picom.enable = true;
  };

  environment.systemPackages = with pkgs; [
    zsh
    alacritty
    bspwm
    sxhkd
    rofi
    dunst
  ];
}
