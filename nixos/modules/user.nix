
{ pkgs, ... }: {
  programs.zsh.enable = true;

  users = {
    defaultUserShell = pkgs.zsh;

    users.matska = {
      isNormalUser = true;
      description = "matska";
      extraGroups = [ "networkmanager" "wheel" "input" "libvirtd" ];
      packages = with pkgs; [];
    };
  };
}
