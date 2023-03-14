{pkgs, ...}: let
  extFromMarket = (import ./extFromMarket.nix pkgs).extFromMarket;
in {
  vscode = with pkgs; (vscode-with-extensions.override {
    vscodeExtensions = with vscode-extensions;
      [
        jnoortheen.nix-ide
        # ms-python.python
        james-yu.latex-workshop
        ms-vscode-remote.remote-ssh
        golang.go
        ms-ceintl.vscode-language-pack-zh-hans
        yzhang.markdown-all-in-one
        ms-python.vscode-pylance
      ]
      ++ extFromMarket;
  });
}
