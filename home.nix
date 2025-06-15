{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    ripgrep
    claude-code
  ];

  programs.bash = {
    enable = true;

    shellAliases = {
      ll = "ls -l";
      la = "ls -la";
    };
  };

  home.stateVersion = "24.11";
}
