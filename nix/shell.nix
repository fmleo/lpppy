with import <nixpkgs> {};

let
  script = pkgs.writeShellScriptBin "start" 
  ''
    python3 -m http.server 8000
  '';
in
  stdenv.mkDerivation {
    name = "nix-server-environment";
    
    buildInputs = [
      script
      python3
    ];
  }
 