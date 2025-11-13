{config,pkgs,...}:
{
    wayland.windowManager.hyprland.settings = {
		"$mod" = "SUPER";
		bind = [
		    "$mod, B , exec , firefox"
		    "$mod , Q , killactive"
		    "$mod , T , exec , kitty"
				"$mod, F , fullscreen"
				"$mod , A , exec , wofi --show drun"
		];	
	};
}
