{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

  outputs =
    { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        packages = with pkgs; [ typst ];
      };

      packages.${system}.default = pkgs.stdenv.mkDerivation {
        name = "resume";
        src = ./.;
        buildPhase = "${pkgs.typst}/bin/typst compile resume.typ";
        installPhase = "cp resume.pdf $out";
      };
    };
}
