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

    initExtra = ''
      keychain -q $HOME/.ssh/id_ed25519
      source $HOME/.keychain/$HOSTNAME-sh
    '';
  };

  home.stateVersion = "24.11";
}
