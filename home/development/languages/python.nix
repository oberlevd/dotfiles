{ pkgs, ... }:

{
  home.packages = with pkgs; [
    python3
    uv
    ruff
    pyright
  ];

  home.sessionVariables = {
    UV_PYTHON_DOWNLOADS = "never";
  };
}
