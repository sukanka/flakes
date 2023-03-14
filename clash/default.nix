{pkgs, ...}: let
  user = (import ../common.nix).username;
in {
  systemd.services = {
    "clash-meta@${user}" = {
      enable = true;
      unitConfig = {
        Description = "clash service";
        After = "network.target";
      };
      serviceConfig = {
        Type = "simple";
        User = "${user}";
        Restart = "on-abort";
        CapabilityBoundingSet = "CAP_NET_ADMIN CAP_NET_RAW CAP_NET_BIND_SERVICE";
        AmbientCapabilities = "CAP_NET_ADMIN CAP_NET_RAW CAP_NET_BIND_SERVICE";
        ExecStart = "${pkgs.clash-meta}/bin/clash-meta";
      };
      wantedBy = ["multi-user.target"];
    };
  };
}
