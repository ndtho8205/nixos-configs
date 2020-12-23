{ config, pkgs, ... }:

{
  services.xserver = {
    useGlamor = true;
    videoDrivers = [ "modesetting" ];
  };

  modules = with pkgs; [
    freetype
  ];

  hardware.opengl.extraPackages = [
    intel-compute-runtime
  ];
}
