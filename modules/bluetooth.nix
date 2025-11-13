{config,pkgs,...}:
{
  hardware.bluetooth ={
     enable = true;
      powerOnBoot = true;
        settings = {
          General = {
            ControllerMode = "bredr"; # Fix frequent Bluetooth audio dropouts
            Experimental = true;
            FastConnectable = true;
          };
          Policy = {
            AutoEnable = true;
          };
        };
  };



  #Enable GUI bluethooth
  services.blueman.enable = true;

}