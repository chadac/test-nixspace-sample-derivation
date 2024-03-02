{
  description = "A basic derivation.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-manager = {
      url = "github:chadac/flake-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { flake-manager, ... }@inputs:
    flake-manager.lib.mkFlake { inherit inputs; } {
      derivations.default = { lib, ... }: {
        src = lib.cleanSource ./.;
      };
    };
}
