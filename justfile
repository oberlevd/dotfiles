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
