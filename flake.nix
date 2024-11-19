{
  description = "For now it only includes typst to build my resume.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    typst-packages = {
      url = "github:typst/packages";
      flake = false;
    };
  };

  outputs = { self , nixpkgs ,... }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
        inherit system;
    };
    environment_packages = with pkgs; [
      typst
    ];
  in {
    devShells."${system}".default = pkgs.mkShell {
      packages = environment_packages;
      shellHook = ''
        echo 'Welcome to the development environment of my resume.'
      '';
    };
    packages."${system}".default = pkgs.stdenvNoCC.mkDerivation {
        name = "build-pdf";
        src = ./.;
        nativeBuildInputs = environment_packages;
        buildPhase = ''
          typst compile resume.typ
          echo $XDG_CACHE_HOME
          mkdir -p $out
          cp resume.pdf $out/
        '';
    };
    packages."${system}".typst-packages = stdenv.mkDerivation {
      name = "typst-packages-cache";
      src = typstPackagesSrc;
      dontBuild = true;
      installPhase = ''
        mkdir -p "$out/typst/packages"
        cp -LR --reflink=auto --no-preserve=mode -t "$out/typst/packages" "$src"/*
      '';
    };
  };
}
