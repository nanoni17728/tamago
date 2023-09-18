{
  outputs = { self, nixpkgs }:
  let
    pkgs = import nixpkgs { system = "x86_64-linux"; };
  in {
    devShells.x86_64-linux.default = pkgs.mkShell {
      
      nativeBuildInputs = [ pkgs.cmake pkgs.clang pkgs.emscripten ];
      buildInputs = [ pkgs.nodejs ];

      shellHook = ''
        if command -v fish > /dev/null
          then fish && exit
        fi
      '';

    };
  };
}
