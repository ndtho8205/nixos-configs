{ lib, ... }:

{
  boot.kernel.sysctl = {
    "vm.swappiness" = 1;
  };

  services.fstrim.enable = true;
}
