{
  config,
  pkgs,
  ...
}: let
  CONSTANTS = import ../common.nix;
in rec {
  # Home Manager needs a bit of information about you and the
  # paths it should manage.

  home.username = CONSTANTS.username;
  home.homeDirectory = "/home/" + home.username;

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.11";

  # Let Home Manager install and manage itself.
  programs.git = {
    enable = true;
    userName = home.username;
    userEmail = CONSTANTS.git_user_email;
  };
  programs.zsh = {
    enable = true;
    # 这两个选项好用，但是导致 zsh启动太慢。
    # enableAutosuggestions = true;
    # enableSyntaxHighlighting = true;
    oh-my-zsh = {
      enable = true;
      theme = "ys";
      plugins = [
        "git"
        "sudo"
      ];
    };
  };
}
