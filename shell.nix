{
  pkgs ? import <nixpkgs> {},
}:

{
  buildInputs = with pkgs; [
    kicad
  ];
}

