{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs = {
        nixpkgs.follows = "nixpkgs";

        # disable optional dependencies
        nuschtosSearch.follows = "";
      };
    };
  };
  outputs =
    {
      self,
      nixpkgs,
      nixvim,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      packages.${system} = rec {
        default = nvim;

        nvim =
          let
            nixvim' = nixvim.legacyPackages.${system};
            config = import ./config { inherit pkgs; };
          in
          nixvim'.makeNixvim config;
      };
    };
}
