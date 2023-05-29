{pkgs, ...}: let
  parsePkg = pkg:
    with pkg; {
      name = passthru.name;
      publisher = passthru.publisher;
      inherit version;
      sha256 = src.sha256;
    };
  sources = builtins.fromJSON (builtins.readFile ../_sources/generated.json);
in {
  extFromMarket = pkgs.vscode-utils.extensionsFromVscodeMarketplace (
    [
      # {
      #   name = "vscode-typescript-next";
      #   publisher = "ms-vscode";
      #   version = "5.0.202302260";
      #   sha256 = "KNQslqJa8zEKMu0FsVHj/J5ZonKy0wrZf+jN8PJQbLA=";
      # }
    ]
    ++ map parsePkg (builtins.attrValues sources)
  );
}
