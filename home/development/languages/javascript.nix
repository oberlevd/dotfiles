{ pkgs, ... }:

{
  home.packages = with pkgs; [
    nodejs_26
    pnpm
    typescript
    typescript-language-server
  ];
}
