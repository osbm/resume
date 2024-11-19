{
  description = "For now it only includes typst to build my resume.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    typst-packages = {
      url = "github:typst/packages";
      flake = false;
    };
  };

  outputs = { self , nixpkgs , typst-packages, ... }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
        inherit system;
    };
    environment_packages = with pkgs; [
      typst
      font-awesome
      font-awesome_5
      source-sans
      source-sans-pro
    ];
  in {
    devShells."${system}".default = pkgs.mkShell {
      packages = environment_packages;
      shellHook = ''
        echo 'Welcome to the development environment of my resume.'
      '';
    };
    packages."${system}" = {
      default = pkgs.stdenvNoCC.mkDerivation {
          name = "build-pdf";
          src = ./.;
          nativeBuildInputs = environment_packages ++ [ self.packages."${system}".typst-packages-package ];
          # buildInputs = [ pkgs.typst-packages ];
          # use the path of the cache to store the resume
          # XDG_CACHE_HOME =
          buildPhase = ''
            export XDG_CACHE_HOME=${self.packages."${system}".typst-packages-package}
            mkdir -p $out
            typst compile resume.typ $out/resume.pdf
          '';
      };
      typst-packages-package = pkgs.stdenv.mkDerivation {
        name = "typst-packages-cache";
        src = "${typst-packages}/packages";
        dontBuild = true;
        installPhase = ''
          mkdir -p "$out/typst/packages"
          cp -LR --reflink=auto --no-preserve=mode -t "$out/typst/packages" "$src"/*
        '';
      };
    };
  };
}
