{config,pkgs,... }:
{	home.stateVersion= "25.05";
	home.username= "anpham";
	home.homeDirectory = "/home/anpham";


	imports =[
		./package.nix
		./hyprland/hyprland.nix
		./waybar/waybar.nix
		./code/vscode.nix
		./code/git.nix
		./wofi/wofi.nix
	];
}
