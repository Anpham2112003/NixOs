{config,pkgs,...}:
{
    wayland.windowManager.hyprland.settings = {
		"exec-once" = "waybar";
		"$mod" = "SUPER";
		bind = [
		  "$mod, B , exec , firefox"
		  "$mod , Q , killactive"
		  "$mod , T , exec , kitty "
			"$mod, F , fullscreen"
			"$mod , A , exec , wofi --show drun"
			"$mod , P , pin"

		]
		++ ( 
			# Funtion return List [ "$mod, 1, workspace , 1" "$mod, 2, workspace , 2" ... ]
			# And Append List Bind key
        builtins.genList (i:
          let ws = i + 1; in 
            "$mod, ${toString ws}, workspace, ${toString ws}"
          
        ) 9);
		

		gesture = [
			"2, pinch,resize"
			"3,horizontal,workspace"
			"3,up,fullscreen"
			"3,down, close"
		];
		

	};
}
