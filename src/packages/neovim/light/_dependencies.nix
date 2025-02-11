{
  pkgs,
}:
(with pkgs; [
  ripgrep
  clang

  stylua
  luajitPackages.luacheck

  statix
  alejandra
])
