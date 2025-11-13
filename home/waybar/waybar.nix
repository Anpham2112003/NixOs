{config,pkgs,...}:
{
  programs.waybar ={
    enable = true;
  };
  
  imports = [
    ./setting.nix
    ./style.nix
  ];
}