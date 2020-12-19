
{ config, pkgs, ... }:

{
  # Touchpad
  services.xserver.libinput.enable = true;
  services.xserver.libinput.tapping = true;
  services.xserver.libinput.naturalScrolling = true;
  services.xserver.libinput.disableWhileTyping = true;
  services.xserver.libinput.scrollMethod = "twofinger";
}
