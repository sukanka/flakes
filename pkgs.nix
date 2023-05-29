{
  config,
  pkgs,
  ...
}: let
  vscode = (import ./vscode pkgs).vscode;
  python-with-my-packages = (import ./python pkgs).my-python;
in {
  environment.systemPackages = with pkgs; [
    vscode
    python-with-my-packages
    pkgs.git
    neovim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    dolphin
    konsole
    yakuake
    ark
    okular
    google-chrome
    kdeconnect
    home-manager
    rnix-lsp
    nil
    nix-top
    htop
    clash-meta
    element-desktop
    nvfetcher
    kdiskmark
    fcitx5-chinese-addons
  ];
  i18n.defaultLocale = "zh_CN.UTF-8";

  fonts.fonts = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    liberation_ttf
    fira-code
    fira-code-symbols
    mplus-outline-fonts.githubRelease
    dina-font
    proggyfonts
  ];
  i18n.inputMethod = {
    enabled = "fcitx5";
    fcitx5.addons = with pkgs; [
      fcitx5-chinese-addons
    ];
  };
}
