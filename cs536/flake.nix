{
  description = "CS 536 Project 1";

  inputs =
    {
      nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      devShells.${system}.default = pkgs.mkShell
        {
          nativeBuildInputs = with pkgs; [
            jdt-language-server
          ];
          buildInputs = with pkgs; [
            jdk21
          ];
          shellHook = ''
            echo "CS 536 Project 1 Shell Init"
          '';
        };
    };
}
