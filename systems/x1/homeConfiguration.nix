{ self, ... }: {
  imports = [
    "${self}/home/standard"
    "${self}/home/linux"
    "${self}/home/ctf"
  ];

  home.stateVersion = "24.11";

  # suites = {
  #   standard.enable = true;
  #   linux.enable = true;
  #   ctf.enable = true;
  # };

  # services = {
  #   hypridle.enable = true;
  # };

  # teevik.desktop.hyprland = {
  #   enableHidpi = true;
  #   scaling = 1.066667;
  # };
}
