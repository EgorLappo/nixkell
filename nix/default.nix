{ system, compiler, }:
let sources = import ./sources.nix;
in import sources.nixpkgs {
  inherit system;
  config = { };
  overlays = import ./overlays.nix { inherit sources compiler; };
}
