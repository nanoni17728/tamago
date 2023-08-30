{
  outputs = { self, nixpkgs }:
  let
    pkgs = import nixpkgs { system = "x86_64-linux"; };
  in {
    devShells.x86_64-linux.default = pkgs.mkShell {
      buildInputs = [ pkgs.nodejs pkgs.jdk pkgs.clang ];

      shellHook = ''
        if command -v fish > /dev/null
          then fish && exit
        fi
      '';
    };
  };

}
