{ ... }: {
  imports = [
    ./apps
    ./development
    ./shells
    ./theme
  ];

  systemd.user.startServices = "sd-switch";
  home.sessionVariables.EDITOR = "hx";
  programs.man.generateCaches = false;
}
