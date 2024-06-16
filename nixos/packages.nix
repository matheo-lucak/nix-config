{ pkgs, ... }: {

  nixpkgs.config = {
    allowUnfree = true;
  };

  environment.systemPackages = with pkgs; [
    # Desktop apps
    discord
    gparted
    anytype

    # Coding stuff
    gnumake
    gcc

    # CLI utils
    tree
    wget
    git
    fastfetch
    htop
    nix-index
    unzip
    zip
    openssl

    # CLI essentials
    pkgs.hello
    pkgs.fortune

    # Other
    home-manager
  ];

  fonts.packages = with pkgs; [
    font-awesome
  ];
}
