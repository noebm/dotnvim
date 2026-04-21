{ config, ... }:
{
  plugins.haskell-tools = {
    enable = true;
    hlsPackage = null;
    # lazyLoad.enable = true;
  };

  plugins.treesitter.grammarPackages = with config.plugins.treesitter.package.builtGrammars; [
    haskell
  ];

  # Note: haskell-tools requires telescope for hoogle search.
  # plugins.telescope.enable = true;
}
