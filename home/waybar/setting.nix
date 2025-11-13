{config,pkgs,...}:
{
  programs.waybar.settings = {

    mainBar = {
      layer = "top";
      position = "top";
      height = 30;
      output = [
        "eDP-1"
        "HDMI-A-1"
      ];
      modules-left = [ "sway/workspaces" "sway/mode" "wlr/taskbar" ];
      modules-center = [ ];
      modules-right = [ "battery"];

      "sway/workspaces" = {
        disable-scroll = true;
        all-outputs = true;
      };
      
      "battery"= {
        "interval"= 60;
        "format"= "  {icon}   {capacity}%   ";
        "format-icons"= ["󰁻" "󰁽" "󰁿" "󰂁" "󱈏"];
        "states"={
          "waring"=30;
          "critcal"=20;
        };
      };


      



    };
  };


}

