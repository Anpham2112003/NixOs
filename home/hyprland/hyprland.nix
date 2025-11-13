{pkgs,...}:
{
	programs.kitty.enable = true;

	wayland.windowManager.hyprland.enable = true;
	

	wayland.windowManager.hyprland.settings.monitor = [
			"eDP-1 , 1920x1080@144, 0x0 , 1"
	];

	imports = [
		./keybinding.nix
	];
}
