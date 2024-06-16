{ config, ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases =
      let 
        flakeDir = "~/nix";
      in {

      # Common aliases
      ll = "ls -l";
      ff = "fastfetch";

      # Nix aliases
      rb = "sudo nixos-rebuild switch --flake ${flakeDir}";
      upd = "nix flake update ${flakeDir}";
      upg = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}";
      hms = "home-manager switch --flake ${flakeDir}";

      # Git aliases
      gita = "git add";
      gitua = "git restore --staged";
      gits = "git status";
      gitc = "git commit -m ";
      gitca = "git commit --amend";
      gitl = "git log";
      gitb = "git branch";
      gitp = "git push";
      gitf = "git fetch --all --prune";
      gitrh = "git reset --hard";
      gitcp = "git cherry-pick";
      gitsm = "git submodule";
    };

    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
        "deno"
        "rust"
      ];
      theme = "robbyrussell";
    };
  };
}