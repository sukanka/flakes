# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  vscode-LiveServer = {
    pname = "vscode-LiveServer";
    version = "5.7.9";
    src = fetchurl {
      url = "https://ritwickdey.gallery.vsassets.io/_apis/public/gallery/publisher/ritwickdey/extension/LiveServer/5.7.9/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage";
      name = "LiveServer-5.7.9.zip";
      sha256 = "sha256-w0CYSEOdltwMFzm5ZhOxSrxqQ1y4+gLfB8L+EFFgzDc=";
    };
    name = "LiveServer";
    publisher = "ritwickdey";
  };
  vscode-remote-ssh-edit = {
    pname = "vscode-remote-ssh-edit";
    version = "0.84.0";
    src = fetchurl {
      url = "https://ms-vscode-remote.gallery.vsassets.io/_apis/public/gallery/publisher/ms-vscode-remote/extension/remote-ssh-edit/0.84.0/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage";
      name = "remote-ssh-edit-0.84.0.zip";
      sha256 = "sha256-33jHWC8K0TWJG54m6FqnYEotKqNxkcd/D14TFz6dgmc=";
    };
    name = "remote-ssh-edit";
    publisher = "ms-vscode-remote";
  };
}
