{
  description = "Python Project";

  inputs =
    {
      nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
      flake-utils.url = "github:numtide/flake-utils";
    };

  outputs = { self, nixpkgs, flake-utils }:
    with flake-utils.lib;
    eachSystem [
      system.x86_64-linux
      system.x86_64-darwin
      system.aarch64-darwin
    ]
      (system:
        let
          inherit (nixpkgs) lib;
          pkgs = import nixpkgs { inherit system; };
          pythonLdPath = lib.makeLibraryPath pkgs.pythonManylinuxPackages.manylinux1;

        in
        {
          devShells.default = pkgs.mkShell
            {
              buildInputs = with pkgs; [
                # Python environment.
                python3
                uv
              ];
              shellHook = ''
                # Create the virtual environment if it doesn't exist
                if [ -d .venv ]; then
                  # Activate the virtual environment
                  source .venv/bin/activate
                  # Add .venv/bin to PATH
                  export PATH=$PWD/.venv/bin:$PATH
                  export LD_LIBRARY_PATH=${pythonLdPath}:$LD_LIBRARY_PATH
                else
                  echo "Environment not initialized."
                fi
              '';
            };
        }
      );
}
