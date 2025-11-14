{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager = {
		url = "github:nix-community/home-manager/release-25.05";
		inputs.nixpkgs.follows="nixpkgs";

	};

  };

  outputs = { self, nixpkgs,home-manager,... }: {


    nixosConfigurations.anpham = nixpkgs.lib.nixosSystem {
		
		modules = [
			./host/configuration.nix
			./modules/bluetooth.nix
			./modules/amd.nix
			./modules/font.nix
			./modules/sddm.nix
			./modules/zsh.nix
			./modules/audio.nix
			home-manager.nixosModules.home-manager {
				home-manager.useGlobalPkgs = true;
				home-manager.useUserPackages = true;
				home-manager.users.anpham = import ./home/default.nix;
				
			}
		];
	};

  };
}
