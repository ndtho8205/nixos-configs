{ config, pkgs, ... }:

{
  services.xserver.videoDrivers = [ "modesetting" ];
  services.xserver.useGlamor = true;
  hardware.opengl.extraPackages = [
    intel-compute-runtime
  ];
}
