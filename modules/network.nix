{config,pkgs,...}:
{
  networking.networkmanager.enable = true; 

  networking.networkmanager.dns = "systemd-resolved";

  services.resolved = {
    enable = true;
    dns = [ "1.1.1.1" "1.0.0.1" ]; # DNS Cloudflare chính & phụ
    fallbackDns = [ "8.8.8.8" "8.8.4.4" ]; # fallback của Google (tuỳ chọn)
    domains = [ "~." ]; # đảm bảo dùng DNS này cho toàn hệ thống
  };

  
}