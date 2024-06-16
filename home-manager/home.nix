{ config, pkgs,  ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "matska";
  home.homeDirectory = "/home/matska";

  home.stateVersion = "24.05"; # You better don't touch

  home.sessionVariables = {
    # Nano is our best friend for git rebase :)
    EDITOR = "nano";
  };

  # Allow unfree packages
  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };
  };

  imports = [
    ./modules/bundle.nix
  ];

  programs = {
    home-manager.enable = true;
  };
}
