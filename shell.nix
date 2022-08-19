{ pkgs ? import <nixos-22.05> {}}:
pkgs.mkShell {
    nativeBuildInputs = with pkgs; [ texlive.combined.scheme-full ];
}
