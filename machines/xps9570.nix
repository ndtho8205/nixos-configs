{ config, pkgs, ... }:

{
  networking.hostName = "br";

  users.users.ndtho8205 = {
    isNormalUser = true;
    uid = 1000;
    home = "/home/ndtho8205";
    description = "Tho Nguyen";
    extraGroups = [ "wheel" "networkmanager" ];
  };
}
