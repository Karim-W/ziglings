# simple.nix
with (import <nixpkgs> { });
mkShell {
  buildInputs = [
  zig
  ];
  shellHook = ''
    echo "Shell is ready."
  '';
}

