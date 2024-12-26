# save this as shell.nix
{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  packages = with pkgs; [
    (python312.withPackages (python-pkgs: with python-pkgs; [
      beautifulsoup4
      pypandoc
      requests
      selenium
    ]))
    calibre
    geckodriver
    pandoc
  ];
}
