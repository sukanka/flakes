{pkgs, ...}: {
  extFromMarket = pkgs.vscode-utils.extensionsFromVscodeMarketplace [
    {
      name = "remote-ssh-edit";
      publisher = "ms-vscode-remote";
      version = "0.47.2";
      sha256 = "1hp6gjh4xp2m1xlm1jsdzxw9d8frkiidhph6nvl24d0h8z34w49g";
    }
    {
      name = "vscode-stylelint";
      publisher = "stylelint";
      version = "1.2.4";
      sha256 = "krJ8vC+przrHL3PIQrW0hQhL6ntp71nhudP4LxdDIno=";
    }
    # {
    #   name = "sql-bindings-vscode";
    #   publisher = "ms-mssql";
    #   version = "0.3.0";
    #   sha256 = "10yyG18jfmiMk7BwkLkz9/CYaZq+NUJ3FE1CHgDUTC8=";
    # }
    {
      name = "isort";
      publisher = "ms-python";
      version = "2022.8.0";
      sha256 = "l7mXTKdAE56DdnSaY1cs7sajhG6Yzz0XlZLtHY2saB0=";
    }
    {
      name = "LiveServer";
      publisher = "ritwickdey";
      version = "5.7.9";
      sha256 = "w0CYSEOdltwMFzm5ZhOxSrxqQ1y4+gLfB8L+EFFgzDc=";
    }
    {
      name = "volar";
      publisher = "vue";
      version = "1.1.7";
      sha256 = "0UWypzRZalG/6U44uwnToCUkuqmUNCAzyGXo2ch8Ud4=";
    }
    {
      name = "vscode-typescript-vue-plugin";
      publisher = "vue";
      version = "1.2.0";
      sha256 = "YkV0J7MnvlUeCLfey2TEQCAE/6Gc0Cq8MYNvtjyMPGc=";
    }
    {
      name = "vscode-typescript-next";
      publisher = "ms-vscode";
      version = "5.0.202302260";
      sha256 = "KNQslqJa8zEKMu0FsVHj/J5ZonKy0wrZf+jN8PJQbLA=";
    }
  ];
}
