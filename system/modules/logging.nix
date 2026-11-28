{ ... }:

{
  services.journald.extraConfig = ''
    SystemMaxUse=500M
    RuntimeMaxUse=100M
    SystemKeepFree=1G
    MaxRetentionSec=30day
  '';
}
