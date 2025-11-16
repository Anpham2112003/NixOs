{config,pkgs,...}:
{
  wayland.windowManager.hyprland.settings = {
    decoration = {
      rounding = 15;

 

      blur = {
        enabled = true;
        size = 7;
        passes = 3;
        ignore_opacity = true;
        contrast = 1.5;
        noise = 0.08;
        xray = false;
        new_optimizations = true;
       
      };
    };

  };
}