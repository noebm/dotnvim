{
  inputs = {
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs = {
        # disable optional dependencies
        nuschtosSearch.follows = "";
      };
    };
  };
  outputs =
    {
      nixvim,
      ...
    }:
    let
      system = "x86_64-linux";
    in
    {
      packages.${system} = rec {
        default = nvim;

        nvim =
          let
            nixvim' = nixvim.legacyPackages.${system};
            module = {
              inherit system;
              module = import ./config;
            };
          in
          nixvim'.makeNixvimWithModule module;
      };
    };
}
