{ config, pkgs, ... }:

{
  networking= {
    # NetworkManager
    networkmanager.enable = true;

    # IPv6
    enableIPv6 = false;

    # Firewall
    firewall.enable = true;
    firewall.allowPing = false;
  };
}
