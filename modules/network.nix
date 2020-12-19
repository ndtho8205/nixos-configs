{ config, pkgs, ... }:

{
  # NetworkManager
  networking.networkmanager.enable = true;

  # IPv6
  networking.enableIPv6 = false;

  # Firewall
  networking.firewall.enable = true;
  networking.firewall.allowPing = false;
}
