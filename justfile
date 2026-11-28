default:
    @just --list

check:
    nixos-rebuild dry-build --flake .#desktop

build:
    nixos-rebuild build --flake .#desktop

rebuild:
    sudo nixos-rebuild switch --flake .#desktop

install: check build
    sudo nixos-rebuild switch --flake .#desktop

update:
    nix flake update

generations:
    sudo nix-env --list-generations --profile /nix/var/nix/profiles/system

validate-niri:
    niri validate --config system/niri/config.kdl

space:
    df -h / /nix

fmt-nix:
    git ls-files -z -- '*.nix' ':!system/hardware-configuration.nix' | xargs -0 -r nixfmt

fmt-lua:
    git ls-files -z -- '*.lua' | xargs -0 -r stylua

fmt: fmt-nix fmt-lua

fmt-check:
    git ls-files -z -- '*.nix' ':!system/hardware-configuration.nix' | xargs -0 -r nixfmt --check
    git ls-files -z -- '*.lua' | xargs -0 -r stylua --check

lint-statix:
    git ls-files -z -- '*.nix' ':!system/hardware-configuration.nix' | xargs -0 -r -n 1 statix check

lint-deadnix:
    git ls-files -z -- '*.nix' ':!system/hardware-configuration.nix' | xargs -0 -r deadnix --fail

lint: lint-statix lint-deadnix

verify: fmt-check lint
