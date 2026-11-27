{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    package = pkgs.vscode;

    profiles.default = {
      enableUpdateCheck = false;
      enableExtensionUpdateCheck = false;

      extensions = with pkgs.vscode-extensions; [
        jnoortheen.nix-ide
        ms-python.python
        ms-python.vscode-pylance
        rust-lang.rust-analyzer
        golang.go
        sumneko.lua
        esbenp.prettier-vscode
      ];

      userSettings = {
        "editor.fontSize" = 14;
        "editor.tabSize" = 2;
        "editor.insertSpaces" = true;
        "editor.minimap.enabled" = false;
        "editor.renderWhitespace" = "selection";

        "files.autoSave" = "off";
        "files.insertFinalNewline" = true;
        "files.trimTrailingWhitespace" = true;

        "telemetry.telemetryLevel" = "off";
        "git.autofetch" = false;

        "nix.enableLanguageServer" = true;
        "nix.serverPath" = "nixd";
        "nix.serverSettings" = {
          nixd = {
            formatting.command = [ "nixfmt" ];
          };
        };

        "go.toolsManagement.autoUpdate" = false;

        "[javascript]" = {
          "editor.defaultFormatter" = "esbenp.prettier-vscode";
        };

        "[typescript]" = {
          "editor.defaultFormatter" = "esbenp.prettier-vscode";
        };

        "[json]" = {
          "editor.defaultFormatter" = "esbenp.prettier-vscode";
        };

        "[nix]" = {
          "editor.defaultFormatter" = "jnoortheen.nix-ide";
        };

        "[rust]" = {
          "editor.defaultFormatter" = "rust-lang.rust-analyzer";
        };

        "[go]" = {
          "editor.defaultFormatter" = "golang.go";
        };
      };
    };
  };
}
