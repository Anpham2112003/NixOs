{pkgs,config,...}:
  let 
    primaryColor   = "#0d6efd";
    secondaryColor = "#6c757d";
    successColor   = "#198754";
    dangerColor    = "#dc3545";
    warningColor   = "#ffc107";
    infoColor      = "#0dcaf0";
    lightColor     = "#f8f9fa";
    darkColor      = "#212529";

  in {

      programs.waybar.style = ''
        *{
      
            font-family: "Symbols Nerd Font Mono" , Inter, Roboto, "Material Symbols Outlined", "Symbols Nerd Font Mono", sans-serif;
        }

        #waybar{
          background: transparent;
          margin-top: 20px;
        }

        #battery{
          background : ${darkColor};
          border-radius : 6px;
          color: ${lightColor};
          margin-right : 20px;
        }

        #pulseaudio{
          background : ${darkColor};
          border-radius : 6px;
          color: ${lightColor};
          margin-right : 20px;
        }



    

    

  '';
}