{
    services.xserver = {
    # Enable the GNOME Desktop Environment.
    enable = true;

    # Enable the GNOME Desktop Environment.
    desktopManager.gnome.enable = true;    
    displayManager.gdm.enable = true;
    # displayManager.gdm.wayland = true;

    # Configure keyboard
    xkb = {
        variant = "";
        layout = "fr";
    };
  };

  services.gnome.gnome-keyring.enable = true;
}