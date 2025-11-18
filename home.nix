{ config, pkgs, ... }:

{
  home.sessionPath = [
    "$HOME/.local/bin"
    "$HOME/.npm-global/bin"
  ];

  home.packages = with pkgs; [
    tree
    ripgrep
    jq
    nodejs_latest
    (yarn.override { nodejs = nodejs_latest; })
    pnpm
    python3
    gnumake
    gcc
    uv
    tenv
    awscli2
  ];

  programs.bash = {
    enable = true;

    shellAliases = {
      ll = "ls -l";
      la = "ls -la";
    };

    initExtra = ''
      keychain -q $HOME/.ssh/id_ed25519
      source $HOME/.keychain/$HOSTNAME-sh

      export TENV_AUTO_INSTALL=true
    '';
  };

  xdg.configFile."git/config".source = ./.config/git/config;
  xdg.configFile."git/ignore".source = ./.config/git/ignore;
  home.file.".local/bin/diff-highlight" = {
    source = "${pkgs.git}/share/git/contrib/diff-highlight/diff-highlight";
    executable = true;
  };

  # https://docs.npmjs.com/resolving-eacces-permissions-errors-when-installing-packages-globally
  home.file.".npmrc".text = ''
    prefix=~/.npm-global
  '';

  home.stateVersion = "24.11";
}
