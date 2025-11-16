{config,pkgs,...}:
{
  services.hyprpaper = {
    enable = true;
    settings = {
       ipc = "on";
        splash = false;
        splash_offset = 2.0;

        preload = [
          "~/nixos/home/wallpapers/wallhaven-5g22q5_2560x1440.png" 
        ];

        wallpaper = [
          "eDP-1,~/nixos/home/wallpapers/wallhaven-5g22q5_2560x1440.png"
        ];
    };

  };
}