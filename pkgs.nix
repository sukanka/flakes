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
    nix-top
    htop
    clash-meta
    element-desktop
    nvfetcher
  ];
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
}
