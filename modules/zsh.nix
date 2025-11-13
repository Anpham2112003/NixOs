{config,pkgs,...}:
{
  programs.zsh ={
    enable = true;
 

    shellAliases = {
      l = "ls -a";
      r = "sudo nixos-rebuild switch --flake /home/anpham/nixos#anpham";
      c = "sudo nix-collect-garbage -d";
    };

    ohMyZsh = {
      enable =true;

      plugins = [
        "git"
        
      ];

      theme = "robbyrussell";

    };
  };
}