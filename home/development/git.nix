{ ... }:

{
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "Oberlev Daniil";
        email = "oberlev.daniil@yandex.ru";
      };

      init.defaultBranch = "main";

      core = {
        editor = "nvim";
        autocrlf = "input";
        quotePath = false;
      };

      pull = {
        rebase = true;
        autoStash = true;
      };

      push = {
        default = "current";
        autoSetupRemote = true;
        followTags = true;
      };

      fetch = {
        prune = true;
        pruneTags =  true;
      };

      rebase = {
        autoStash = true;
        autoSquash = true;
      };

      merge = {
        conflictStyle = "zdiff3";
        tool = "nvimdiff";
      };

      rerere.enabled = true;

      diff = {
        colorMoved = "default";
        algorithm = "histogram";
        renames = "copies";
      };

      color = {
        ui = "auto";

        branch = {
          current = "yellow reverse";
          local = "green";
          remote = "red";
        };

        diff = {
          meta = "yellow bold";
          frag = "magenta bold";
          old = "red bold";
          new = "green bold";
        };

        status = {
          added = "green";
          changed = "yellow";
          untracked = "cyan";
        };
      };
    };

    ignores = [
      ".DS_Store"
      "Thumbs.db"

      "*.swp"
      "*.swo"
      "*~"

      "/result"
      "/result-*"
      ".direnv/"
    ];
  };

  programs.delta = {
    enable = true;
    enableGitIntegration = true;

    options = {
      navigate = true;
      side-by-side = true;
      line-numbers = true;
      syntax-theme = "Dracula";
      file-style = "bold yellow ul";
      file-decoration-style = "none";
      hunk-header-style = "omit";
    };
  };
}
