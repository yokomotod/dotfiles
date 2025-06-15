{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    ripgrep
    nodejs
  ];

  programs.bash = {
    enable = true;

    shellAliases = {
      ll = "ls -l";
      la = "ls -la";

      claude = "npm exec --offline @anthropic-ai/claude-code";
    };
  };

  home.stateVersion = "24.11";
}
