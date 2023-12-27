{ pkgs, ... }:

{
  home-manager.users.aaron = {
    home.stateVersion = "23.11";  # adjust to your current NixOS version

    programs.direnv = {
      enable = true;
    };

    programs.zsh = {
      enable = true;
      shellAliases = {
        ll = "ls -l";
        update = "sudo nixos-rebuild switch";
      };
      # histSize = 10000;
      # histFile = "${config.xdg.dataHome}/zsh/history";
      # ohMyZsh = {
      #   enable = true;
      #   plugins = [ "git" "thefuck" ];
      #   theme = "robbyrussell";
      # };
    };


    # Other user-specific configurations
    # ...
  };
}