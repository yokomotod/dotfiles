{ config, pkgs, ... }:

{
  home.sessionPath = [ "$HOME/.local/bin" ];

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

  xdg.configFile."git/config".source = ./.config/git/config;
  xdg.configFile."git/ignore".source = ./.config/git/ignore;
  home.file.".local/bin/diff-highlight" = {
    source = "${pkgs.git}/share/git/contrib/diff-highlight/diff-highlight";
    executable = true;
  };

  home.stateVersion = "24.11";
}
