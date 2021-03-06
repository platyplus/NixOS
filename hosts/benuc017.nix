
########################################################################
#                                                                      #
# DO NOT EDIT THIS FILE, ALL EDITS SHOULD BE DONE IN THE GIT REPO,     #
# PUSHED TO GITHUB AND PULLED HERE.                                    #
#                                                                      #
# LOCAL EDITS WILL BE OVERWRITTEN.                                     #
#                                                                      #
########################################################################

{
  networking.hostName = "benuc017";
  time.timeZone = "Africa/Kinshasa";

  settings = {
    boot = {
      mode = "legacy";
      device = "/dev/disk/by-id/ata-DGM28-A28D81BCBQC-27_20180203AA0016207243";
    };
    reverse_tunnel = {
      enable = true;
      remote_forward_port = 6017;
    };
    crypto = {
      enable = true;
      device = "/dev/LVMVolGroup/nixos_data";
    };
  };

  imports = [
    ../bahmni.nix
  ];

}

