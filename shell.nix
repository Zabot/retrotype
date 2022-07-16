{
  pkgs ? import <nixpkgs> {},
  avr ? import <nixpkgs> { crossSystem.config = "avr"; }
}:

avr.mkShell {
  nativeBuildInputs = with pkgs; [
    avrdude
    kicad
  ];

  buildInputs = with avr; [
  ];
}
