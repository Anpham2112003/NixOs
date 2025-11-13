{config,pkgs,...}:
{
   fonts = {
            enableDefaultPackages = true;
            fontconfig.enable = true;

            packages = with pkgs; [
              inter
              roboto
              noto-fonts-cjk-serif
              noto-fonts-color-emoji
              jetbrains-mono
              fira-code
              nerd-fonts.fira-code
              nerd-fonts.droid-sans-mono
            ];

            fontconfig.defaultFonts = {
              serif = [ "Noto Serif" ];
              sansSerif = [ "Inter" "Roboto" ];
              monospace = [ "Symbols Nerd Font Mono" "JetBrains Mono" "Fira Code" ];
              emoji = [ "Noto Color Emoji" ];
            };
          };

}