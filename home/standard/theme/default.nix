{ lib, pkgs, ... }:
let
  inherit (lib) types mkOption;
in
{
  # TODO actual type
  options.teevik.theme = mkOption {
    type = types.attrs;
  };

  config.teevik.theme = {
    background = ./background.png;

    borderColor = "#cba6f7";

    colors.withHashtag = {
      base00 = "#1e1e2e";
      base01 = "#181825";
      base02 = "#313244";
      base03 = "#45475a";
      base04 = "#585b70";
      base05 = "#cdd6f4";
      base06 = "#f5e0dc";
      base07 = "#b4befe";
      base08 = "#f38ba8";
      base09 = "#fab387";
      base0A = "#f9e2af";
      base0B = "#a6e3a1";
      base0C = "#94e2d5";
      base0D = "#89b4fa";
      base0E = "#cba6f7";
      base0F = "#f2cdcd";
      base10 = "#1e1e2e";
      base11 = "#1e1e2e";
      base12 = "#f38ba8";
      base13 = "#f9e2af";
      base14 = "#a6e3a1";
      base15 = "#94e2d5";
      base16 = "#89b4fa";
      base17 = "#cba6f7";
      blue = "#89b4fa";
      brown = "#f2cdcd";
      cyan = "#94e2d5";
      green = "#a6e3a1";
      magenta = "#cba6f7";
      orange = "#fab387";
      red = "#f38ba8";
      yellow = "#f9e2af";
    };

    gtkTheme = {
      name = "catppuccin-mocha-pink-standard+rimless";
      package = pkgs.catppuccin-gtk.override {
        accents = [ "pink" ];
        size = "standard";
        tweaks = [ "rimless" ];
        variant = "mocha";
      };
    };

    gtkIconTheme = {
      name = "Adwaita";
      package = pkgs.adwaita-icon-theme;
    };

    cursorTheme = {
      name = "catppuccin-mocha-dark-cursors";
      package = pkgs.catppuccin-cursors.mochaDark;
    };

    discordTheme =
      let
        discord-catppuccin = pkgs.fetchFromGitHub {
          owner = "catppuccin";
          repo = "discord";
          rev = "c04f4bd43e571c19551e0e5da2d534408438564c";
          hash = "sha256-3uEVrR2T39Pj0puUwUPuUfXcCPoOq2lNHL8UpppTOiU=";
        };
      in
      "${discord-catppuccin}/themes/mocha.theme.css";

    spicetifyTheme = {
      # theme = "catppuccin";
      # colorScheme = "mocha";
      theme = "lucid";
      colorScheme = "catppuccin-mocha";
    };

    kittyTheme = "Catppuccin-Mocha";

    helixTheme = "catppuccin_mocha";

  };
}
