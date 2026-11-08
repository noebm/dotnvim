{ config, pkgs, ... }:
{
  filetype.extension.wesl = "wesl";

  plugins.treesitter.grammarPackages = config.plugins.treesitter.package.allGrammars ++ [
    pkgs.tree-sitter-grammars.tree-sitter-wesl
  ];

  plugins.lsp.servers.wgsl_analyzer.filetypes = [
    "wgsl"
    "wesl"
  ];
}
