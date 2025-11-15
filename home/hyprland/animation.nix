{config,pkgs,...}:
{
  
   wayland.windowManager.hyprland.settings = {

      bezier = [
        "overshoot, 0.05, 0.9, 0.1, 1.1"
        "easeInOutQuart, 0.76, 0, 0.24, 1"
        "easeInOutBack,0.68, -0.6, 0.32, 1.6"
        "easeInOutSine,0.37, 0, 0.63, 1"
      ];


      animation = [
          #window animation
          

          #workspaces
          "workspaces,1,2,easeInOutSine"
      ];
   };
}