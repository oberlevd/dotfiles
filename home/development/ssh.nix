_:

{
  services.ssh-agent.enable = true;

  programs.ssh = {
    enable = true;
    enableDefaultConfig = false;

    settings = {
      "github.com" = {
        HostName = "github.com";
        User = "git";
        IdentityFile = "~/.ssh/id_ed25519";
        IdentitiesOnly = true;
        AddKeysToAgent = "yes";

        IdentityAgent = "\${XDG_RUNTIME_DIR}/ssh-agent";
      };
    };
  };
}
