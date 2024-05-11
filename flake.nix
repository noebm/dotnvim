{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
    nixvim = {
      url = "github:nix-community/nixvim/nixos-23.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = {
    self,
    nixpkgs,
    nixvim,
    ...
  } @ inputs: let
    system = "x86_64-linux";
  in {
    packages.${system}.nvim = let
      nixvim' = nixvim.legacyPackages.${system};
      config = import ./nvim.nix;
    in
      nixvim'.makeNixvim config;
  };
}
