{ config, lib, ... }:

{
  imports = [
    ./cpu/intel.nix
    ./gpu/intel.nix
    ./gpu/nvidia.nix
  ];

  boot = {
    kernelModules = [ "acpi_call" ];
    extraModulePackages = with config.boot.kernelPackages; [ acpi_call ];

    blacklistedKernelModules = lib.optionals (!config.hardware.enableRedistributableFirmware) [
      "ath3k"
    ];

    kernelParams = lib.mkDefault [ "acpi_rev_override" ];
  };

  # thermald
  services.thermald.enable = lib.mkDefault true;

  # TLP
  services.tlp.enable = lib.mkDefault true;
}
