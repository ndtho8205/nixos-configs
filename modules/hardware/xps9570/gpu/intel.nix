{ config, pkgs, ... }:

{
  services.xserver = {
    videoDrivers = [ "modesetting" ];

    dpi = 144;

    useGlamor = true;
  };

  modules = with pkgs; [
    freetype
  ];

  hardware.opengl.extraPackages = [
    intel-compute-runtime
  ];
}
