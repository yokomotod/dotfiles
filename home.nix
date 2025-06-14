{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    ripgrep
  ];

  home.stateVersion = "24.11";
}
