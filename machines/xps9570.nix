{ config, pkgs, ... }:

{
  networking.hostName = "br";

  time.timeZone = "Asia/Tokyo";

  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  users = {
    defaultUserShell = pkgs.zsh;

    users.ndtho8205 = {
      uid = 1000;
      isNormalUser = true;
      group = "users";
      home = "/home/ndtho8205";
      description = "Tho Nguyen";
      useDefaultShell = true;
      initialPassword = "changeme";

      extraGroups = [
        "wheel"
        "audio"
        "input"
        "storage"
        "video"
        "networkmanager"
      ];

      packages = [
        sudo
        firefox
        git
        htop
        alsaUtils
        exfat
        gptfdisk
        hugo
        mkpasswd
        lynx
        feh
        softether
        unzip
        vim
        wget

        zsh
        sutils
        xdo
        xdotool
        xfontsel
        xlsfonts
        xorg.mkfontdir
        xorg.xbacklight
        xorg.xprop
        xtitle
      ];
    };
  };
}
