{config,pkgs,...}:
{
  wayland.windowManager.hyprland.settings = {
    decoration = {
      rounding = 10;
      active_opacity = 0.8;
      inactive_opacity = 0.7;
    };
  };
}