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

		]
		++ (
			# Funtion return List [ "$mod, 1, workspace , 1" "$mod, 2, workspace , 2" ... ]
			# And Append List Bind key
        builtins.genList (i:
          let ws = i + 1; in 
            "$mod, ${toString ws}, workspace, ${toString ws}"
          
        ) 9);


	};
}
