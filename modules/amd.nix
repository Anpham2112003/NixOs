{config,pkgs,...}:
{
	services.xserver.enable = true;
	services.xserver.xkb.layout = "us";
	services.xserver.videoDrivers = ["amdgpu"];
	
	hardware.graphics.enable = true;
	

}
