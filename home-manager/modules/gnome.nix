{ pkgs, ... }:

{
  # ...
  gtk = {
    enable = true;

    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };

    # theme = {
      # name = "palenight";
      # package = pkgs.palenight-theme;
    # };

    cursorTheme = {
      name = "Numix-Cursor";
      package = pkgs.numix-cursor-theme;
    };

    gtk3.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };

    gtk4.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
  };

  # ...

  dconf.settings = {
    # ...
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };

    "org/gnome/shell" = {
      disable-user-extensions = false;

      enabled-extensions = [
      ];

      # "org/gnome/shell/extensions/user-theme" = {
      #   name = "palenight";
      # };
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/"
      ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      name = "New terminal";
      command = "gnome-terminal";
      binding = "<Super>Return";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
      name = "Reboot";
      command = "reboot";
      binding = "<Shift><Super>r";
    };

    "org/gnome/mutter" = {
      dynamic-workspaces = false;
      workspaces-only-on-primary = true;
    };
    "org/gnome/desktop/wm/preferences" = {
      num-workspaces = 4;
    };

    "org/gnome/shell/app-switcher" = {
      current-workspace-only = true;
    };
    "org/gnome/mutter/keybindings" = {
      # Modify window tiling
      toggle-tiled-left = ["<Control><Super>Left"];
      toggle-tiled-right = ["<Control><Super>Right"];
    };

    "org/gnome/desktop/wm/keybindings" = {
      # Modify window tiling
      maximize = ["<Control><Super>Up"];
      unmaximize = ["<Control><Super>Down"];


      # Move window between monitors and workspaces
      move-to-monitor-down=["<Shift><Super>Down"];
      move-to-monitor-up=["<Shift><Super>Up"];
      move-to-monitor-left= [];
      move-to-monitor-right= [];
      move-to-workspace-1=["<Super>F1"];
      move-to-workspace-2=["<Super>F2"];
      move-to-workspace-3=["<Super>F3"];
      move-to-workspace-4=["<Super>F4"];
      move-to-workspace-down="disabled";
      move-to-workspace-up="disabled";
      move-to-workspace-left=["<Shift><Super>Left"];
      move-to-workspace-right=["<Shift><Super>Right"];

      # Navigate between workspaces
      switch-to-workspace-left= ["<Super>Left"];
      switch-to-workspace-right= ["<Super>Right"];
    };

    "org/gnome/desktop/background" = {
        "picture-uri" = "/home/matska/.background-image";
    };
    "org/gnome/desktop/screensaver" = {
        "picture-uri" = "/home/me/.background-image";
    };
  };

  home.file.".background-image".source = ../../minimalist-rain-world-wallpaper.png;

  home.packages = with pkgs; [
    # ...
    gnomeExtensions.user-themes
  ];
  
}