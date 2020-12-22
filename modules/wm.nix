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
    alacritty
    bspwm
    sxhkd
    rofi
  ];
}
