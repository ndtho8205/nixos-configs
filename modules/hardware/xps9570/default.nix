{ config, lib, ... }:

{
  imports = [
    ./cpu/intel.nix
    ./gpu/intel.nix
    ./gpu/nvidia.nix
  ];

  # thermald
  services.thermald.enable = true;

  # TLP
  services.tlp.enable = true;
}
