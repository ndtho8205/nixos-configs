{ config, pkgs, ... }:

{
  services.xserver.enable = true;
  services.xserver.windowManager.bspwm.enable = true;

  services.picom.enable = true;
  environment.systemPackages = with pkgs; [
    sudo,
    rofi,
    htop,
    alacritty,
  ]
}
