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
      modules-right = [ "pulseaudio" "battery"];

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


      "pulseaudio"= {
        "format"= "  {icon}    {volume}%  ";
        "format-bluetooth"= "  {icon}  {volume}%   ";
        "format-muted"= "";
        "format-icons"= {
            "alsa_output.pci-0000_00_1f.3.analog-stereo"= "";
            "alsa_output.pci-0000_00_1f.3.analog-stereo-muted"= "";
            "headphone"= "";
            "hands-free"= "";
            "headset"= "";
            "phone"= "";
            "phone-muted"= "";
            "portable"= "";
            "car"= "";
            "default"= ["" ""];
        };
        "scroll-step"= 1;
        "on-click"= "pavucontrol";
        "ignored-sinks"= ["Easy Effects Sink"];
      };


      



    };
  };


}

