{
  # 文件描述，随便写，或者不写也可以
  description = "Lan Tian's NixOS Flake";

  # 输入配置，即软件源
  inputs = {
    # Nixpkgs，即 NixOS 官方软件源
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nur = {
      url = "github:nix-community/NUR";
    };
    nixos-cn = {
      url = "github:nixos-cn/flakes"; # NixOS CN 的 GitHub 地址
      inputs.nixpkgs.follows = "nixpkgs"; # 强制 NixOS CN 与 nixpkgs 使用同一版本的 nixpkgs
    };

    # Specify the source of Home Manager and Nixpkgs.
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  # 输出配置，即 NixOS 系统配置
  outputs = {
    self,
    nixpkgs,
    nur,
    home-manager,
    ...
  } @ inputs: let
    system = "x86_64-linux";
    username = (import ./common.nix).username;
  in {
    # 定义一个名为 nixos 的系统

    nixosConfigurations."nixos" = nixpkgs.lib.nixosSystem {
      modules = [
        nur.nixosModules.nur
        ./configuration.nix
        ./pkgs.nix
        ./clash
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.${username} = import ./home-manager;

          # Optionally, use home-manager.extraSpecialArgs to pass
          # arguments to home.nix
        }
      ];
    };
    formatter.x86_64-linux = nixpkgs.legacyPackages.${system}.alejandra;
  };
}
